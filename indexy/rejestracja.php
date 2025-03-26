<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Bricolage Grotesque' rel='stylesheet'>
    <style>
        *{
            background-color: #2b1d1d;
            color: white;
            text-align: center;
            font-family: 'Bricolage Grotesque';
            
            #wracanie{
                text-decoration: none;
                float: left;
                font-size: 20px;
            }
            #login{
                background-color:#f0e9e2;
                color: black;
                border-color: #f0e9e2;
                text-align: left;
                font-size:45px;
                text-decoration: none;
                border-radius: 20px;
                padding: 5px;
            }
            #haslo{
                background-color: #f0e9e2;
                color: black;
                border-color: #f0e9e2;
                text-align: left;
                font-size:45px;
                text-decoration: none;
                border-radius: 20px;
                padding: 5px;


            }
            #numer{
                background-color:#f0e9e2;
                color: black;
                border-color: #f0e9e2;
                text-align: left;
                font-size:45px;
                text-decoration: none;
                border-radius: 20px;
                padding: 5px;

            }
            #email{
                background-color:#f0e9e2;
                color: black;
                border-color: #f0e9e2;
                text-align: left;
                font-size:45px;
                text-decoration: none;
                border-radius: 20px;
                padding: 5px;
               
                

            }
            #submit{
                background-color: #940000;
                font-size:25px;
                text-decoration: none;
                border-radius: 20px;
                padding: 15px;
                padding-left: 210px;
                padding-right: 210px;


                
               
                
            }
            h1{
                font-size: 75px;
                text-align: center;
            }
        }
    </style>
    <title>Rejestrowanie się</title>
</head>
<body>
<p><a id="wracanie" href="">WRÓĆ</a></p>
<br>
    <div class="logowanie">
        <h1>ZAREJESTRUJ SIĘ</h1>
        <input type="text" id="login" name="login"placeholder="LOGIN*"><br><br>
        <input type="text" id="haslo"name="haslo" placeholder="HASŁO*"><br><br>
        <input type="text" id="numer" name="numer" placeholder="NR.TEL*"><br><br>
        <input type="text" id="email" name="email" placeholder="EMAIL"><br><br>
        <input type="submit" id="submit" value="WYŚLIJ">
        <p>LUB <a style="color:#780606"href="">ZALOGUJ SIĘ</a></p>
    </div>
    
</body>
</html>
