const slider = document.querySelector('#slider')
document.addEventListener('load',()=>{
    setTimeout(function moveSlide(){
        const max = slider.scrollWidth - slider.clientWidth;
        const left = slider.clientWidth;

        if (max === slider.scrollLeft) {
            slider.scrollTo({ left: 0, behavior: 'smooth' })
        } else {
            slider.scrollBy({ left, behavior: 'smooth' })
        }

        setTimeout(moveSlide, 2000)
    },2000)
})