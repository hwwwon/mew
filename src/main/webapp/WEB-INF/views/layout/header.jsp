<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
    <div class="home-user-box">
        <img src="/static/images/Mew-logo.jpg" alt="logo">
        <div class="user-service">
            <div class="search-box"><input typ="text" placeholder="기록할 영화를 검색해보세요."><img src="/static/images/search.png" alt="검색"></div>
            <div class="user-box">
                <div class="user-wrap">
                    <span>로그인</span>
                    <span>회원가입</span>
                    <div class="sns-img">
                        <img src="<c:url value='/static/images/google.jpg'/>" class="snsImg">
                        <img src="<c:url value='/static/images/naver.png'/>" class="snsImg">
                        <img src="<c:url value='/static/images/kakao.png'/>" class="snsImg">
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
