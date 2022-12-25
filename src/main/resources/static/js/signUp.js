'use strict';

// 비밀번호 및 비밀번호 확인 눈모양 토글
let signUpPw = false;
let signUpCheckPw = false;
let pwEyes = document.getElementById('pwEyes');
let userPw = document.getElementById('userPw');
let pwCheckEyes = document.getElementById('pwCheckEyes');
let userPwCheck = document.getElementById('userPwCheck');

//  비밀번호 눈모양 토글
pwEyes.addEventListener("click",() => {
    if(!signUpPw){
        pwEyes.classList.replace('fa-eye-slash', 'fa-eye');
        userPw.type="text";
        signUpPw = true;
    }else{
        pwEyes.classList.replace('fa-eye', 'fa-eye-slash');
        userPw.type="password";
        signUpPw = false;
    }
});
//  비밀번호 확인 눈모양 토글
pwCheckEyes.addEventListener("click",() => {
    if(!signUpCheckPw){
        pwCheckEyes.classList.replace('fa-eye-slash', 'fa-eye');
        userPwCheck.type="text";
        signUpCheckPw = true;
    }else{
        pwCheckEyes.classList.replace('fa-eye', 'fa-eye-slash');
        userPwCheck.type="password";
        signUpCheckPw = false;
    }
});

// 약관동의
const signUpForm = document.querySelector('#signUpForm');
const agreeAll = document.querySelector('.all-agree input');
const agreeBoxs = document.querySelectorAll('.agree-box input');
// const submitBtn = document.querySelector('.submit-btn');
// 약관 모달창
const agreeDetail = document.querySelectorAll('.agree-box i');
const terms = document.querySelector('.terms');
const privacy = document.querySelector('.privacy');
const agreeBtn = document.querySelectorAll('.modal-wrap input');
const agreeModalClose = document.querySelectorAll('.modal-wrap p');

const agreements = {
    termsOfService: false,
    privacyPolicy: false,
};

// 새로고침(submit) 되는 것 막기
signUpForm.addEventListener("submit", (e) => e.preventDefault());

// 동의 하나씩 눌렀을 때 다 선택하면 전체에 체크되고, 하나를 체크취소하면 전체 체크취소
agreeBoxs.forEach(item => item.addEventListener('input', toggleCheckbox));
function toggleCheckbox(e){
    const { checked, id } = e.target;
    agreements[id] = checked;
    checkStatus();
}
// 회원가입 약관 동의에서 반영하는 function, 각 각 눌렀을 때 (전체동의 체크, 모달창 동의에 같은 상태 반영)
function checkStatus(){
    const { termsOfService, privacyPolicy } = agreements;
    if( termsOfService && privacyPolicy ){
        agreeAll.checked = true;
        agreeBtn.forEach(item => {
            item.checked = true;
        });
    }else{
        agreeAll.checked = false;
    }
    if(termsOfService){
        agreeBtn[0].checked = true;
    }else if(!termsOfService){
        agreeBtn[0].checked = false;
    }
    if(privacyPolicy){
        agreeBtn[1].checked = true;
    }else if(!privacyPolicy){
        agreeBtn[1].checked = false;
    }

}

// 모달에 동의하기 체크하면 회원가입 약관동의 폼에도 해당 약관 체크
agreeBtn.forEach(item => item.addEventListener('input', (e) => {
    const { checked, name } = e.target;
    agreements[name] = checked;
    modalAgreeCheck();
}));

// 모달에서 회원가입 약관동의 반영하는 function, 동의 누르면 바로 모달창 사라지게 하기
function modalAgreeCheck(){
    const { termsOfService, privacyPolicy } = agreements;
    if( termsOfService && privacyPolicy ){
        agreeAll.checked = true;
        agreeBoxs.forEach(item => {
            item.checked = true;
        });
    }else{
        agreeAll.checked = false;
    }
    if(termsOfService){
        agreeBoxs[0].checked = true;
        terms.classList.remove('show-modal');
    }else if(!termsOfService){
        agreeBoxs[0].checked = false;
    }
    if(privacyPolicy){
        agreeBoxs[1].checked = true;
        privacy.classList.remove('show-modal');
    }else if(!privacyPolicy){
        agreeBoxs[1].checked = false;
    }
}

// 약관 전체동의 토글
agreeAll.addEventListener("click", e => {
    const { checked } = e.target;
    if(checked){
        agreeBoxs.forEach(item => {
            item.checked = true;
            agreements[item.id] = true;
        });
        agreeBtn.forEach(item => {
            item.checked = true;
        });
    }else{
        agreeBoxs.forEach(item => {
            item.checked = false;
            agreements[item.id] = false;
        });
        agreeBtn.forEach(item => {
            item.checked = false;
        });
    }
});

// 각 약관 자세히보기 아이콘 누르면 모달 열기
agreeDetail.forEach(item => item.addEventListener('click' , (e) => {
    const { id } = e.target;
    if(id === "termsAgree"){
        terms.classList.add('show-modal');
    }
    if(id === "privacyAgree"){
        privacy.classList.add('show-modal');
    }
}));

// 모달창 닫기
agreeModalClose.forEach(item => item.addEventListener('click', () => {
    terms.classList.remove('show-modal');
    privacy.classList.remove('show-modal');
}));

// 모달창 외부 클릭시 모달창 닫기
window.addEventListener('click', (e) => {
    if(!terms.contains(e.target) && e.target.id !== "termsAgree"){
        terms.classList.remove('show-modal');
    }
    if(!privacy.contains(e.target) && e.target.id !== "privacyAgree"){
        privacy.classList.remove('show-modal');
    }
});

// 유효성 검사 (필수항목 입력, 비밀번호 일치, 약관동의 체크)