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
    <a href="#default">TURBOFIX</a>
        <div class="header-right">
          <a class="active" href="#home">ZALOGUJ</a>
          <a href="#contact">KONTAKT</a>
          <a href="#price">CENNIK</a>
        </div>
      </div>
      
    <section class="bloczek">
        <h1>NASZE USŁUGI</h1>
    </section>
    <section class="tabela">
        <?php
        $db_lnk = mysqli_connect("localhost", "root", "", "turbofix_baza");
        
        $query = "SELECT * from uslugi";
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
