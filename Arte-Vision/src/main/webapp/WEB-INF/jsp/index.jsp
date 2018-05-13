<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Arte-Vision Main</title>
<link rel="shortcut icon" href="/upload/palette-icon-16-173795.png">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="canonical"
	href="http://www.alessioatzeni.com/wp-content/tutorials/jquery/CSS3-digital-clock/index.html">
<link rel="stylesheet" href="/assets/css/clock.css">
<link rel="stylesheet"
	href="/resources/bower_components/font-awesome/css/font-awesome.min.css">
<script src="/assets/js/clock.js"></script>
<script src = "/resources/ajax.js"></script> 
<link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
<script src="/resources/dist/js/adminlte.min.js"></script>
<link rel="stylesheet"
	href="/resources/bower_components/bootstrap/dist/css/bootstrap.min2.css">
<style>

body {
margin: 0;
height: 100%;
}

input {
	font-family: 'BebasNeueRegular', Arial, Helvetica, sans-serif;
	background-color: transparent;
	color: #fff;
	width: 50%;
	font-size:2em;
	max-font-size : 20px;
	border-right: none; 
	border-top: none;
	border-left: none;
}

a:link {
	color: #fff;
	text-decoration: none;
}

a:visited {
	color: #fff;
	text-decoration: none;
}

a:hover {
	color: #fff;
	text-decoration: none;
}

input:focus {
	outline: none;
}

i {
	boder-bottom: solid;
}

input:-ms-input-placeholder {
	color: #fff;
}

input::-webkit-input-placeholder {
	color: #fff;
}

input::-moz-placeholder {
	color: #fff;
}

input::-moz-placeholder {
	color: #fff;
}

.container {
	width: auto;
	margin: 0 auto;
	overflow: hidden;
}

.clock {
	width: auto;
	margin: 0 auto;
	text-align: center;
	padding: 30px;
	border: 0 px solid #333;
	color: #fff;
}

#Date {
	font-family: 'BebasNeueRegular', Arial, Helvetica, sans-serif;
	height: 100px;
	font-size: 4vw;
	max-font-size : 20px;
	text-align: center;
	text-shadow: 0 0 2px black;
}

.ul {
	width: auto;
	margin: 0 auto;
	padding: 0px;
	list-style: none;
	text-align: center;
}

.ul, .li {
	display: inline;
	font-size: 10vw;
	max-font-size : 20px;
	font-family: 'BebasNeueRegular', Arial, Helvetica, sans-serif;
	text-shadow: 0 0 2px black;
}
a{font-size:2em;}
footer{
position: absolute;
bottom: 0;
left: 0;
right: 0;
height : 150px;
}
.wrap{
min-height: 100%;
position: relative; 
padding-bottom: 19px;
}

</style>
<script type="text/javascript">
$(document).ready(function() {
    
	$('#listShow').click(function(e) {
		listSearch();
	});
	$("#inputSearch123321").keydown(function (key) {
		if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
			listSearch();
		}
	});
});
</script>
</head>
<body>
<form name="myForm" action="/login" method="POST">
</form>
	<div class = "wrap" id ="scroll-up">
	<header>
		<div class="container">
			<div class="clock">
				<div id="Date">Date</div>

				<ul class="ul">
					<li class="li" id="hours">00</li>
					<li class="li" id="point">:</li>
					<li class="li" id="min">00</li>
					<li class="li" id="point">:</li>
					<li class="li" id="sec">00</li>
					<li></li>
				</ul>

			</div>
		</div>
	</header>
	<section>
	
	
	<div align="center" style=" margin-top: 5%; color : #fff; font-size : 2em;">미술관 전시 후기 검색</div> 
	<div style="margin-left: 35%">
			<input id="inputSearch123321" type="text" placeholder="Search" style="float: left;">
			<a href="#" id = "listShow">  
				<i class="fa fa-search" aria-hidden="true"></i>
			</a>
		<br><br><br><br>
	</div>
	<div style = "background-color: transparent; font-size : 1em" class = "detailSearch" ></div>
	<div style = "background-color: transparent; color : #fff; font-size : 1em" class = "listSearch"></div>
	<br><br><br><br><br>
	</section>
	<footer align="center">
		<a href="/main" style="font-size : 3em" >시작하기</a><br/>
		<c:if test="${ loginVO.id eq null }">
			<a href="#" onclick="javascript:document.myForm.submit();" style="font-size : 2em" >로그인</a>
		</c:if>
		<c:if test="${ loginVO.id ne null }">
			<a href="/login/logout" style="font-size : 2em" >로그아웃</a>
		</c:if>
		
	</footer>
	</div>
	
	<script src="/assets/js/jquery.backstretch.min.js"></script>
	<script>
		$.backstretch("/resources/background.jpg", {
			speed : 1000
		});
	</script>

</body>
</html>