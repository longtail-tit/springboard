<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>게시글목록</title>

<script type="text/javascript">
 $(document).ready(function(){

 })

</script>	
<link rel="stylesheet" href="/resources/css/bootstrap.css" />
</head>
<body>
<h2>
	Article List
</h2>

<table class="table table-bordered table-hover">
	<thead>
		<tr>
		  <th>번호</th>
		  <th>제목</th>
		  <th>이름</th>
		  <th>작성일</th>
		  <th>조회수</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach var="row" items="${list }">
	<tr>
	  <td>${row.bno }</td>
	  <td><a href="/board/read?bno=${row.bno}">${row.title }</a></td>
	  <td>${row.writer}</td>
	  <td>
	  	<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
	  </td>
	  <td>${row.viewcnt }</td>
	</tr>
	</c:forEach>
	</tbody>
	
</table>
<button type="submit" id="btnCreate" onclick="location.href='/board/create'" class="btn btn-primary btn-sm">글쓰기</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
</body>
</html>
