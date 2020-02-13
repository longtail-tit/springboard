<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Article</h2>

<form action="/board/read" method="post">
	<div>
	작성 일자 : <fmt:formatDate value="${board.regdate}" pattern="yyy-MM-dd HH:mm:ss"/>
	</div>
	<div>
	view : ${ board.viewcnt }
	</div>
	<div>
	title : ${board.title }
	</div>
	<div>
	content : 
	${board.content }
	</div>
	<div>
	writer :${board.writer }
	</div>
	<div>
	 <!-- 게시글 번호를 hidden 처리 -->
	 <input type="hidden" name="bno" value="${board.bno}" />
	 <button type="button" onclick="location.href='/board/update'">수정</button>
	 <button type="button">삭제</button>
	</div>
</form>

</body>
</html>