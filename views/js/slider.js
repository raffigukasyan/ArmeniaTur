const attractionContainer =  document.querySelector('.attraction__slider');
const  attractionTrack = document.querySelector('.attraction__track');
const  attractionItems = document.querySelectorAll('.attraction__block');
const  attractionPrev  = document.querySelector('.btn-prev');
const  attractionNext  = document.querySelector('.btn-next');

const reviewsContainer = document.querySelector('.reviews__slider');
const reviewsTrack = document.querySelector('.reviews__track');
const reviewsItems = document.querySelectorAll('.reviews__block');
const reviewsPrev = document.querySelector('.reviews__btn__prev');
const reviewsNext = document.querySelector('.reviews__btn__next');



function slider(container, track, items, prev, next, slideToScoll, slideToShow) {
    const itemsCount = items.length;
    let position = 0;
    const itemWidth = container.clientWidth / slideToShow; // длина элемента
    const movePosition = slideToScoll * itemWidth;

    items.forEach((item) => {
        item.style.minWidth = `${itemWidth-100}px`;
    });

    next.addEventListener('click', () => {
        const itemsLeft = itemsCount - (Math.abs(position) + slideToShow * itemWidth) / itemWidth;

        if(itemsLeft >= slideToScoll) {
            position -= movePosition;
        }
        else {
            position -=  itemsLeft * itemWidth;
        }
        setPosition();
        checkBtns();
    });
    
    
    prev.addEventListener('click', () => {
        const itemsLeft = Math.abs(position) / itemWidth;
        if(itemsLeft >= slideToScoll) {
            position += movePosition;
        }
        else {
            position += itemsLeft * itemWidth;
        }
        console.log(position);
        setPosition();
        checkBtns();
    });

    const setPosition = () => {
        track.style.transform = `translateX(${position}px)`;
    }

    const checkBtns = () => {
        prev.disabaled = position === 0;
		next.disabaled = position <= -(itemsCount - slideToShow) * itemWidth;
    }

}


slider(attractionContainer, attractionTrack, attractionItems, attractionPrev, attractionNext, 1, 3);
slider(reviewsContainer, reviewsTrack, reviewsItems, reviewsPrev, reviewsNext, 2, 3);