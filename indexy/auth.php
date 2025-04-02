<?php
session_start();
require 'db.php'; // Plik z połączeniem do bazy danych

function register($conn, $role, $name, $surname, $login, $password) {
    $table = ($role === 'mechanik') ? 'mechanicy' : 'klienci';
    $hashedPassword = md5($password);
    
    $stmt = $conn->prepare("INSERT INTO $table (imie, nazwisko, login, password) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $name, $surname, $login, $hashedPassword);
    return $stmt->execute();
}

function login($conn, $role, $login, $password) {
    if ($role === 'mechanik') {
        $table = 'mechanicy';
        $id_column = 'id_mechanika';
    } else {
        $table = 'klienci';
        $id_column = 'id_klienta';
    }
    
    $stmt = $conn->prepare("SELECT $id_column, password FROM $table WHERE login = ?");
    $stmt->bind_param("s", $login);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($row = $result->fetch_assoc()) {
        if ($row['password'] === md5($password)) {
            $_SESSION['user_id'] = $row[$id_column];
            $_SESSION['role'] = $role;
            return true;
        }
    }
    return false;
}


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action'];
    $role = $_POST['role'];
    
    if ($action === 'register') {
        if (register($conn, $role, $_POST['imie'], $_POST['nazwisko'], $_POST['login'], $_POST['password'])) {
            echo "Rejestracja zakończona sukcesem!";
            echo "<script> location.href='logowanie.php'; </script>";
            
        } else {
            echo "Błąd podczas rejestracji.";
        }
    } elseif ($action === 'login') {
        if (login($conn, $role, $_POST['login'], $_POST['password'])) {
            echo "Logowanie powiodło się!";
            echo "<script> location.href='po_zalogowaniu.php'; </script>";
        } else {
            echo "Nieprawidłowy login lub hasło.";
        }
    }
}
?>
