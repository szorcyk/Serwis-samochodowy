document.addEventListener("DOMContentLoaded", function () {
    const slider = document.querySelector(".slider");
    const slides = document.querySelectorAll(".slide");
    const prevButton = document.querySelector(".prev");
    const nextButton = document.querySelector(".next");
    
    let currentIndex = 0;
    const slidesToShow = 3; // Ilość widocznych slajdów
    const slideWidth = slides[0].offsetWidth + 20; // Szerokość slajdu + margines

    function updateSliderPosition() {
        slider.style.transform = `translateX(-${currentIndex * slideWidth}px)`;
    }

    nextButton.addEventListener("click", function () {
        if (currentIndex < slides.length - slidesToShow) {
            currentIndex++;
            updateSliderPosition();
        }
    });

    prevButton.addEventListener("click", function () {
        if (currentIndex > 0) {
            currentIndex--;
            updateSliderPosition();
        }
    });

    // Aktualizacja rozmiaru slajdu po załadowaniu strony
    window.addEventListener("resize", function () {
        slideWidth = slides[0].offsetWidth + 20;
        updateSliderPosition();
    });
});
