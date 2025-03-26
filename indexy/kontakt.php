<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kontakt</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body{
            background-color: #2b1d1d;
            color: white;
        }
        .polewo{
            width: 50%;
            float: left;
        }
        p {
            color: ;
        }
        form {
            margin: 0 5%;
            width: 50%;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .form-row {
            display: flex;
            gap: 10px;
        }

        .form-row input {
            flex: 1;
        }

        form input[type="text"]{
            border-style: solid;
            border-radius: 50px;
            border-color: white;
            padding: 10px;
            font-size: 16px;
        }

        form input[type="submit"] {
            background-color: red;
            color: white;
            border: none;
            border-radius: 50px;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #cc0000;
        }
        .poprawo{
            width: 50%;
            float: left;
        }
        #opis{
            height: 100px;
            border-radius: 20px;
            padding: 10px;
            box-sizing: border-box;
            text-align: left;
            vertical-align: top;
            resize: none;
            border-style: none;
        }
        u {
            color: #cc0000;
        }
    </style>
</head>
<body>
        <header>
        <div class="header">
        <a href="#default">TURBOFIX</a>
            <div class="header-right">
            <a class="active" href="#home">ZALOGUJ</a>
            <a href="#services">USŁUGI</a>
            <a href="#contact">KONTAKT</a>
            <a href="#price">CENNIK</a>
            </div>
        </div>
        </header>
    <section class="polewo">

        <h1>JESTEŚMY TU</h1>
        <form action="" method="post">
            <h2>ZAPISZ</h2>
            <div class="form-row">
            <input type="text" name="imie" placeholder="Imię">
            <input type="text" maxlength="9" name="numer" placeholder="Numer telefonu">
            </div>
            <textarea id="opis" name="opis" placeholder="Opis problemu"></textarea>
            <p>Żeby zapisywać sie szybciej, wybierać mechanika i termin <u>zaloguj</u> lub <u>zarejestruj się</u></p>
            <input type="submit" value="Wyślij">
        </form>
    </section>
        <!-- Nie mam pojęcia jak wstawić tą strzałkę -->
        <section class="poprawo">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d19144.03251059453!2d23.092124314881595!3d53.14602161269243!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471ffc8452e74f8f%3A0x8a24c9dd9ddca50d!2sWysoki%20Stoczek%2C%20Bia%C5%82ystok!5e0!3m2!1spl!2spl!4v1742990623110!5m2!1spl!2spl" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            
             <h2>WOLNE TERMINY</h2>
             <!-- Nie wiem czy to wystarczy, ale jak coś będzie nie tak to spróbuję poprawić -->
                <?php?>
        </section>
</body>
</html>