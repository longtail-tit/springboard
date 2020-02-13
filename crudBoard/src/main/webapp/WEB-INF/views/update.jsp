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
<form action="/board/create" method="post">
    <div>title : <input type="text" name="title" id="title" size="80" placeholder="제목을 입력해주세요 " /></textarea></div>	
	<div><textarea name="content" id="content" cols="80" rows="4" placeholder="내용을 입력해주세요"></textarea></div>
	<div>writer : <input type="text" name="writer" id="writer" placeholder="이름 입력" /></div>
	<div>

	<input type="submit" value="Done" />
	</div>

</form>
</body>
</html>
