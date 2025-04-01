?php
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
        } else {
            echo "Błąd podczas rejestracji.";
        }
    } elseif ($action === 'login') {
        if (login($conn, $role, $_POST['login'], $_POST['password'])) {
            echo "Logowanie powiodło się!";
        } else {
            echo "Nieprawidłowy login lub hasło.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie i Rejestracja</title>
</head>
<body>
    <h2>Logowanie</h2>
    <form method="post">
        <label for="role">Wybierz rolę:</label>
        <select name="role" id="role">
            <option value="klient">Klient</option>
            <option value="mechanik">Mechanik</option>
        </select>
        <br>
        <label for="login">Login:</label>
        <input type="text" name="login" required>
        <br>
        <label for="password">Hasło:</label>
        <input type="password" name="password" required>
        <br>
        <input type="hidden" name="action" value="login">
        <button type="submit">Zaloguj się</button>
    </form>

    <h2>Rejestracja</h2>
    <form method="post">
        <label for="role">Wybierz rolę:</label>
        <select name="role" id="role">
            <option value="klient">Klient</option>
            <option value="mechanik">Mechanik</option>
        </select>
        <br>
        <label for="imie">Imię:</label>
        <input type="text" name="imie" required>
        <br>
        <label for="nazwisko">Nazwisko:</label>
        <input type="text" name="nazwisko" required>
        <br>
        <label for="login">Login:</label>
        <input type="text" name="login" required>
        <br>
        <label for="password">Hasło:</label>
        <input type="password" name="password" required>
        <br>
        <input type="hidden" name="action" value="register">
        <button type="submit">Zarejestruj się</button>
    </form>
</body>
</html>
