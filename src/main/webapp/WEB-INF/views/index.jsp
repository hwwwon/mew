<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%-- head --%>
<c:import url="/WEB-INF/views/layout/head.jsp" />
</head>
<body>
    <section class="wrap">
        <%--  header   --%>
        <c:import url="/WEB-INF/views/layout/header.jsp"/>

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
        </section>>

    </section>

    <script src="/static/js/index.js"></script>
</body>
</html>