//to jeszcze nie dziala jak cos
let currentSlide = 0;

const slides = document.querySelectorAll('.slide');
const totalSlides = slides.length;

document.querySelector('.next').addEventListener('click', () => {
    currentSlide = (currentSlide + 1) % totalSlides;
    updateSlider();
});

document.querySelector('.prev').addEventListener('click', () => {
    currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
    updateSlider();
});

function updateSlider() {
    const slider = document.querySelector('.slider');
    const slideWidth = slides[0].clientWidth + 20; // Szerokość + margines
    slider.style.transform = `translateX(-${currentSlide * slideWidth}px)`;
}
