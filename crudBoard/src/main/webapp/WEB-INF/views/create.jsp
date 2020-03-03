<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<style>
  #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }

</style>
<!-- <link rel="stylesheet" href="/resources/css/bootstrap.css" /> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<body>

<div id="container">
	<h1>
		Create Article
	</h1>
	<hr />
	<form action="/board/create" method="post">
	    <div>title  <input class="form-control" type="text" name="title" id="title" size="80" placeholder="제목을 입력해주세요 " /></textarea></div>	
		<div>content <textarea class="form-control" name="content" id="content" cols="80" rows="4" placeholder="내용을 입력해주세요"></textarea></div>
		<div>writer <input class="form-control" type="text" name="writer" id="writer" placeholder="이름 입력" /></div>
		<br>
		<div>
		<button  class="btn btn-primary" type="submit" >DONE</button>
		</div>
	
	</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
</body>
</html>
