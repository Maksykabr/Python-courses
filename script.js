// Функція для відображення деталей мистецького твору
function showArtDetails(artPiece) {
  alert('Показ детальної інформації для: ' + artPiece);
}

// Обробник для динамічного завантаження зображення у модальне вікно
document.querySelectorAll('.card-img-top').forEach(img => {
  img.addEventListener('click', function() {
    const src = this.getAttribute('src');
    document.getElementById('modalImage').setAttribute('src', src);
  });
});

// Обробник форми зворотного зв'язку
document.getElementById('contactForm').addEventListener('submit', function(event) {
  event.preventDefault();
  alert('Дякуємо за ваше повідомлення!');
});
