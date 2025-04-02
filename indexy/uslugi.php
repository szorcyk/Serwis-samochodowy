<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usługi</title>
    <style>
        *{
            background-color: #2b1d1d;
            border-width: 1px;
        }
    </style>
    <link rel="stylesheet" href="style.css">
    <link href='https://fonts.googleapis.com/css?family=Bricolage Grotesque' rel='stylesheet'>
</head>
<body>
    <header>
    <div class="header">
    <a href="główna.php">TURBOFIX</a>
        <div class="header-right">
          <a class="active" href="logowanie.php">ZALOGUJ</a>
          <a href="kontakt.php">KONTAKT</a>
        </div>
      </div>
      
    <section class="bloczek">
        <h1>NASZE USŁUGI</h1>
    </section>
    <section class="wyszukiwarka">
        <form method="POST" >
            <input type="text" class="szukanie" name = "wyszukanie">
            <input type="submit" value="Szukaj" class="szukanie">
        </form>
        <br>

    </section>
    <section class="tabela">
        <?php
        $db_lnk = mysqli_connect("localhost", "root", "", "turbofix");
        @$wyszukanie = $_POST['wyszukanie'];
        $query = "SELECT * from uslugi WHERE nazwa_uslugi LIKE '%$wyszukanie%' or rodzaj_uslugi LIKE '%$wyszukanie%' or opis_uslugi LIKE '%$wyszukanie%'";
        $result = mysqli_query($db_lnk, $query);

        echo"<table>";
        echo   "<tr>";
    echo"<th>Nazwa usługi</th>";
    echo"<th>Rodzaj usługi</th>";
    echo"<th>Opis usługi</th>";
    echo"<th>Cena usługi</th>";
    echo  "</tr>";
        
            $count = mysqli_num_rows($result);
            for($i = 0;$i<$count;$i++){
                $row = mysqli_fetch_row($result);
                echo   "<tr>";
                echo "<td>$row[1]</td>";
                echo "<td>$row[2]</td>";
                echo "<td>$row[3]</td>";
                echo "<td>$row[4]</td>";
                echo  "</tr>";
            }


         
        ?>
    </section>
</body>
</html>
