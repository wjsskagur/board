<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
               <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
				</div>
               	<form:form action="update.do" enctype="multipart/form-data" commandName="boardVO">
               	<form:hidden path="num"/>
                <table class="basic_write">
                    <caption>News 입력</caption>
                    <colgroup>
                        <col style="width:150px">
                        <col style="width:*">
                    </colgroup>
					   <tr>
                        <th>제목<span class="star">*</span></th>
                        <td><form:input path="title" title="제목" name="" id="" class="add_txt"  placeholder="제목 *"/></td>
                    </tr>
                    <tr>
                        <th>작성자<span class="star">*</span></th>
                        <td><form:input path="name" title="성명" name="" id="" class="name_txt" placeholder="성명 *"/></td>
                    </tr>
                 
                    <tr>
                        <th>첨부파일</th>
                        <td>
                            <input type="file" title="첨부파일" name="upload" id="upload" placeholder="학과/부서" class="name_txt">
                            <c:if test="${!empty boardVO.filename}">
								<br>
								<span>(${boardVO.filename})파일이 등록되어 있습니다. 다시 업로드하면 기존 파일은 삭제 됩니다.</span>
							</c:if>
                        </td>
                    </tr>
                    <tr>
                        <th>내용 <span class="star">*</span></th>
                        <td>
                           <form:textarea path="content" name="" id="" cols="30" rows="10" style="width:100%"/>
                        </td>
                    </tr>
                    
                </table>               
                <div class="btn_area">
					<button type="submit" class="btn_blue">확인</button> 
					<a href="list.do" class="btn_blue_line">취소</a>
                </div>
                </form:form>
        </div>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>
</body>
</html>