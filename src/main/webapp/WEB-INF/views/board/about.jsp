<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<style>
#maincoll {
	padding: 0;
	margin: 0px auto;
	list-style: none;
	width: 65%;
}

.title {
	padding: 0;
	margin: 0;
}

.title>a {
	padding-top: 12px;
	font-size: 35px;
	font-family:"돋움";
	text-decoration: none;
	font-weight: bold;
	display: block;
	padding-left: 12px;
	height: 23px;
}

.content {
	margin: 0;
	/* background-color: #DC143C; */
	background: #D4D0C8;
	padding: 10px;
	height: 100px;
	border-radius: 10px;
	font-size: 17px;
}

#headerimg {
	height: 200px;
	width: 100%;
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
<body>
<h1 style="text-align: center;">BucketWe</h1>
<div style="width: 1000px; margin: 0 auto;height: 650px;">
<iframe style="width:100%;height:90%;" src="https://www.youtube.com/embed/gJ-jS1MRNew?ecver=1?amp;autoplay=1" frameborder="0" allowfullscreen></iframe>
</div>
<div style="text-align: center;">
<h4>위 영상은 버킷리스트라는 영화입니다.<br>
위에 영화를 보면 버킷리스트를 만들고 선택하는데 있어 도움이 될것이라 생각되어 넣었습니다.</h4>
<h4>버킷 리스트는 죽기 전에 해보고 싶은 것들을 정리한 목록입니다.<br> 
국내에서는 어느 순간 열풍처럼 버킷 리스트라는 단어가 사용되었으며 이를 토대로 함께 한다는 의미로 BucketWe를 구성하게 되었습니다.<br>
평소에 하고 싶었거나 죽기전에 꼭 해보고 싶은 것이 있다면 그것을 적고 지지하는 사람들과 함께 버킷을 공유하면 됩니다.</h4>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>