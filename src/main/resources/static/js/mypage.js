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

    // 앨범 추가 팝업창 열기
    const addAlbumArea = document.querySelector('.add-album-area');
    const addAlbumBtn = document.querySelector('.add-album-btn');
    addAlbumBtn.addEventListener('click', () => {
        addAlbumArea.style.display = 'flex';
    });

    // 앨범 추가 팝업창 닫기
    document.querySelector('.add-cancel').addEventListener('click', () => {
        addAlbumArea.style.display = 'none';
    });

    // 앨범 추가 완료
    document.querySelector('.add-album').addEventListener('click', () => {
        let newDiv = `<div class="nav-btn album-area custom-btn">
                            <p>추가된 앨범</p>
                            <span>0</span>
                            <div class="edit-area">
                                <button class="edit-modify-btn">수정</button>
                                <button class="edit-delete-btn">삭제</button>
                            </div>
                        </div>`;
        addArea.insertAdjacentHTML('beforeend', newDiv);
        addAlbumArea.style.display = 'none';
    });

    // 앨범 Edit 토글
    const albumEdit = document.querySelector('.album-edit-btn');
    const modifyAlbumBtn = document.querySelector('.modify-album-area'); // 앨범 수정 모달창
    function editOff(){
        if(addArea.querySelector('.custom-btn') === null){ // 추가한 앨범을 모두 삭제했을 때 자동으로 edit 종료
            addAlbumBtn.style.pointerEvents="auto";
            addAlbumBtn.style.textDecoration="none";
            albumEdit.innerText = "Edit";
            albumEdit.style.color="#dedede";
            albumEdit.style.borderColor="#404040";
        }
    }
    // Edit 버튼 클릭 했을 때
    const navBtn = document.querySelector('.nav-btn');
    albumEdit.addEventListener('click', event => {
        addArea.querySelectorAll('.edit-area').forEach(item => {
            item.classList.toggle('edit-toggle');

            if(item.classList.contains('edit-toggle')){
                addAlbumBtn.style.pointerEvents="none";
                addAlbumBtn.style.textDecoration="line-through";
                albumEdit.innerText = "Done";
                albumEdit.style.color="#7fe5ff";
                albumEdit.style.borderColor="#7fe5ff";
                // 앨범 삭제(Edit)
                item.children[1].addEventListener('click', e => {
                    e.stopImmediatePropagation();
                    if(confirm(`추가된 앨범을 삭제하시겠습니까?`)){
                        siblings(navBtn).forEach(i => {if(i.classList.contains("now-btn")) i.classList.remove("now-btn")});
                        e.currentTarget.closest('.custom-btn').remove();
                        console.log(e.currentTarget);
                        editOff();
                        // 앨범 삭제하면 페이지 My Mew로 넘겨주기
                        addArea.querySelector('.nav-btn.calender-area.my-nav-title').classList.add("now-btn");
                        calendarArea.classList.add('on');
                    }
                    else return false;
                });
                // 앨범 수정 팝업창 열기(Edit)
                item.children[0].addEventListener('click', e => {
                    e.stopImmediatePropagation();
                    modifyAlbumBtn.style.display="flex";
                });
            }else{
                addAlbumBtn.style.pointerEvents="auto";
                addAlbumBtn.style.textDecoration="none";
                albumEdit.innerText = "Edit";
                albumEdit.style.color="#dedede";
                albumEdit.style.borderColor="#404040";
            }

        });

    });

    // 앨범 수정 팝업창 닫기(Edit)
    document.querySelector('.modify-cancel').addEventListener('click', () => {
        modifyAlbumBtn.style.display="none";
    });

    // 앨범 수정 완료(아직)

    // 필터
    // 최신순 오래된순
    const latestBtn = document.getElementById('latestBtn');
    const oldestBtn = document.getElementById('oldestBtn');

    oldestBtn.addEventListener('click',e => {
        e.target.style.color="#7fe5ff";
        e.target.style.borderColor="#7fe5ff";
        latestBtn.style.color="#dedede";
        latestBtn.style.borderColor="#404040";
    });
    latestBtn.addEventListener('click',e => {
        e.target.style.color="#7fe5ff";
        e.target.style.borderColor="#7fe5ff";
        oldestBtn.style.color="#dedede";
        oldestBtn.style.borderColor="#404040";
    });

    // 장르 필터
    const filterGenre = document.querySelector('.genre');
    const genreOption = document.querySelector('.genre-option');
    const genreList = document.querySelectorAll('.genre-option li');
    // 장르 필터 리스트 토글
    filterGenre.addEventListener('click', e => {
        genreOption.classList.toggle('genre-toggle');
    });
    // 장르 선택하면 선택한 장르 반영
    genreList.forEach(item => item.addEventListener('click', e => {
        genreOption.classList.remove('genre-toggle');
        filterGenre.children[0].innerText = e.target.innerText;
        filterGenre.children[0].style.color="#7fe5ff";
        filterGenre.style.borderColor="#7fe5ff";
    }));
    // 장르 외부 클릭 시 창 닫기
    window.addEventListener('click', e => {
        if(!genreOption.contains(e.target) && e.target.className !== 'genre'){
            genreOption.classList.remove('genre-toggle');
        }
    });

    // 앨범 포스터 이미지 누르면 확인 및 수정 모달 열기
    const modifyRecord = document.querySelector('.modify-record-area');
    const albumPoster = document.querySelectorAll('.album-container img');
    albumPoster.forEach(item => item.addEventListener('click', e => {
        modifyRecord.classList.add('record-toggle');
    }));

    // 영화 기록 확인 및 수정 팝업창 닫기
    document.querySelector('.modify-btn-close').addEventListener('click', e => {
        e.stopImmediatePropagation();
        if(confirm('저장하지 않고 닫으시겠습니까?')){
            modifyRecord.classList.remove('record-toggle');
        }else return false;
    });

    // 영화 기록 확인 및 수정 팝업창 저장
    document.querySelector('.modify-btn-submit').addEventListener('click', e => {
        e.stopImmediatePropagation();
        alert(`수정되었습니다.`);
        modifyRecord.classList.remove('record-toggle');
    });

    // 포스터 삭제(기록 삭제)
    const posterEditBtn = document.querySelector('.poster-edit');
    const posterEditBox = document.querySelector('.poster-edit-box');
    const posterCover = document.querySelectorAll('.poster-cover');
    const posterRemoveBtn = document.querySelector('.poster-remove-btn');
    const allBtn = document.querySelector('.poster-all-btn');
    // 포스터 젠체 선택 유무(false, true)
    let test = document.getElementsByClassName('cover-toggle').length === document.getElementsByClassName('poster-box').length;

    // 포스터 삭제 버튼 스타일 및 초기화
    posterEditBtn.addEventListener('click', () => {
        posterEditBtn.classList.toggle('edit-style');
        posterEditBox.classList.toggle('edit-toggle');
        posterCover.forEach(item => item.classList.toggle('edit-toggle'));
        if(posterEditBtn.classList.contains('edit-style')) posterEditBtn.innerText = "삭제 완료";
        else{
            posterEditBtn.innerText = "포스터 삭제";
            posterCover.forEach(item => { // 상태 초기화
                item.style.backgroundColor = "rgba(0, 0, 0, 0.5)";
                allBtn.innerText = "전체 선택";
                item.classList.remove('cover-toggle');
                if(item === posterCover[posterCover.length-1]) test = false;
            });
        }
    });

    // 포스터 삭제 상태가 되면, 삭제할 포스터를 선택후 삭제버튼 누르기
    // 포스터 선택
    posterCover.forEach(item => item.addEventListener('click', e => {
        if(e.target.classList.contains('cover-toggle')){
            e.target.classList.remove('cover-toggle');
            e.target.style.backgroundColor = "rgba(0, 0, 0, 0.5)";
            allBtn.innerText = "전체 선택";
            test = false;
        }else{
            e.target.style.backgroundColor = "rgba(255, 255, 255, 0.3)";
            e.target.classList.add('cover-toggle');
            if(document.getElementsByClassName('cover-toggle').length === document.getElementsByClassName('poster-box').length){
                allBtn.innerText = "전체 해제";
                test = true;
            }
        }
    }));

    //포스터 전체 선택
    allBtn.addEventListener('click', () => {
        posterCover.forEach(item => {
            if(test){
                item.style.backgroundColor = "rgba(0, 0, 0, 0.5)";
                allBtn.innerText = "전체 선택";
                item.classList.remove('cover-toggle');
                if(item === posterCover[posterCover.length-1]) test = false;
            }else{
                item.style.backgroundColor = "rgba(255, 255, 255, 0.3)";
                allBtn.innerText = "전체 해제";
                item.classList.add('cover-toggle');
                if(item === posterCover[posterCover.length-1]) test = true;
            }
        });
    });

    // 포스터 삭제하기
    posterRemoveBtn.addEventListener('click', () => {
        if(document.getElementsByClassName('cover-toggle').length !== 0){
            if(confirm('삭제하시겠습니까?')){
                document.querySelectorAll('.cover-toggle').forEach(item => {
                    item.closest('.poster-box').remove();
                });
            }else return false;
        }
    });

    // 포스터 호버
    posterCover.forEach(item => item.addEventListener('mouseover', e => {
        if(!(e.target.classList.contains('cover-toggle'))){
            e.currentTarget.style.backgroundColor = "rgba(255, 255, 255, 0.4)";
            e.currentTarget.style.transitionDuration = "0.5s";
        }
    }));
    posterCover.forEach(item => item.addEventListener('mouseout', e => {
        if(!(e.target.classList.contains('cover-toggle'))){
            e.currentTarget.style.backgroundColor = "rgba(0, 0, 0, 0.5)";
            e.currentTarget.style.transitionDuration = "0.5s";
        }
    }));

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

});





