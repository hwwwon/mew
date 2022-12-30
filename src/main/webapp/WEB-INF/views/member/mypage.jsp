<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%-- head --%>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<%--  CSS  --%>
<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/mypage.css'/>">
<%-- fullcalendar --%>
<script src='fullcalendar/dist/index.global.js'></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.0.1/index.global.min.js"></script>

</head>
<body>
    <section class="wrap">
        <%--  header   --%>
        <c:import url="/WEB-INF/views/layout/header.jsp"/>

        <section class="mypage-wrap">
            <div class="mypage-container">
                <div id='calendar'></div>
            </div>
        </section>

    </section>

    <script src="/static/js/mypage.js"></script>
</body>
</html>