<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%-- head --%>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<%--  CSS  --%>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/mypage.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/movieSearch.css'/>">
<%-- fullcalendar --%>
<script src='https://cdn.jsdelivr.net/npm/moment@2.27.0/min/moment.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.0.2/index.global.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/@fullcalendar/moment@6.0.2/index.global.min.js'></script>
<%--<script src='fullcalendar/dist/index.global.js'></script>--%>


</head>
<body>
    <section class="wrap">
        <%--  header   --%>
        <c:import url="/WEB-INF/views/layout/header.jsp"/>

        <section class="mypage-wrap">
            <div class="mypage-container">
                <div class="calendar-area on" id='calendar'></div>
                <div class="album-area">
                    <div class="album-title">기본 앨범</div>
                    <div class="album-filter">
                        <div class="poster-edit">
                            포스터 삭제
                        </div>
                        <div class="poster-edit-box">
                            <div class="poster-all-btn">전체 선택</div>
                            <div class="poster-remove-btn">삭제</div>
                        </div>
                        <div class="filter-zone">
                            <button id="latestBtn">최신순</button>
                            <button id="oldestBtn">오래된순</button>
                            <button class="genre">
                                <p>장르</p>
                                <i class="fas fa-caret-down"></i>
                            </button>
                            <ul class="genre-option">
                                <li><p>전체</p></li>
                                <li><p>SF</p></li>
                                <li><p>모험</p></li>
                                <li><p>액션</p></li>
                                <li><p>범죄</p></li>
                                <li><p>로맨스</p></li>
                                <li><p>애니메이션</p></li>
                                <li><p>코미디</p></li>
                                <li><p>판타지</p></li>
                                <li><p>가족</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="album-container">
                        <div class="poster-box">
                            <img src="/static/images/poster.jpg">
                            <div class="poster-cover"></div>
                        </div>
                        <div class="poster-box">
                            <img src="/static/images/poster2.jpg">
                            <div class="poster-cover"></div>
                        </div>
                        <div class="poster-box">
                            <img src="/static/images/poster.jpg">
                            <div class="poster-cover"></div>
                        </div>
                        <div class="poster-box">
                            <img src="/static/images/poster2.jpg">
                            <div class="poster-cover"></div>
                        </div>
                        <div class="poster-box">
                            <img src="/static/images/poster.jpg">
                            <div class="poster-cover"></div>
                        </div>
                        <div class="poster-box">
                            <img src="/static/images/poster2.jpg">
                            <div class="poster-cover"></div>
                        </div>
                    </div>
                </div>
                <nav class="my-nav-area">
                    <div class="my-nav-container">
                        <div class="nav-btn calender-area my-nav-title now-btn">
                            <p>My MEW</p>
                            <button class="album-edit-btn">Edit</button>
                        </div>
                        <div class="nav-btn album-area later-movie-btn">
                            <p>나중에 볼 영화</p>
                            <span>0</span>
                        </div>
                        <div class="nav-btn album-area all-btn">
                            <p>All</p>
                            <span>0</span>
                        </div>
                        <div class="nav-btn album-area basic-btn">
                            <p>기본 앨범</p>
                            <span>0</span>
                        </div>
                        <div class="add-album-btn">
                            <button>+ 앨범 추가</button>
                        </div>
                    </div>
                </nav>
                <%-- 앨범 추가 팝업창  --%>
                <div class="add-album-area">
                    <div class="add-box">
                        <h4>앨범 추가</h4>
                        <p>앨범 이름을 입력해주세요.</p>
                        <input type="text">
                        <div>
                            <button class="add-cancel">취소</button>
                            <button class="add-album">추가</button>
                        </div>
                    </div>
                </div>
                <%-- 앨범 수정 팝업창  --%>
                <div class="modify-album-area">
                    <div class="modify-box">
                        <h4>앨범 이름 수정</h4>
                        <p>수정할 앨범 이름을 입력해주세요.</p>
                        <input type="text">
                        <div>
                            <button class="modify-cancel">취소</button>
                            <button class="modify-album">저장</button>
                        </div>
                    </div>
                </div>
                <%--  기록 확인 및 수정 팝업창  --%>
                <div class="modify-record-area">
                    <div class="record-box">
                        <div class="img-box">
                            <div class="bg-crop">
                                <img src="/static/images/poster.jpg" class="bg-poster-img">
                            </div>
                            <img src="/static/images/poster.jpg" class="poster-img">
                            <div class="movie-simple-info">
                                <p>라라랜드</p>
                                <p>2016</p>
                            </div>
                        </div>
                        <div class="watch-info-box">
                            <div class="watch-info">
                                <img src="/static/images/when.png">
                                <input type="text" placeholder="관람일">
                            </div>
                            <div class="watch-info">
                                <img src="/static/images/where.png">
                                <input type="text" placeholder="관람 장소">
                            </div>
                            <div class="watch-info">
                                <img src="/static/images/who.png">
                                <input type="text" placeholder="누구랑">
                            </div>
                            <div class="watch-info">
                                <img src="/static/images/rating.png">
                                <input type="text" placeholder="평점">
                            </div>
                            <div class="watch-info">
                                <img src="/static/images/folder.png">
                                <input type="text" placeholder="앨범선택">
                            </div>
                        </div>
                        <div class="review-write-box">
                            <textarea placeholder="영화 리뷰를 작성해 보세요." spellcheck="false"></textarea>
                        </div>
                        <div class="modify-record-btn-box">
                            <button class="modify-btn-close">닫기</button>
                            <button class="modify-btn-submit">저장</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%--  탑버튼  --%>
        <div class="top-btn">
            <img src="/static/images/up-arrow.png">
        </div>

    </section>

    <script src="/static/js/mypage.js"></script>
</body>
</html>