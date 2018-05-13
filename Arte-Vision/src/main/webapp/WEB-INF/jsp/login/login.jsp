<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/upload/palette-icon-16-173795.png">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>Arte - 회원가입</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(document).on("click", "#cancelBtn", function() {
	$('#eid').text("")[0].value = "";
	$("#idCheckDiv").html("");
	$("#checkId2").html("");
	$("#checkId").html("");
	$("#regPassword").text("")[0].value = "";
	$("#regPassword1").text("")[0].value = "";
	$("#birthday").text("")[0].value = "";
	$("#tel2").text("")[0].value = "";
	$("#tel3").text("")[0].value = "";
	$("#checkPassword").html("");
	$("#checkPassword1").html("");
	$("#checkIdSub").html("");
	$("#checkPasswordSub").html("");
	$("#checkPasswordSub1").html("");
});
$(document).on("click", "#resetBtn", function() {
	$('#eid').text("")[0].value = "";
	$("#idCheckDiv").html("");
	$("#checkId2").html("");
	$("#checkId").html("");
	$("#regPassword").text("")[0].value = "";
	$("#regPassword1").text("")[0].value = "";
	$("#birthday").text("")[0].value = "";
	$("#tel2").text("")[0].value = "";
	$("#tel3").text("")[0].value = "";
	$("#checkPassword").html("");
	$("#checkPassword1").html("");
	$("#checkIdSub").html("");
	$("#checkPasswordSub").html("");
	$("#checkPasswordSub1").html("");
});
if($('#eid').html == ''){
	$("#idCheckDiv").html("");
	$("#checkId2").html("");
}
	$(document).on("keyup", "#eid", function() {
		$("#idCheckDiv").html("");
		$("#checkId2").html("");
		var eid = $(this).val();
		$.ajax({
			url : "${ pageContext.request.contextPath }/login/check",
			type : "POST",
			data : {
				'eid' : eid
			},
			success : function(data) {
				var a = "";
				if (data === ("이메일 형식이 아닙니다")) {
					a += "<div id ='checkIdSub' style = 'color : red;'>" + data + "</div>";
					$("#checkId").html(a);

				} else if (data === ("사용 가능한 아이디입니다.")) {
					a += "<div id ='checkIdSub' style = 'color : green;'>" + data + "</div>";
					$("#checkId").html(a);
				}else {
					a += "<div id ='checkIdSub' style = 'color : red;'>" + data + "</div>";
					$("#checkId").html(a);
				}
				if ( eid == ''){
					$("#checkId").html("");
					
				}
			}
		});
	});
	$(document).on("keyup", "#nickname", function() {
		var nickname = $(this).val();
		$.ajax({
			url : "${ pageContext.request.contextPath }/login/checknick",
			type : "POST",
			data : {
				'nickname' : nickname
			},
			success : function(data) {
				var a = "";
				if (data === ("중복된 닉네임 입니다.")) {
					a += "<div id ='checkNickSub3' style = 'color : red;'>" + data + "</div>";
					$("#NickCheckDiv").html(a);

				} else{
					a += "<div id ='checkNickSub3' style = 'color : green;'>" + data + "</div>";
					$("#NickCheckDiv").html(a);
				}
				if ( nickname == ''){
					$("#NickCheckDiv").html("");
				}
			}
		});
	});
	function idCheck(){ 
	var eidcheck = $('[name="regId"]').val();
	var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/
	if(eidcheck==''||eidcheck==null|| regex.test(eidcheck) === false){
		alert('이메일 형식으로 작성해주시기 바랍니다.');
	}else{
		alert("인증번호 발송 중입니다. 잠시만 기다려주세요!");
		$.ajax({
			url : "${ pageContext.request.contextPath }/sendMail/checkeid",
			type : "POST",
			data : {
				'eidcheck' : eidcheck
			},
			success : function(data) {
				var a = '';
				alert('귀하의 이메일 주소로 인증번호를 발송 하였습니다.');
				a += '<input id="regIdCheck" type="text" placeholder="인증번호 입력"  autocomplete="off" class="form-control placeholder-no-fix" />';
				$('#idCheckDiv').html(a);
				
				$(document).on("keyup", "#regIdCheck", function() {
					check = $(this).val();
					$.ajax({
						url : "${ pageContext.request.contextPath }/sendMail/checkeidForm",
						type : "POST",
						data : {
							'check' : check,
							'success' : data
						},
						success : function(data) {
							var a = "";
							if (data === ("인증번호가 다릅니다. 다시 한번 확인해주세요.")) {
								$("#checkId2").html("");
								a += "<div id ='checkIdSub2' style = 'color : red;'>" + data + "</div>";
								$("#checkId2").html(a);
							} else {
								$("#checkId2").html("");
								a += "<div id ='checkIdSub2' style = 'color : green;'>" + data + "</div>";
								$("#checkId2").html(a);
							}
							if ( data == ''){
								$("#checkId2").html("");
							}
						}
					});
				});
			}
		});
		}
	}
	
	$(document).on("keyup", "#regPassword", function() {
		pw = $(this).val();
		$.ajax({
			url : "${ pageContext.request.contextPath }/login/pCheck",
			type : "POST",
			data : {
				'pw' : pw
			},
			success : function(data) {
				var a = "";
				if (data === ("영문자,숫자,특수문자를 조합해주세요.")) {
					a += "<div id ='checkPasswordSub' style = 'color : red;'>" + data + "</div>";
					$("#checkPassword").html(a);
				} else {
					a += "<div id ='checkPasswordSub' style = 'color : green;'>" + data + "</div>";
					$("#checkPassword").html(a);
				}
				if ( pw == ''){
					$("#checkPassword").html("");
				}
			}
		});
	});
	$(document).on("keyup", "#regPassword1", function() {
		var downPassword = $(this).val();
		var msg = "비밀번호가 일치합니다.";
		var upPassword = $('[name=regPassword]').val();
		$.ajax({
			url : "${ pageContext.request.contextPath }/login/pCheck1",
			type : "GET",			
			success : function(data) {
				if( upPassword == ''){
					var a = "";
					a += "<div id ='checkPasswordSub1' style = 'color : red;'>" + "비밀번호를 먼저 입력해주세요" + "</div>";
					$("#checkPassword1").html(a);
				}else if( upPassword === downPassword){
					var a = "";
					a += "<div id ='checkPasswordSub1' style = 'color : green;'>" + msg + "</div>";
					$("#checkPassword1").html(a);
				} else {
					var a = "";
					a += "<div id ='checkPasswordSub1' style = 'color : red;'>" + "비밀번호가 일치하지 않습니다." + "</div>";
					$("#checkPassword1").html(a);
				}
				if ( downPassword == ''){
					$("#checkPassword1").html("");
				}
			}
		});
	});
	
	function doCheck(){
		var form = document.memForm;	
		var email = document.getElementById('checkIdSub');
		var checkEmail2 = document.getElementById('checkIdSub2');
		var regIdCheck = document.getElementById('regIdCheck');
		var checkNick = document.getElementById('checkNickSub3');
		var checkPasswordSub = document.getElementById('checkPasswordSub');
		var checkPasswordSub1 = document.getElementById('checkPasswordSub1');
		if( form.regId.value == ''){
			alert('아이디를 확인해주세요.');
			form.regId.focus();
			return false;
		}
		if( email.innerText == '' || email.innerText != "사용 가능한 아이디입니다."){
			alert('아이디를 확인해주세요.');
			form.regId.focus();
			return false;
		}
		if( form.regPassword.value == ''){
			alert('비밀번호를 확인해주세요.');
			form.regPassword.focus();
			return false;
		}
		if( form.regPassword1.value == ''){
			alert('비밀번호확인을 확인해주세요.');
			form.regPassword1.focus();
			return false;
		}
		if(form.nickname.value == ''){
			alert('닉네임을 확인해주세요.');
			form.nickname.focus();
			return false;
		}
		if(checkNick.innerText != "사용 가능한 닉네임 입니다."){
			alert('닉네임을 확인해주세요.');
			form.nickname.focus();
			return false;
		}
		if(checkEmail2 === null && regIdCheck == null){
			alert('아이디 확인을 통해 중복체크를 해주세요.');
	        form.regId.focus();
	        return false;
		}
		if(checkEmail2 === null && regIdCheck != null){
			alert('인증번호를 확인해주세요.');
	        form.regIdCheck.focus();
	        return false;
		}
		if(checkEmail2.innerText== "" ||checkEmail2.innerText != "인증번호 확인이 완료되었습니다."){
	         alert('인증번호를 확인해주세요.');
	         form.regIdCheck.focus();
	         return false;
	      }
		if(checkPasswordSub.innerText == '' || checkPasswordSub.innerText != ("사용 가능한 비밀번호입니다.")){
			alert('비밀번호를 확인해주세요.');
			form.regPassword1.focus();
			return false;
		}
		if(checkPasswordSub1.innerText == '' || checkPasswordSub1.innerText != ("비밀번호가 일치합니다.")){
			alert('비밀번호확인을 확인해주세요.');
			form.regPassword1.focus();
			return false;
		}
		if(form.regBirthday.value == '' || form.regBirthday.value.length != 8){
			alert('생년월일을 확인해주세요.');
			form.regBirthday.focus();
			return false;
		}
		if(form.tel2.value =='' || form.tel2.value.length < 3){
			alert('핸드폰 번호를 확인해주세요 ');
			form.tel2.focus();
			return false;
		}
		if(form.tel3.value =='' || form.tel3.value.length != 4){
			alert('핸드폰 번호를 확인해주세요 ');
			form.tel3.focus();
			return false;
		}
		
		alert('Arte-Vision에 오신걸 환영합니다.');
		$('body').removeClass("modal-open");
		$('#regMemModal').hide();
		$(".modal-backdrop").hide();
	}
	
	
