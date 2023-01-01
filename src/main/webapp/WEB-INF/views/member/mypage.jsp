<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%-- head --%>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<%--  CSS  --%>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/mypage.css'/>">
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
                <div id='calendar'></div>
                <div class="album-area">
                    <div class="album-filter">
                        <button>최신순</button>
                        <button>오래된순</button>
                        <button class="genre">
                            <p>장르</p>
                            <i class="fas fa-caret-down"></i>
                        </button>
                        <ul class="genre-option">
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
                    <div class="album-container">
                        <img src="/static/images/poster.jpg">
                        <img src="/static/images/poster2.jpg">
                        <img src="/static/images/poster.jpg">
                        <img src="/static/images/poster2.jpg">
                        <img src="/static/images/poster.jpg">
                        <img src="/static/images/poster2.jpg">
                    </div>
                </div>
                <nav class="my-nav-area">
                    <div class="my-nav-container">
                        <div class="nav-btn my-nav-title">
                            <p>My MEW</p>
                            <button class="album-edit-btn">Edit</button>
                        </div>
                        <div class="nav-btn all-btn">
                            <p>All</p>
                            <span>0</span>
                        </div>
                        <div class="nav-btn basic-btn">
                            <p>기본 앨범</p>
                            <span>0</span>
                        </div>
                        <div class="add-album-btn">
                            <button>+ 앨범 추가</button>
                        </div>
                        <div class="nav-btn later-movie-btn">
                            <p>나중에 볼 영화</p>
                            <span>0</span>
                        </div>
                    </div>
                </nav>
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