<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BucketWe</title>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/3-col-portfolio.css" rel="stylesheet">
<style>
body{
width:100%;
margin:0 auto;
}
#maindiv{
margin-top:80px;
width:1300px;
margin: 0 auto;
border: 1px solid black;
}
</style>
</head>
<body>
<div id="maindiv">
	<img src="${pageContext.request.contextPath}/resources/image/screenshot2012-07-27at6-29-18pm.png" style="border:1px solid black;margin:0 auto; width:1000px;height:492px;">
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>