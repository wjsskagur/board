<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <section id="container" class="sub  new">
        <!-- @ CONTENTS -->
        <div id="contents">
            <!-- @ SUB TITLE AREA -->
            <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
            </div>
			<div class="btn_area">
					<a href="write.do" class="btn_blue_line">글쓰기</a>
              </div>
			<!-- 페이징 처리는 5개씩 해주세요-->
            <table class="news_list">
            <caption>News 리스트</caption>
            <colgroup>
                <col style="width: 10%">
                <col style="width:*">
                <col style="width: 10%">
                <col style="width: 10%">
                <col style="width: 5%">
                <col style="width: 8%">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">등록일</th>
                    <th scope="col">조회</th>
                    <th scope="col">첨부</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="board" items="${list}">
            <tr>
                <td>${board.num}</td>
                <td class="board_txt">
                    <p>
                        <a href="detail.do?num=${board.num}" class="ellip"> ${board.title } </a>
                    </p>
                </td>
                <td class="board_man">${board.name}</td>
                <td class="board_date">${board.reg_date}</td>
                <td class="board_read">${board.hit}</td>
                <td class="board_file"><span class="file_icon">${board.uploadfile}</span>
            </tr>
            </c:forEach>
            <!-- <tr>
                <td>9</td>
                <td class="board_txt">
                    <p>
                        <a href="view.html" class="ellip">사이트 개편에 따른 이용약관 및 개인정보 취급방침 변경 안내</a>
                    </p>
                </td>
                <td class="board_man">관리자</td>
                <td class="board_date">2016-02-25</td>
                <td class="board_read">989</td>
                <td class="board_file"><span class="file_icon">파일다운로드</span>
            </tr>
			<tr>
                <td>8</td>
                <td class="board_txt">
                    <p>
                        <a href="view.html" class="ellip">사이트 개편에 따른 이용약관 및 개인정보 취급방침 변경 안내</a>
                    </p>
                </td>
                <td class="board_man">관리자</td>
                <td class="board_date">2016-02-25</td>
                <td class="board_read">989</td>
                <td class="board_file"><span class="file_icon">파일다운로드</span>
            </tr>
			<tr>
                <td>7</td>
                <td class="board_txt">
                    <p>
                        <a href="#" class="ellip">사이트 개편에 따른 이용약관 및 개인정보 취급방침 변경 안내</a>
                    </p>
                </td>
                <td class="board_man">관리자</td>
                <td class="board_date">2016-02-25</td>
                <td class="board_read">989</td>
                <td class="board_file"><span class="file_icon">파일다운로드</span>
            </tr>
			<tr>
                <td>6</td>
                <td class="board_txt">
                    <p>
                        <a href="#" class="ellip">사이트 개편에 따른 이용약관 및 개인정보 취급방침 변경 안내</a>
                    </p>
                </td>
                <td class="board_man">관리자</td>
                <td class="board_date">2016-02-25</td>
                <td class="board_read">989</td>
                <td class="board_file"><span class="file_icon">파일다운로드</span>
            </tr> -->
            </table>
            <div class="pagination">
                <a class="prev end">첫 페이지</a>
                <a class="prev">이전 페이지</a>
                ${pagingHtml}
                <a href="next" class="next">다음 페이지</a>
                <a href="#" class="next end">마지막 페이지</a>
            </div>
            <form id="search_form" action="list.do">
            <div class="find_wrap">
                <select name="keyfield" id="">
                    <option value="">제목</option>
                    <option value="">내용</option>
                </select>
                <input type="search" name="keyword" size="16" id="keyword"  title="검색어 입력" placeholder="검색어 입력">
                <input type="submit" class="btn_gray" value="검색">
            </div>
            </form>
        </div>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>
</body>
</html>