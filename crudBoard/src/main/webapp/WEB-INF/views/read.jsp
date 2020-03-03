<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" href="/resources/css/bootstrap.css" /> -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }

</style>
</head>
<body>

<div id="container">
<h2>Article</h2>
<hr />
<form action="/board/read" method="POST">
	<div class="form-group">
	작성 일자 : <fmt:formatDate value="${board.regdate}" pattern="yyy-MM-dd HH:mm:ss"/>
	</div>
	<div class="form-group">
	view : ${ board.viewcnt }
	</div>
	<div class="form-group">
	title
	<input type="text" id="title" name="title" class="form-control" value="${board.title }" readonly="readonly"/>
	</div>
	<div class="form-group">
	content
	<input type="text" id="title" name="title" class="form-control" value="${board.content }" readonly="readonly"/>
	</div>
	<div class="form-group">
	writer
	<input type="text" id="title" name="title" class="form-control" value="${board.writer }" readonly="readonly"/>
	</div>
	<div>
	 <!-- 게시글 번호를 hidden 처리 -->
	 <input type="hidden" name="bno" value="${board.bno}" />
	 <button class="btn btn-primary" type="button" onclick="location.href='/board/update?bno=${board.bno}'">수정</button>
	 <button class="btn btn-danger" type="button" onclick="location.href='/board/delete?bno=${board.bno}'">삭제</button>
	 <button class="btn btn-successs" type="button" onclick="location.href='/board'">목록</button>
	</div>
</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
</body>
</html>