<?php require 'auth.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Bricolage Grotesque' rel='stylesheet'>
    <link rel="stylesheet" href="style.css">
    <title>Rejestrowanie się</title>
</head>
<body>
<p><a id="wracanie" href="główna.php">WRÓĆ</a></p>
<br>
    <h1>ZAREJESTRUJ SIĘ</h1>
    <form method="post">
        <input type="text" name="login" placeholder="Login*" required><br>
        <input type="password" name="password"  placeholder="Hasło*" required><br>
        <input type="text" name="imie"  placeholder="Imię*" required><br>
        <input type="text" name="nazwisko"  placeholder="Nazwisko*" required><br>
        <input type="hidden" name="action" value="register">
        <input type="hidden" name="role" value="klient">
        <button type="submit">WYŚLIJ</button>
        <p>LUB <a style="color:#780606" href="logowanie.php">ZALOGUJ SIĘ</a></p>
    </form>
</body>
</html>
