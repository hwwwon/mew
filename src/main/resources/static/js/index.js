// index 페이지 포스터 슬라이드
let back = document.getElementById("back");
let next = document.getElementById("next");
let slideImg = document.getElementsByClassName("slide-img");
let num = 0;
let position = 0;
let imgWidth = 18.9;
next.addEventListener("click", () => {
    if(num < 5){
        back.style.display = "block";
        position -= imgWidth;
        for (i=0; i < slideImg.length; i++) {
            slideImg[i].style.transform = `translateX(${position}rem)`;
        }
        num ++;
    }

    if(num == 5){
        next.style.display = "none";
    }
});

back.addEventListener("click", () => {
    if(num <= 5){
        next.style.display = "block";
        position += imgWidth;
        for (i=0; i < slideImg.length; i++) {
            slideImg[i].style.transform = `translateX(${position}rem)`;
        }
        num --;
    }

    if(num == 0){
        back.style.display = "none";
    }
});