const carousels = document.querySelectorAll('.carousel');

carousels.forEach((carousel) => {
    const items = carousel.querySelectorAll('.carousel-item');
    const nextButton = carousel.parentElement.querySelector('.next');
    const prevButton = carousel.parentElement.querySelector('.prev');

    let index = 0;
    const totalItems = items.length;
    const itemsPerView = 5;

    function updateCarousel() {
        if (index < 0) {
            index = totalItems - itemsPerView;
        } else if (index >= totalItems) {
            index = 0;
        }
        carousel.style.transform = `translateX(-${(index * 100) / itemsPerView}%)`;
    }

    nextButton.addEventListener('click', () => {
        index += itemsPerView;
        updateCarousel();
    });

    prevButton.addEventListener('click', () => {
        index -= itemsPerView;
        updateCarousel();
    });

    // Loop continuo
    carousel.addEventListener('transitionend', () => {
        if (index >= totalItems) {
            carousel.style.transition = 'none';
            index = 0;
            carousel.style.transform = 'translateX(0)';
            setTimeout(() => carousel.style.transition = 'transform 0.5s ease-in-out', 50);
        }
    });
});
