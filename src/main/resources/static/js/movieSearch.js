// 탑버튼
let topBtn = document.querySelector('.top-btn');

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
const recordBtn = document.querySelector('.record-btn');
pickBtn.addEventListener('click', () => {
    starImg.classList.toggle('yellow-star');
    if(starImg.classList.contains('yellow-star')) alert("나중에 볼 영화에 저장되었습니다. 마이페이지에서 확인해 보세요.");
});

// 기록하기 버튼(팝업창)
const recordArea = document.querySelector('.record-area');
// 영화 기록 팝업창 열기
recordBtn.addEventListener('click', () => {
    recordArea.classList.add('record-toggle');
});
// 영화 기록 팝업창 취소(닫기)
document.querySelector('.record-btn-cancel').addEventListener('click', () => {
    if(confirm('저장하지 않고 취소 하시겠습니까?')){
        recordArea.classList.remove('record-toggle');
    }else return false;
});
// 영화 기록 팝업창 저장
document.querySelector('.record-btn-submit').addEventListener('click', () => {
    recordArea.classList.remove('record-toggle');
    alert(`기본 앨범에 저장되었습니다. 마이페이지에서 확인해 보세요.`);
    recordBtn.innerText = "기록 완료";
    recordBtn.style.color = "#7fe5ff";
});

// bootstrap datetimepicker jquery
$(document).ready(function()
{
    $('#movieWatchDate').bootstrapMaterialDatePicker({
        lang : 'ko',
        weekStart : 0,
        time: true,
        format:'YYYY-MM-DD HH:mm',
    });

});

