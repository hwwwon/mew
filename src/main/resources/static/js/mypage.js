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

});

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





