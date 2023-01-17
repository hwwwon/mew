## Mew(Movie Review)

> 지금 까지 봤던 영화들을 기록하는 서비스

1. 프로젝트 주제 선정 배경 <br/>
   지금까지 봤던 영화들을 정리하고 기록하기 위해 만듬
2. 프로젝트 기능 <br/>
   - 영화 검색 기능 (제목, 장르)
   - 영화 추천
     - 기본: 랜덤 추천
     - 서비스 이용 후: 관심 장르 추천
   - 찜하면 마이페이지에서 나중에 볼 영화로 확인하는 기능
   - 관람일, 관람장소, 누구랑, 영화 평가, 앨범 선택, 영화 감상평을 입력하는 영화 기록 기능
   - 마이페이지 앨범 추가를 통해 원하는 카테고리 만들기
   - 마이페이지 첫 화면에 Fullcalendar로 기록 날짜에 해당하는 영화 포스터 보여주는 기능
3. 프로젝트 수행
   - 도구 : IntelliJ, Spring Boot(JDK11, Gradle, war), Spring Data JPA
   - 개발언어 : Java, HTML, CSS, JavaScript
   - API : YTS(영화 API)
   - CDN : Fullcalendar, Bootstrap DateTimepicker
   - DB : MySQL
   - Server : Tomcat9
4. 참고한 서비스 : 뭐봤어, Moodi
5. 서비스와 차별점
   - 캘린더로 영화 포스터 보여주기
   - 영화 검색 후 기록 남길 때 다른 앨범을 선택해 저장
