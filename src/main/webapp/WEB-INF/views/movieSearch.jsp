<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%-- head --%>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<%--  CSS  --%>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/movieSearch.css'/>">
</head>
<body>
    <section class="wrap">
        <%--  header   --%>
        <c:import url="/WEB-INF/views/layout/header.jsp"/>

        <section class="result-container">
            <div class="result-box">
                <div class="movie-img">
                    <img src="/static/images/poster.jpg">
                </div>
                <div class="movie-info">
                    <span class="movie-title">라라랜드(La La Land)</span>
                    <div class="movie-year">2016</div>
                    <div class="movie-genre">
                        <span>장르 : </span>
                        <span>뮤지컬/로맨스</span>
                    </div>
                    <div class="movie-summary">
                        <div>소개</div>
                        <div>
                            꿈을 꾸는 사람들을 위한 별들의 도시 ‘라라랜드’. 재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생 ‘미아’(엠마 스톤), 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.
                            꿈을 꾸는 사람들을 위한 별들의 도시 ‘라라랜드’. 재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생 ‘미아’(엠마 스톤), 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.
                            꿈을 꾸는 사람들을 위한 별들의 도시 ‘라라랜드’. 재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생 ‘미아’(엠마 스톤), 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.
                            꿈을 꾸는 사람들을 위한 별들의 도시 ‘라라랜드’. 재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생 ‘미아’(엠마 스톤), 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.
                            꿈을 꾸는 사람들을 위한 별들의 도시 ‘라라랜드’. 재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생 ‘미아’(엠마 스톤), 인생에서 가장 빛나는 순간 만난 두 사람은 미완성인 서로의 무대를 만들어가기 시작한다.

                        </div>
                    </div>
                    <button class="record-btn">기록 남기기</button>
                    <button class="pick-btn"><img class="pick" src="/static/images/star1.png"></button>
                </div>
            </div>
            <%--  기록 남기기 팝업창  --%>
            <div class="record-area">
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
                            <input type="text" placeholder="관람일" id="movieWatchDate" readonly>
                        </div>
                        <div class="watch-info">
                            <img src="/static/images/where.png">
                            <input type="text" placeholder="관람 장소" class="watch-detail" id="watchPlace" readonly>
                        </div>
                        <div class="watch-info">
                            <img src="/static/images/who.png">
                            <input type="text" placeholder="누구랑" class="watch-detail" id="watchPerson" readonly>
                        </div>
                        <div class="watch-info">
                            <img src="/static/images/rating.png">
                            <input type="text" placeholder="평가" class="watch-detail" id="watchStar" readonly>
                        </div>
                        <div class="watch-info">
                            <img src="/static/images/folder.png">
                            <input type="text" placeholder="앨범선택" class="watch-detail" id="choiceAlbum" readonly>
                        </div>
                    </div>
                    <div class="review-write-box">
                        <textarea placeholder="영화 리뷰를 작성해 보세요." spellcheck="false"></textarea>
                    </div>
                    <div class="record-btn-box">
                        <button class="record-btn-cancel">취소</button>
                        <button class="record-btn-submit">저장</button>
                    </div>
                </div>
            </div>
            <%-- 관람장소, 누구랑, 평점, 앨범선택 팝업창 --%>
            <%-- 관람장소 --%>
            <div class="record-detail-area watchPlace">
                <div class="record-detail-box">
                    <p class="detail-title">관람 장소</p>
                    <div class="detail-content">집</div>
                    <div class="detail-content">극장</div>
                    <div class="detail-content self">
                        직접입력
                        <div class="self-input-box">
                            <input type="text" class="self-input">
                            <button class="self-done">완료</button>
                        </div>
                    </div>
                </div>
            </div>
            <%--누구랑 --%>
            <div class="record-detail-area watchPerson">
                <div class="record-detail-box">
                    <p class="detail-title">누구랑</p>
                    <div class="detail-content">혼자</div>
                    <div class="detail-content">친구</div>
                    <div class="detail-content">가족</div>
                    <div class="detail-content">애인</div>
                    <div class="detail-content self">
                        직접입력
                        <div class="self-input-box">
                            <input type="text" class="self-input">
                            <button class="self-done">완료</button>
                        </div>
                    </div>
                </div>
            </div>
            <%-- 평점 --%>
            <div class="record-detail-area watchStar">
                <div class="record-detail-box">
                    <p class="detail-title">평가</p>
                    <div class="star-container">
                        <i class="fas fa-star star-wrap" id="one"><div class="star-box"><i class="fas fa-star review-star"></i></div></i>
                        <i class="fas fa-star star-wrap" id="two"><div class="star-box"><i class="fas fa-star review-star"></i></div></i>
                        <i class="fas fa-star star-wrap" id="three"><div class="star-box"><i class="fas fa-star review-star"></i></div></i>
                        <i class="fas fa-star star-wrap" id="four"><div class="star-box"><i class="fas fa-star review-star"></i></div></i>
                        <i class="fas fa-star star-wrap" id="five"><div class="star-box"><i class="fas fa-star review-star"></i></div></i>
                        <div class="star-num">0.0</div>
                    </div>
                    <div class="star-button-box">
                        <button class="star-reset">초기화</button>
                        <button class="star-done">확인</button>
                    </div>
                </div>
            </div>
            <%-- 앨범선택 --%>
            <div class="record-detail-area choiceAlbum">
                <div class="record-detail-box">
                    <p class="detail-title">앨범선택</p>
                    <div class="detail-content">기본 앨범</div>
                </div>
            </div>
        </section>

        <%--  탑버튼  --%>
        <div class="top-btn">
            <img src="/static/images/up-arrow.png">
        </div>

    </section>

<script src="/static/js/movieSearch.js"></script>
</body>
</html>