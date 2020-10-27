<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <title>2016 굿모닝 경기 소통 크리에이터 공모전</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/general.css" >
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo-min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/layout.js"></script>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div id="wrap">
    <!-- @ CONTAINER -->
    <section id="container" class="sub">
        <!-- @ CONTENTS -->
        <div id="contents">
            <!-- @ SUB TITLE AREA -->
            <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
            </div>
            <div class="write_title">
                ${board.title}
            </div>
            <div class="write_date">
                <span class="write_line"><strong>작성자  :</strong> ${board.name} </span>
                <span class="write_line"><strong>조회수  :</strong> ${board.hit} </span>
                <span class="write_line">${board.reg_date}</span>
                <span><em class="file_icon"></em><a href="file.do?num=${board.num}">${board.filename}</a></span>

            </div>
            <div class="con_box">
               ${board.content}
            </div>

            <div class="btn_area">
                <a href="list.do" class="btn_blue">목록</a>
				<button type="button" class="btn_blue" onclick="location.href='update.do?num=${board.num}'">수정</button> 
				<button type="button" class="btn_blue" onclick="location.href='delete.do?num=${board.num}'">삭제</button> 
            </div>
        </div>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>
</body>
</html>