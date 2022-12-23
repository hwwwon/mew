<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%-- head --%>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<%--  CSS  --%>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/login.css'/>">
</head>
<body>
    <section class="wrap">
        <%--  header   --%>
        <c:import url="/WEB-INF/views/layout/header.jsp"/>

        <section class="login-container">
            <form id="loginForm">
                <div class="login-title">LOGIN</div>
                <div class="login-box">
                    <input type="text" id="userId" placeholder="Email" autocomplete="off">
                    <input type="password" id="userPw" placeholder="Password">
                    <button class="login-btn">로그인</button>
                    <div class="login-sub">
                        <span>회원가입 |</span>
                        <span>아이디/비밀번호 찾기</span>
                    </div>
                    <div class="sns-login">
                        <img src="<c:url value='/static/images/google.jpg'/>" class="snsImg">
                        <img src="<c:url value='/static/images/naver.png'/>" class="snsImg">
                        <img src="<c:url value='/static/images/kakao.png'/>" class="snsImg">
                    </div>
                </div>
            </form>
        </section>

    </section>

<script src="/static/js/login.js"></script>
</body>
</html>