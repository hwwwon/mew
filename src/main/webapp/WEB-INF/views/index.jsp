<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>뮤(MEW)</title>
    <link rel="stylesheet" type="text/css" href="/static/css/index.css">
</head>
<body>
    <section class="wrap">
        <header>
            <div class="home-user-box">
                <img src="/static/images/Mew-logo.jpg" alt="logo">
                <div class="user-service">
                    <div class="search-box"><input typ="text"><img src="/static/images/search.png" alt="검색"></div>
                    <div class="user-box">
                        <span>로그인</span>
                        <span>회원가입</span>
                    </div>
                </div>
            </div>
        </header>
        <section class="slide-container">
            <div class="slide-box">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster2.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster2.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
                <img src="/static/images/poster.jpg" alt="포스터" class="slide-img">
            </div>
            <img class="back" id="back" src="/static/images/back.png" alt="이전">
            <img class="next" id="next" src="/static/images/next.png" alt="다음">
        </section>
        <footer>

        </footer>
    </section>

    <script src="/static/js/index.js"></script>
</body>
</html>