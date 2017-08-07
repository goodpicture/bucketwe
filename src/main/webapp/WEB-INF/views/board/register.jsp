<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> -->
</head>
<script type="text/javascript">
window.onload = function(){
document.f1.onsubmit = function(){
var reg1 = /[가-힇\w]{2,100}/;
var reg2 = /[가-힇\w]{1,10}/;
var reg3 = /[가-힇\w\W]{30,3000}/;
var reg4 = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;
var reg5 = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/;

if(reg1.test(this.title.value)==false){
	alert("제목을 입력하세요");
	this.title.value="";
	this.title.focus();
	return false;
}
if(reg2.test(this.category.value)==false){
	alert("주제를 입력하세요");
	this.category.value="";
	this.category.focus();
	return false;
}
if(reg3.test(this.content.value)==false){
	alert("세부 내용을 입력하세요");
	this.content.value="";
	this.content.focus();
	return false;
}
if(reg4.test(this.startDate.value)==false){
	alert("시작 날짜를 입력하세요");
	this.startDate.value="";
	this.startDate.focus();
	return false;
}
if(reg5.test(this.endDate.value)==false){
	alert("종료 날짜를 입력하세요");
	this.endDate.value="";
	this.endDate.focus();
	return false;
}
}
}
</script>
<style>
#f1{

}	
label{
width: 200px;
color: #CC0000;
font-size: 20px;
margin-left: 50px;
}
.regForm{
width: 300px;
height: 30px;
}
#insertTextarea{
margin-left: 250px;
}
#imgf{
margin-left: 250px;
}
.regBtn{
width: 100px;
height: 35px;
font-size: 15px;
}
</style>
<body>
	<h1>REGISTER BOARD</h1><br>
	<form role="form" method="post" action="register" name="f1" id="f1" enctype="multipart/form-data">
		<label>제목 :</label>
		<input type="text" name="title" class="regForm"><br><br>
		<label>주제 :</label>
		<input type="text" name="category" class="regForm"><br><br>
		<label>세부 내용 :</label><br>
		<textarea rows="15" cols="70" name="content" id="insertTextarea"></textarea><br><br>
		<label>시작날짜 :</label>
		<input type="date" name="startDate" class="regForm"><br><br>
		<label>종료날짜 :</label>
		<input type="date" name="endDate" class="regForm"><br><br>
		<label>이미지 :</label>
		<input type="file" name="imgFiles" id="imgf" multiple="multiple" class="regForm">
		<input type="hidden" name="id" value="${login }"><br><br>
		<input type="submit" value="저장" class="regBtn" style="background-color:orange;color:white;border-radius: 10px;">
		<input type="reset" value="취소" onclick="history.back()" class="regBtn" style="background-color: blue;color: white;border-radius: 10px;">
	</form>
<%@ include file="../include/footer.jsp" %>	
</body>
</html>