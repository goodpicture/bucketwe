<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
body{
width:100%;
margin: 0 auto;
text-align: center;
}
table{
	font-size: 20px;
	float: left;
	margin-left: 30px;	
}
table, tr, td, th{
	text-align: center;
	border: 1px solid black;
	border-collapse: collapse;
}
th, td{
	width: 70px;
}
.test1{
	width: 200px;
}
.test2{
	width: 300px;
}
h1{
text-align: center;
}
#top10_main_div{
	width: 90%;
	border: 1px solid black;
	height: 400px;
}
#top10_main_sub{
	width: 90%;
	height: 400px;
}
</style>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/3-col-portfolio.css" rel="stylesheet">
</head>
<body>
<h1>BucketWe TOP10</h1><br>
<div id="top10__main_div">
	<div id="top10__main_sub">
	<table>
		<caption>조회수 순위</caption>
		<tr>
			<th>글번호</th>
			<th>조회수</th>
			<th class="test1">주제</th>
			<th class="test2">제목</th>
			<th>순위</th>			
		</tr>
		<c:forEach items="${toplist }" var="item" varStatus="status">
		<tr>		
			<td>${item.bno }</td>
			<td>${item.bcnt }</td>
			<td class="test1">${item.category }</td>
			<td style="font-weight: bold;">${item.title }</td>
			<td>${status.count }</td>			
		</tr>
		</c:forEach>
	</table>
	<table>
	<caption>댓글수 순위</caption>
		<tr>
			<th>글번호</th>
			<th>댓글수</th>
			<th class="test1">주제</th>
			<th class="test2">제목</th>
			<th>순위</th>			
		</tr>
		<c:forEach items="${replylist }" var="item2" varStatus="status">
		<tr>		
			<td>${item2.bno }</td>
			<td>${item2.replyCnt }</td>
			<td class="test1">${item2.category }</td>
			<td style="font-weight: bold;">${item2.title }</td>
			<td>${status.count }</td>			
		</tr>
		</c:forEach>
	</table>
	</div>
</div>	
<div style="height:100px;clear:both;"></div>
<%@ include file="../include/footer.jsp" %>	
</body>
</html>