</script>
<script>
	$(".enterCheck input[type=text]").keypress(function(e) {
		if (e.keyCode == 13) {
			check();
		}
	});
</script>


<!-- Bootstrap core CSS -->
<link href="/assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="/assets/css/style.css" rel="stylesheet">
<link href="/assets/css/style-responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	<div id="login-page">
		<div class="container">

			<form:form class="form-login" name="check" commandName="loginVO" method="post" action="/login/login">
			<a href="/main">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="width: 25px; height: 40px;">×</button>
			</a>
				<h2 class="form-login-heading">지금 로그인</h2>
				<div class="login-wrap">					
					<form:input type="text" class="form-control" path="id"
						placeholder="User ID" />
					<br>
					<form:input type="password" class="form-control" path="password"
						placeholder="Password" />
					<label class="checkbox"> <span class="pull-right"> <a
							data-toggle="modal" href="#myModal"> 비밀번호를 잊으셨나요?</a>

					</span>
					</label>
					<button class="btn btn-theme btn-block" type="submit">
						<i class="fa fa-lock"></i> 로그인
					</button>
					<hr>
					<div class="registration">
						아직 계정이 없으신가요?<br /> <a data-toggle="modal"
							href="#regMemModal" data-backdrop="static" data-keyboard="false"> 계정 만들기 </a>
					</div>

				</div>
			</form:form>

			<!-- Member register Modal -->
			<form:form id="SignUp" class="form-login" commandName="loginVO" method="post"
				name="memForm" onsubmit="return doCheck()" action="/login/login">
				<div aria-hidden="true" aria-labelledby="regMemModalLabel"
					role="dialog" tabindex="-1" id="regMemModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">회원 등록</h4>
							</div>
							<div class="modal-body">
								<p>이메일 주소를 입력후 확인버튼을 눌러 인증번호를 받으십시오.</p>
								<div id = "emailIdForm">
								<form:input id="eid" type="email" path="regId"
									placeholder="이메일아이디" autocomplete="off"
									class="form-control placeholder-no-fix" 
									style="width: 82%; display: inline;"/>
									<button type = "button" id = "eidcheck" class="btn btn-theme" onclick = "idCheck();">아이디 확인</button>
								</div>
									<div id = "checkId"></div>
								<br>
									<div id = "checkIdForm"></div>
								<br>
									<div id = "idCheckDiv"></div>
									<div id = "checkId2">
										<input type="hidden" id = "checkIdSub2" value = ""/>
									</div>
									<div id = "regIdCheckSub"></div>
								<br>
								<form:input id="nickname" type="nickname" path="nickname"
									placeholder="닉네임" autocomplete="off"
									class="form-control placeholder-no-fix" />
								<br>
								<div id = "NickCheckDiv">
									<input type="hidden" id = "checkNickSub2" value = ""/>
								</div>
								<br/>
								<form:input id="regPassword" type="password" path="regPassword"
									placeholder="비밀번호" autocomplete="off" maxlength="16"
									class="form-control placeholder-no-fix" />
									<div id = "checkPassword"></div>
								<br>
								<form:input id="regPassword1" type="password" path="regPassword1"
									placeholder="비밀번호 확인" autocomplete="off" maxlength="16"
									class="form-control placeholder-no-fix" />
									<div id = "checkPassword1"></div>
								<br>
								<form:input id="birthday" type="number" maxlength="8" path="regBirthday"
									placeholder="생년월일 8자리  ex)19780101" autocomplete="off"
									class="form-control placeholder-no-fix" />
								<br>
								<div>
									<form:select class="form-control" path="tel1"
										style="width: 32%; display: inline; text-align: center;">
										<form:option value="010">010</form:option>
										<form:option value="011">011</form:option>
										<form:option value="016">016</form:option>
										<form:option value="018">018</form:option>
										<form:option value="019">019</form:option>
									</form:select>
									-
									<form:input id="tel2" type="text" path="tel2" maxlength="4"
										class="form-control" style="width: 32%; display: inline;" />
									-
									<form:input id="tel3" type="text" path="tel3" maxlength="4"
										class="form-control" style="width: 32%; display: inline;" />
								</div>

							</div>
							<div class="modal-footer">
								<form:button class="btn btn-theme" type="submit">Register</form:button>
								<form:button class="btn btn-default" id="resetBtn" type="reset">Reset</form:button>
								<form:button data-dismiss="modal" id="cancelBtn" class="btn btn-default"
									type="button">Cancel</form:button>
							</div>
						</div>
					</div>
				</div>
				<!-- member register modal -->
			</form:form>

			<!-- Modal -->
			<form id="findForm" name = "findForm123" method="post" >
				<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
					tabindex="-1" id="myModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">비밀번호 찾기</h4>
							</div>
							<div class="modal-body">
								<p>비밀번호를 재설정하려면 아래에 이메일 주소를 입력하십시오.</p>
								 <input type="text" name="birthdayCheck"
									placeholder="생년월일 8자리" autocomplete="off"
									class="form-control enterCheck placeholder-no-fix" maxlength="8" />
								 <input type="text" name="email1"
									placeholder="Email" autocomplete="off"
									class="form-control enterCheck placeholder-no-fix" />

							</div>
							<div class="modal-footer">
								<button data-dismiss="modal" class="btn btn-default"
									type="button">Cancel</button>
								<button class="btn btn-theme" type="button" onclick="checkInfo()">Submit</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<script>
				function checkInfo() {
					var birthday =$('[name=birthdayCheck]').val();
					var email = $('[name=email1]').val();
					
					if (birthday == '') {
						alert('생년월일을 입력해주세요!!!');
						return false;
					}
					if ( birthday.length != 8){
						alert('생년월일이 8자리가 아닙니다!!!');
						return false;
					}
					if (email == '') {
						alert('이메일을 입력해주세요!!!');
						return false;
					}
					var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

					if (regex.test(email) === false) {
						alert("잘못된 이메일 형식입니다.");
						return false;
					}
					alert('입력하신 정보와 일치하는 정보를 찾는 중입니다.\n잠시만 기다려주세요.');
					var findForm = $('[name=findForm123]').serialize();
					$.ajax({
								url : '${pageContext.request.contextPath}/sendMail/auth',
								type : 'POST',
								data : findForm,
								success : function(data) {
									alert(data);
									$('[name=birthdayCheck]').val("");
									$('[name=email1]').val("");
									$('body').removeClass("modal-open");
									$('#myModal').hide();
									$('.modal-backdrop').hide();
								}
							});
					return true;
				}
			</script>

			<div></div>

			<!-- modal -->

		</div>
	</div>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="/assets/js/jquery.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>

	<!-- <!--BACKSTRETCH-->
	<script type="text/javascript"
		src="/assets/js/jquery.backstretch.min.js"></script>
	<script>
		$.backstretch("/assets/img/login-bg.jpg", {
			speed : 500
		});
	</script>

</body>
</html>
