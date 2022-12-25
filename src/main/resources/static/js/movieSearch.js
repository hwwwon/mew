// 탑버튼
const topBtn = document.querySelector('.top-btn');

window.addEventListener('scroll', function(){
    if(this.scrollY > 200){
        topBtn.classList.add('topOn');
    }else{
        topBtn.classList.remove('topOn');
    }
})

topBtn.addEventListener('click', (e) => {
    e.preventDefault();
    window.scrollTo({top : 0, behavior : "smooth"});
});

// 찜 버튼
const pickBtn = document.querySelector('.pick-btn');
const starImg = document.querySelector('.pick-btn img');
pickBtn.addEventListener('click', () => {
    starImg.classList.toggle('yellow-star');
});