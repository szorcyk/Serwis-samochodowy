<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Serwis Samochodowy</title>
    <link rel="stylesheet" href="style.css">
    <link href='https://fonts.googleapis.com/css?family=Bricolage Grotesque' rel='stylesheet'>
</head>
<body>
  <script src="main.js"></script>
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
      <div class="header2">
<!-- TUTAJ TRZEBA TO ZDJECIE NA BANER-->  
  <div style="
    position: relative;
    background-image: url('main.jpeg');
    background-size: cover;
    background-position: center;
    width: 96,5%;
    height: 900px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    color: white;
    font-size: 70px;
    font-weight: bold;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
    text-align: left;
    padding-left: 50px;
    margin-bottom:0px;
    
">
    <!-- Nakładka przezroczysta -->
    <div style="
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 900px;
        background-color:rgba(53, 30, 16, 0.5); /* Brązowy kolor z przezroczystością */
        z-index: 1;
       
    "></div>

    <!-- Tekst na obrazku -->
    <div style="position: relative; z-index: 2;">
        <h1 style="margin: 0;">TURBOFIX<br>AUTO SERWIS</h1>
        <h3 style="font-size: 30px; margin: 5px;">TWOJE AUTO, NASZA PASJA!</h3>  
    </div>

</div>

</div>   
    </header>
    <section class="main">
        <p>W TurboFix Auto Serwis dbamy o Twoje auto jak o własne! Oferujemy kompleksowe naprawy
        mechaniczne, diagnostykę komputerową i serwis klimatyzacji. Niezawodność, fachowość i uczciwość to
        nasze priorytety. Od przeglądów po skomplikowane naprawy – z nami Twój samochód jest w
        najlepszych rękach!</p>
    </section>
    
      <!-- TUTAJ BEDZUIE TEN SLIDER O DOSTEPNYMI PRZEZ NAS OFERTAMI-->
  <div class="slider-container">
    <div class="slider">
        <div class="slide" style="background-image: url('olej.jpg');">
            <h2>WYMIANA OLEJU I FILTRÓW</h2>
            <p>olej silnikowy, filtr oleju, paliwa, powietrza i kabinowy</p>
            <button>SPRAWDŹ</button>
        </div>
        <div class="slide" style="background-image: url('klimatyzacja.jpg');">
            <h2>KLIMATYZACJA</h2>
            <p>napełnianie, odgrzybianie, diagnostyka i naprawa układu klimatyzacji</p>
            <button>SPRAWDŹ</button>
        </div>
        <div class="slide" style="background-image: url('opony.jpeg');">
            <h2>WYMIANA OPON</h2>
            <p>montaż, demontaż, wyważanie kół, geometria zawieszenia</p>
            <button>SPRAWDŹ</button>
        </div>
        <div class="slide" style="background-image: url('hamulce.jpg');">
            <h2>NAPRAWA UKŁADU HAMULCOWEGO</h2>
            <p>wymiana klocków, tarcz, przewodów hamulcowych i płynu</p>
            <button id="slider">SPRAWDŹ</button>
        </div>
        <div class="slide" style="background-image: url('zawieszenia.png');">
            <h2>NAPRAWA ZAWIESZENIA I UKŁADU KIEROWNICZEGO</h2>
            <p>amortyzatory, wahacze, drążki kierownicze</p>
            <button id="slider">SPRAWDŹ</button>
        </div>
        <div class="slide" style="background-image: url('wydechy.jpg');">
            <h2>SERWIS UKŁADU WYDECHOWEGO</h2>
            <p>naprawa lub wymiana tłumików, katalizatorów, sond lambda</p>
            <button id="slider">SPRAWDŹ</button>
        </div>
    </div>
    <button class="prev">&#60;</button>
    <button class="next">&#62;</button>
</div>

      

    </section>
    <section class="kontakt">
    <div style="
    position: relative;
    background-image: url('main2.jpg');
    background-size: cover;
    background-position: center;
    width: 96,5%;
    height:400px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    color: white;
    font-size:30px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
    text-align: center;
    padding-left: 50px;
    margin-bottom:0px;
    
">
<!-- Nakładka przezroczysta -->
<div style="
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height:400px;
        background-color:rgba(53, 30, 16, 0.5); /* Brązowy kolor z przezroczystością */
        z-index: 1;
       
    "></div>

    <!-- Tekst na obrazku -->
    <div style="position: relative; z-index: 2;">
        <h3 style="margin: 0;">MOZESZ ZAPISAC SIE POPRZEZ NASZA STRONE,<br>NUMER TELEFONU ORAZ PZRYJECHAC!</h3><br>
        <input type="button"class="kontakt" value="SKONTAKTUJ SIE Z NAMI!">
    </div>
     
    </section>
    <footer>
      <p>Autorzy strony: Hrysevich Viktoryia(JS, HTML&CSS), Kachuk Sofya(UX, UI, PHP, baza danych), Rakowski Kacper(UX, PHP, baza danych), Szorc Antoni(HTML&CSS)</p>
    </footer>
</body>
</html>
