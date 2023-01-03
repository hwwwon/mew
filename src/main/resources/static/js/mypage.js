document.addEventListener('DOMContentLoaded', function() {
    let calendarEl = document.getElementById('calendar');
    let calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        height: 'auto',
        views: {
            dayGridMonth: {
                type: 'dayGrid',
                duration: { months: 1 },
                monthMode: true,
                fixedWeekCount: false,
                showNonCurrentDates: false,
            },
        },
        dayHeaderContent: function (date) {
            let weekList = ["일", "월", "화", "수", "목", "금", "토"];
            return weekList[date.dow];
        },
        titleFormat: function (date) {
            // YYYY년 MM월
            return `${date.date.year}년 ${date.date.month + 1}월`;
        },
    });
    calendar.render();

    // My MEW 네비게이션 메뉴 클릭했을 때 내용 바뀌게
    const addArea = document.querySelector('.my-nav-container');
    const calendarArea = document.querySelector('.calendar-area');
    const albumArea = document.querySelector('.album-area');
    // 자신을 제외한 형제 요소 중 nav-btn을 클래스로 가지고 있는 형제요소들 배열로 반환
    const siblings = t => [...t.parentElement.children].filter(e => e.classList.contains("nav-btn") && e !== t);

    // 클릭 했을 때 해당 내용으로 바뀜
    // 동적으로 생성된 요소에 이벤트 바인딩 해주기 위해 부모요소에 바인딩 해서 자식 요소 찾기
    addArea.addEventListener('click', event => {
        event.currentTarget.querySelectorAll('.nav-btn').forEach(item => item.addEventListener('click', e => {
            if(e.target.tagName !== "BUTTON"){
                e.currentTarget.classList.add("now-btn");
                siblings(e.currentTarget).forEach(i => {if(i.classList.contains("now-btn")) i.classList.remove("now-btn")});
                if(e.currentTarget.classList.item(1) === "calender-area"){
                    calendarArea.classList.add('on');
                    albumArea.classList.remove('on');
                    calendar.render();
                }else if(e.currentTarget.classList.item(1) === "album-area"){
                    albumArea.classList.add('on');
                    calendarArea.classList.remove('on');
                }
            }
        }));
    });

    // 앨범 추가 열기
    const addAlbumArea = document.querySelector('.add-album-area');
    document.querySelector(' .add-album-btn').addEventListener('click', () => {
        addAlbumArea.style.display = 'flex';
    });

    // 앨범 추가 닫기
    document.querySelector('.add-cancel').addEventListener('click', () => {
        addAlbumArea.style.display = 'none';
    });

    // 앨범 추가
    document.querySelector('.add-album').addEventListener('click', () => {
        let newDiv = `<div class="nav-btn album-area">
                            <p>추가된 앨범</p>
                            <span>0</span>
                            <div class="edit-area">
                                <button>수정</button>
                                <button>삭제</button>
                            </div>
                        </div>`;
        addArea.insertAdjacentHTML('beforeend', newDiv);
        addAlbumArea.style.display = 'none';
    });

    // 앨범 삭제(Edit)
    const albumEdit = document.querySelector('.album-edit-btn');
    const editArea = document.querySelector('.edit-area');
    console.log(addArea.children);
    albumEdit.addEventListener('click', () => {
        editArea.classList.toggle('edit-toggle');
    });
    // 앨범 수정(Edit)

});

// 필터
// 최신순 오래된순

// 장르

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





