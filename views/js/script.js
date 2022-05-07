const headerBurger = document.querySelector('.header-burger');
const headerNav = document.querySelector('.header__nav');


headerBurger.addEventListener('click', () => {
    headerBurger.classList.toggle('active');
    headerNav.classList.toggle('active');
    document.body.classList.toggle('lock');
});

const item = document.querySelectorAll('.answers__item');

item.forEach((elem) => {
    elem.addEventListener('click', function(e) {
        console.log(e.target.parentElement);
        const text = e.target.parentElement.querySelector('.answers__item__text');
        const treg = e.target.parentElement.querySelector('.answers__item__right');
        if(!text.classList.contains('active')) {
            text.classList.add('active');
            treg.style.transform = `rotate(${90}deg)`;
        }
        else {
            text.classList.remove('active');
            treg.style.transform = `rotate(${0}deg)`;
        }
    });
});