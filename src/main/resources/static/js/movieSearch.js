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

pickBtn.addEventListener('click', () => {
    starImg.classList.toggle('yellow-star');
    if(starImg.classList.contains('yellow-star')) alert("나중에 볼 영화에 저장되었습니다. 마이페이지에서 확인해 보세요.");
});

// 기록하기 버튼(팝업창)
const recordBtn = document.querySelector('.record-btn');
const recordArea = document.querySelector('.record-area');
// 영화 기록 팝업창 열기
recordBtn.addEventListener('click', () => {
    recordArea.classList.add('record-toggle');
});

// 영화 시청 날짜 및 시간 선택 bootstrap datetimepicker jquery
$(document).ready(function()
{
    $('#movieWatchDate').bootstrapMaterialDatePicker({
        lang : 'ko',
        weekStart : 0,
        time: true,
        format:'YYYY-MM-DD HH:mm',
    });

});

// 관람장소, 누구랑, 평점, 앨범선택 팝업창
const watchDetail = document.querySelectorAll('.watch-detail');
const detailArea = document.querySelectorAll('.record-detail-area');
let siblings = t => [...t.parentElement.children].filter(e => e.classList.contains('detail-content') && e !== t);
let inputAuto = t => [...t.parentElement.children].filter(e => e.classList.contains('self') && e !== t);
const starBox = document.querySelectorAll('.star-box');
let starNum = document.querySelector('.star-num');
// 각 내용에 맞는 팝업창 열기
watchDetail.forEach(item => item.addEventListener('click', e => {
    const { id } = e.target;
    detailArea.forEach(detail => {

        if(detail.classList.contains(id)){
            detail.classList.add('detail-toggle');
            let cnt = 0; //직접입력 토글 카운트
            // 내용 선택
            detail.querySelectorAll('.detail-content').forEach(i => i.addEventListener('click', c => {
                // 선택된 항목 색상 유지
                i.classList.add('choice-content');
                siblings(c.currentTarget).forEach(not => {if(not.classList.contains('choice-content')) not.classList.remove('choice-content')});
                // 직접입력
                if(i.classList.contains('self')){
                    document.getElementById(id).value = "";
                    cnt++;
                    if(cnt%2 === 1)
                        i.children[0].classList.add('input-toggle'); // 열림
                    else if(c.target.className !== "self-input-box input-toggle" && c.target.className !== "self-input" && c.target.className !== "self-done")
                        i.children[0].classList.remove('input-toggle'); // 닫힘
                    // 직접입력 완료
                    i.children[0].querySelector('.self-done').addEventListener('click', d => {
                        d.stopImmediatePropagation();
                        document.getElementById(id).value = i.children[0].querySelector('input').value;
                        detail.classList.remove('detail-toggle');
                    });
                }else{
                    document.getElementById(id).value = c.currentTarget.innerText;
                    // 다른거 선택하면 직접입력 닫히게
                    inputAuto(c.currentTarget).forEach(input => {
                        input.children[0].classList.remove('input-toggle');
                        input.children[0].querySelector('input').value = "";
                    });
                    detail.classList.remove('detail-toggle');
                }
            }));

            //평가 별점 채우기
            detail.querySelectorAll('.star-wrap').forEach(item => item.addEventListener('click', s => {
                let mouseX = s.offsetX;

                if(s.currentTarget.id === "five" && mouseX >= 13 && mouseX <= 26){  // 5.0
                    for(let i = 0; i < 5; i++){
                        starBox[i].classList.add('full');
                    }
                    starNum.innerText = "5.0";
                }else if(s.currentTarget.id === "five" && mouseX < 13){  // 4.5
                    for(let i = 0; i < 5; i++){
                        if(i >= 4)  starBox[i].classList.remove('full');
                        else starBox[i].classList.add('full');
                    }
                    starBox[4].classList.add('half');
                    starNum.innerText = "4.5";
                }else if(s.currentTarget.id === "four" && mouseX >= 13 && mouseX <= 26){  // 4.0
                    for(let i = 0; i < 5; i++){
                        if(i >= 4){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                        }else starBox[i].classList.add('full');
                    }
                    starNum.innerText = "4.0";
                }else if(s.currentTarget.id === "four" && mouseX < 13){  // 3.5
                    for(let i = 0; i < 5; i++){
                        if(i >= 3){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                        }else starBox[i].classList.add('full');
                    }
                    starBox[3].classList.add('half');
                    starNum.innerText = "3.5";
                }else if(s.currentTarget.id === "three" && mouseX >= 13 && mouseX <= 26){  // 3.0
                    for(let i = 0; i < 5; i++){
                        if(i >= 3){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                        }else starBox[i].classList.add('full');
                    }
                    starNum.innerText = "3.0";
                }else if(s.currentTarget.id === "three" && mouseX < 13){  // 2.5
                    for(let i = 0; i < 5; i++){
                        if(i >= 2){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                        }else starBox[i].classList.add('full');
                    }
                    starBox[2].classList.add('half');
                    starNum.innerText = "2.5";
                }else if(s.currentTarget.id === "two" && mouseX >= 13 && mouseX <= 26){  // 2.0
                    for(let i = 0; i < 5; i++){
                        if(i >= 2){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                        }else starBox[i].classList.add('full');
                    }
                    starNum.innerText = "2.0";
                }else if(s.currentTarget.id === "two" && mouseX < 13){  // 1.5
                    for(let i = 0; i < 5; i++){
                        if(i >= 1){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                        }else starBox[i].classList.add('full');
                    }
                    starBox[1].classList.add('half');
                    starNum.innerText = "1.5";
                }else if(s.currentTarget.id === "one" && mouseX >= 13 && mouseX <= 26){  // 1.0
                    for(let i = 0; i < 5; i++){
                        if(i >= 1){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                        }else starBox[i].classList.add('full');
                    }
                    starNum.innerText = "1.0";
                }else if(s.currentTarget.id === "one" && mouseX < 13){  // 1.0
                    for(let i = 0; i < 5; i++){
                            starBox[i].classList.remove('full');
                            starBox[i].classList.remove('half');
                    }
                    starBox[0].classList.add('half');
                    starNum.innerText = "0.5";
                }
            }));

            // 별점 확인 버튼
            const starDone = (done) => {
                document.querySelector('.star-done').addEventListener('click', () => {
                    if(detail.classList.contains('watchStar')){
                        if(done === ""){
                            document.getElementById(id).value = "";
                        }else if(done === undefined){
                            document.getElementById(id).value = starNum.innerText;
                        }
                        detail.classList.remove('detail-toggle');
                    }
                });
            };
            starDone();

            // 별점 초기화 버튼
            let reset = "";
            document.querySelector('.star-reset').addEventListener('click', () => {
                starNum.innerText = "0.0";
                for(let i = 0; i < 5; i++){
                    starBox[i].classList.remove('full');
                    starBox[i].classList.remove('half');
                }
                starDone(reset);
            });

            // 외부 클릭하면 디테일 모달창 닫힘
            detail.addEventListener('click', close => {
                if(!detail.children[0].contains(close.target) && close.target.className !== "watch-detail"){
                    // 별점 외부영역 클릭
                    if(detail.classList.contains('watchStar')){
                        if(starNum.innerText === "0.0") document.getElementById(id).value = "";
                        else document.getElementById(id).value = starNum.innerText;
                    }
                    detail.classList.remove('detail-toggle');
                }
            });
        }
    });
}));

const closeBtn = document.querySelector('.record-btn-cancel');
const inputReset = document.querySelectorAll('.watch-info input');
// 영화 기록 팝업창 취소(닫기)
closeBtn.addEventListener('click', () => {
    if(recordBtn.textContent === "기록 남기기"){
        if(confirm('저장하지 않고 취소하시겠습니까?')){
            inputReset.forEach(item => item.value="");
            starNum.innerText = "0.0";
            for(let i = 0; i < 5; i++){
                starBox[i].classList.remove('full');
                starBox[i].classList.remove('half');
            }
            recordArea.classList.remove('record-toggle');
        }else return false;
    }
    recordArea.classList.remove('record-toggle');
});
// 영화 기록 팝업창 저장
document.querySelector('.record-btn-submit').addEventListener('click', () => {
    recordArea.classList.remove('record-toggle');
    alert(`기본 앨범에 저장되었습니다. 마이페이지에서 확인해 보세요.`);
    recordBtn.innerText = "기록 완료";
    recordBtn.style.color = "#7fe5ff";
    closeBtn.innerText = "닫기";
});







