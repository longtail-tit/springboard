<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Create Article
</h1>
<form action="/board/update" method="post">
    <div>title : <input type="text" name="title" id="title" size="80" value="${board.title }"/></textarea></div>	
	<div><textarea name="content" id="content" cols="80" rows="4">${board.content }</textarea></div>
	<div>writer : <input type="text" name="writer" id="writer" value="${board.writer }" /></div>
	<div>
		<input type="hidden" value="${board.bno }" name="bno" id="bno" />
	<input type="submit" value="Edit" />
	</div>

</form>
</body>
</html>
