<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zapisywanie się</title>
    <link href='https://fonts.googleapis.com/css?family=Bricolage+Grotesque' rel='stylesheet'>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-color: #2b1d1d;
            font-family: 'Bricolage Grotesque', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color:#2b1d1d ;
            font-size: 35px;
        }
        .container {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }
        .form-group {
            background-color: #e6e1df;
            padding: 15px;
            border-radius: 15px;
            width: 80%;  /* Responsive width */
            max-width: 500px;  /* Maximum width */
            margin: 50px auto;
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Equal height distribution */
        }
        label {
            font-size: 18px;
            margin-bottom: 5px;
        }
        input, textarea {
            width: 90%;
            padding: 10px;
            font-size: 18px;
            border-radius: 10px;
            border: none;
            margin-top: 10px;
        }
        textarea {
            height: 100px;
            resize: none;
        }
        .przycisk {
            background-color: #940000;
            color: white;
            font-size: 20px;
            padding: 10px 20px;
            border-radius: 15px;
            border: none;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .przycisk:hover {
            background-color: #7a0000;
        }
        footer {
            text-align: center;
            background-color: #2b1d1d;
            padding: 10px;
            font-size: 14px;
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
            </div>
        </div> 
    </header>

    <div class="container">
        <form action="/submit-form" method="POST">
            <div class="form-group">
                <h1>WYBIERZ MECHANIKA</h1>
                <input type="text" id="mechanic" name="mechanic" placeholder="Wybierz mechanika" list="mechanicy">
                <datalist id="mechanicy">
                    <option value="Jakub Kowalczuk">
                    <option value="Marcin Monarek">
                    <option value="Paweł Nowak">
                    <option value="Tomasz Wiśniewski">
                    <option value="Anna Kaczmarek">
                </datalist>
                <textarea name="problem" id="problem" placeholder="Opisz problem"></textarea>
                <button type="submit" class="przycisk">ZAPISZ SIĘ</button>
            </div>
        </form>
    </div>

    <footer>
        <p>Autorzy: Hrysevich Viktoryia (JS, HTML & CSS), Kachuk Sofya (UX, UI, PHP, baza danych), Rakowski Kacper (UX, PHP, baza danych), Szorc Antoni (HTML & CSS)</p>
    </footer>

</body>
</html>



