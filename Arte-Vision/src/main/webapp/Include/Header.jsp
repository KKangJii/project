<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   Random random = new Random();
   int token = random.nextInt();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Arte - 이미지 검색</title>
<link rel="shortcut icon" href="/upload/palette-icon-16-173795.png">
<!-- Tell the browser to be responsive to screen width -->
<meta
   content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
   name="viewport">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="/resources/dist/jquery.ezdz.min.css">
<script src="/resources/dist/jquery.ezdz.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
<script src = "/resources/ajax.js"></script>  
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="/resources/dist/css/skins/_all-skins.min.css">


<script src="/resources/dist/js/adminlte.min.js"></script>

<!-- jQuery 3 -->

<!-- redirect Ajax Method -->
<!-- -->
<!-- editMenu Style -->

<link rel="stylesheet" href="/resources/daumeditor/css/editor.css" type="text/css" charset="utf-8"/>
<script src="/resources/daumeditor/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>
<script>
	function pwCheck(){
		var form = document.memForm;	
		var refalse = "";
		var password = form.password.value;
		if(password == ''){
			alert("현재 비밀번호를 입력해주세요!");
			return false;
		}
		if(document.getElementById('checkNickSub3').innerText == "중복된 닉네임 입니다."){
			alert("다른 닉네임을 사용해주세요!");
			form.nickname.focus();
			return false;
		}
		var regId = $('[name=regId]').serialize();
		$.ajax({
			url : '${ pageContext.request.contextPath }/login/pwCheck',
			type : 'post',
			data : regId,
			async : false,
			success : function(data) {
				if(data != password){
					alert('현재 비밀번호가 일치하지 않습니다.');
					refalse = false;
				}
			},
		});
		
		return refalse;
	}
	$(document).on("keyup", "#regNickname", function() {
		var nickname = $(this).val();
		var refalse = "";
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
function checkInfo(){
	
	var form = document.memForm;	
	var regex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	var password = form.password.value;
	var regPassword = form.regPassword.value;
	var regPassword1 = form.regPassword1.value;
	var birthday = $('#birthday').val();
	var tel1 = $('#tel1').val();
	var tel2 = $('#tel2').val();
	var tel3 = $('#tel3').val();
	
	
	
	if (!regPassword == '' && password == regPassword) {
		alert("현재 비밀번호와 동일합니다.\n 다른 비밀번호로 변경해주세요");
		return false;
	}
	if (!regPassword == '' && regex.test(regPassword) === false) {
		alert("비밀번호는 영문자,숫자,특수문자를 조합하여야 하며 \n 최소 8자이상 입력해주시기 바랍니다.");
		return false;
	}
	
	if(!regPassword == ''&& regPassword1 == ''){
		alert("변경 비밀번호 확인을 입력해주세요!");
		return false; 
	}
	
	if(!regPassword == '' && regPassword != regPassword1){
		alert("비밀번호가 일치하지 않습니다");
		return false;
	}
	
	if(form.regBirthday.value == '' ){
		alert('생년월일을 확인해주세요.');
		return false;
	}
	if(form.regBirthday.value.length != 8){
		alert('생년월일을 8자리로 입력해주세요');
		return false;
	}
	
	if(form.tel1.value =='' || form.tel1.value.length != 3){
		alert('번호를 확인해주세요 ');
		return false;
	}
	if(form.tel2.value =='' || form.tel2.value.length < 3){
		alert('번호를 확인해주세요 ');
		return false;
	}
	if(form.tel3.value =='' || form.tel3.value.length != 4){
		alert('번호를 확인해주세요 ');
		return false;
	}
	
	
	alert('수정되었습니다.');
}
function loginShow(){
	var a = ""
	a += "로그인한 회원만 사용 가능합니다.\n"
	a += "로그인 하시겠습니까?"
	if(confirm(a)){
		document.myForm2.submit();
	}
}
</script>


  
<script type="text/javascript">
function withdraw(){
	alert('회원탈퇴시 모든 회원정보가 사라집니다!!');
	if(confirm('정말 탈퇴하시겠습니까?')){
		location.href="${ pageContext.request.contextPath }/login/withdraw";		
	}
	return false;
}
</script>

<script>
$(window).load(function() {
	  setTimeout(function(){
	    $(".loader-moving").addClass('end');
	  },100)
	  $('.hero').on('click', 'a', function(e){
	    e.preventDefault();
	    var t = $(this),
	     duration = t.data('duration'),
	     getNum = /[^0-9]/g,
	     href = t.attr('href'),
	     time = parseFloat(duration);
	    
	    time = time * 1000;
	    console.log(time);
	    
	    $('.loader-moving').find('*').css({
	      '-moz-transition-duration': duration,
	      '-o-transition-duration': duration,
	      '-webkit-transition-duration': duration,
	      'transition-duration': duration
	    });
	    $('.loader-moving').addClass('exit');
	    window.setTimeout(function(){
	      window.location = href
	    }, time)
	  });
	});
</script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	<script>
	$('#element').off('scroll touchmove mousewheel');
	</script>
	<style type="text/css">


/* @import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css); */
@import url(http://fonts.googleapis.com/earlyaccess/kopubbatang.css);



.bx-wrapper{
max-width: 100%;
border-top-width: 0px;
border-left-width: 0px;
border-right-width: 0px;
border-bottom-width: 0px;
margin-bottom: 0px;

}


.text-body{
font-family: none;
font-size: 15px;
}


.pp{
font-family: 'KoPub Batang', serif;	
}

._1He59pT8 {
    display: block;
    background-image: -webkit-linear-gradient(top,#4772d9,#6d47d9);
    background-image: linear-gradient(180deg,#c7c7c7,#ffffff);
    min-height: 1000px;
    padding-bottom: 205px;
}

._26owAtQ5:nth-child(3n+2){
    transform: translateY(0%);

}


._26owAtQ5{
    flex-basis: 26.87331%;
}

/* keyframes 정의 */
@keyframes circleLeft {
  0%{
    transform: translateX(-20px);
  }
  50%{
    transform: translateX(20px);
  }
  100%{
    transform: translateX(-20px);
  }
}
@keyframes circleRight {
  0%{
    transform: translateX(20px);
  }
  50%{
    transform: translateX(-20px);
  }
  100%{
    transform: translateX(20px);
  }
}
.loader-moving{
  position: fixed;
  width:100%;
  height: 100%;
  left:0;
  top:0;
  background: #fff;
  z-index:100;
  transition:all 1s;
}
.loader-moving > span{
  position: absolute;
  top:50%;
  left:50%;
  width:20px;
  height:20px;
  border-radius: 100%;
  margin:-10px 0 0;
}
.loader-moving > span.left{
  background: olive;
  transform: translateX(-30px);
  animation:circleLeft 1s cubic-bezier(.645,.045,.355,1) infinite;
}
.loader-moving > span.right{
  background: crimson;
  transform: translateX(30px);
  animation:circleRight 1s cubic-bezier(.645,.045,.355,1) infinite;
}
.loader-moving.end{
  opacity: 0;
  z-index:-2;
  display:none; 
}
p{
	margin-top: 0px;
    margin-bottom: 0px;

}


.skin-red-light .sidebar a {
    color: #fff;
}

.skin-red-light .user-panel>.info, .skin-red-light .user-panel>.info>a {
    color: #fff;
}

</style>

</head>
<body class="hold-transition skin-red-light sidebar-mini" style="background-color:#f9fafc;">
  <form name="myForm1234" action="/login" method="POST">
</form>

      
   <div class="wrapper">
	
      <header class="main-header" id = "scroll-up">
			<!-- Logo -->
			<a href="/main" class="logo" style="height : 56px; background-color: #191919; "> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b style = "color : #7debeb">A</b>rte</span> <!-- logo for regular state and mobile devices --> 
				<span class="logo-lg"><b style = "color : #7debeb">A</b>rte-<b style = "color : #c1ff6b">V</b>ision</span> 
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top"style="background-color: #191919;">
			
			<!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="push-menu"
               role="button" style="    background-color: #191919;"> <span class="sr-only">Toggle navigation</span>
            </a>


					
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						
						<li>						
						<c:if test="${ loginVO.id eq null }">							
                  		<a href="#" onclick="javascript:document.myForm1234.submit();" >
                     		<i class="fa fa-power-off" aria-hidden="true"></i><span class="hidden-xs">로그인</span>            		
                  		</a>						
						</c:if>
						</li>
						<c:if test="${ loginVO.id ne null && loginVO.type eq 'U' }">	
						<li>
							<a href="${ pageContext.request.contextPath }/login/logout">
                     		<i class="fa fa-sign-out"  aria-hidden="true"></i><span class="hidden-xs">로그아웃</span>
                  		</a>						
                  		</li> 
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-user-o" aria-hidden="true"></i>
							<span class="hidden-xs"> ${ loginVO.nickname }</span>
						</a> 
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-body">
									<div class="row">
										<div class="col" align = "left">
											<a href="#">&nbsp;&nbsp;&nbsp;아이디 : ${ loginVO.id } </a>
										</div>
									</div> <!-- /.row -->
									<div class="row">
										<div class="col" align = "left">
											<a href="#">&nbsp;&nbsp;&nbsp;닉네임 : ${ loginVO.nickname } </a>
										</div>
									</div> <!-- /.row -->
									<div class="row">
										<div class="col" align = "left"> 
											<a href="#">&nbsp;&nbsp;&nbsp;생&nbsp;&nbsp;&nbsp;&nbsp;일 : ${ loginVO.birthday } </a> 
										</div>
									</div> <!-- /.row -->
									<div class="row" >
										<div class="col" align = "left">
											<a href="#">&nbsp;&nbsp;&nbsp;Tel&nbsp;&nbsp;&nbsp;: ${ loginVO.tel1 } - ${ loginVO.tel2 } - ${ loginVO.tel3 }  </a>
										</div>
									</div> <!-- /.row --> 
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#memberModify" class="btn btn-default btn-flat" data-toggle="modal" data-backdrop="static" data-keyboard="false">
											<i class="fa fa-id-card fa-3x" aria-hidden="true"></i><br/>내정보 수정
										</a>
										<a id="withdraw" onclick="return withdraw();" class="btn btn-default btn-flat">
                     						<i class="fa fa-sign-out fa-3x"  aria-hidden="true"></i><br/>회원탈퇴
                  						</a>
									</div>
									<div class="pull-right">
<%-- 									<c:if test="${ loginVO.id ne null }"> --%>
<%-- 										<a href="${ pageContext.request.contextPath }/login/logout" class="btn btn-default btn-flat">Sign out</a> --%>
<%-- 									</c:if> --%>
									</div>
								</li>
							</ul></li>
						</c:if>
						<c:if test="${ loginVO.id ne null && loginVO.type eq 'A' }">
						<li>
							<a href="${ pageContext.request.contextPath }/login/logout">
                     		<i class="fa fa-sign-out"  aria-hidden="true"></i><span class="hidden-xs">로그아웃</span>
                  		</a>						
                  		</li> 
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-user-o" aria-hidden="true"></i>
							<span class="hidden-xs"> ${ loginVO.nickname }</span>
						</a> 
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-body">
									<div class="row">
										<div class="col" align = "left">
											<a href="#">&nbsp;&nbsp;&nbsp;아이디 : ${ loginVO.id } </a>
										</div>
									</div> <!-- /.row -->
									<div class="row">
										<div class="col" align = "left">
											<a href="#">&nbsp;&nbsp;&nbsp;닉네임 : ${ loginVO.nickname } </a>
										</div>
									</div> <!-- /.row -->
									<div class="row">
										<div class="col" align = "left"> 
											<a href="#">&nbsp;&nbsp;&nbsp;생&nbsp;&nbsp;&nbsp;&nbsp;일 : ${ loginVO.birthday } </a> 
										</div>
									</div> <!-- /.row -->
									<div class="row" >
										<div class="col" align = "left">
											<a href="#">&nbsp;&nbsp;&nbsp;Tel&nbsp;&nbsp;&nbsp;: ${ loginVO.tel1 } - ${ loginVO.tel2 } - ${ loginVO.tel3 }  </a>
										</div>
									</div> <!-- /.row --> 
								</li>
								<!-- Menu Footer-->
							</ul></li>
						</c:if>	
						<!-- Control Sidebar Toggle Button -->
					</ul>
				</div>
			</nav>
		</header>
		
		<!-- Member register Modal -->
			<form class="form-login" action="${ pageContext.request.contextPath }/login/detail" method="post"
				name="memForm" onsubmit="return checkInfo();">
				<div aria-hidden="true" aria-labelledby="memberModifyLabel"
					role="dialog" tabindex="-1" id="memberModify" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">회원 정보 수정</h4>
							</div>
							<div class="modal-body">
								<input id="regId" type="text" name="regId" autocomplete="off" readonly
									class="form-control placeholder-no-fix" value="${ loginVO.id }"
									style="width:100%;"/>
								<br>
								<br>
								<input id="password" type="password" name="password" min="8" style = "width : 100%;"
									placeholder="현재 비밀번호(필수)" autocomplete="off" maxlength="16"
									class="form-control placeholder-no-fix" />
								<br>
								<br>
								<input id="regPassword" type="password" name="regPassword" min="8" style = "width : 100%;"
									placeholder="변경 비밀번호" autocomplete="off" maxlength="16"
									class="form-control placeholder-no-fix" />
								<br>
								<br>
								<input id="regPassword1" type="password" name="regPassword1" min="8" style = "width : 100%;"
									placeholder="변경 비밀번호 확인" autocomplete="off" maxlength="16"
									class="form-control placeholder-no-fix" />
								<br>
								<br>
								<input type="hidden" name ="nickname" value = "${ loginVO.nickname }"/>
								<input id="regNickname" name="regNickname" style = "width : 100%;"
									placeholder="닉네임" autocomplete="off"
									class="form-control placeholder-no-fix" />
								<br>
								<div id = "NickCheckDiv">
									<input type="hidden" id = "checkNickSub2" value = ""/>
								</div>
								<br/>
								
								<input id="birthday" type="text" maxlength="8" name="regBirthday" style = "width : 100%;"
									placeholder="생년월일 8자리(yyyyMMdd)" autocomplete="off"
									class="form-control placeholder-no-fix" value="${ loginVO.birthday }" />
								<br>
								<br>
								<div style="width:100%;">
									<input id="tel1" type="text" name="tel1" maxlength="3"
										class="form-control" style="width: 31%; display: inline;" value="${ loginVO.tel1 }"/>
									-
									<input id="tel2" type="text" name="tel2" maxlength="4"
										class="form-control" style="width: 31%; display: inline;" value="${ loginVO.tel2 }"/>
									-
									<input id="tel3" type="text" name="tel3" maxlength="4"
										class="form-control" style="width: 31%; display: inline;" value="${ loginVO.tel3 }"/>
								</div>
							</div>
							<div class="modal-footer">
								<button class="btn btn-default" type="submit"  onclick="return pwCheck();">수정</button>
									<button data-dismiss="modal" id="cancelBtn" class="btn btn-default"
										type="button" onclick="/main">Cancel</button>
							</div>
						</div>
					</div>
				</div>
			</form>
				<!-- member register modal -->
		
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar"style="background-color: #313131;">
      
         <!-- sidebar: style can be found in sidebar.less -->
         <section class="sidebar">
         
            <!-- Sidebar user panel -->
            <div class="user-panel">
               <div class="pull-left image">
               <br/>
               <br/>
               </div>
               <div class="pull-left info">
                  <c:if test="${ loginVO.id eq null }">	
                  <a href="#" onclick="javascript:document.myForm1234.submit();" ><i class="fa fa-power-off" aria-hidden="true"></i>로그인</a><br/>
                  <a href="#"><i class="fa fa-circle"></i> Offline</a>
                  </c:if>
                  <c:if test="${ loginVO.id ne null }">
                  	<b>${ loginVO.nickname }</b><br/>
                  <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                  </c:if>
               </div>
            </div>
            <!-- sidebar menu: : style can be found in sidebar.less -->
           <c:if test="${ loginVO.id eq null  }">
             <form name="myForm2" id="myForm2" action="/login" method="POST" >
			</form>
            <ul class="sidebar-menu" data-widget="tree">
  				<li class="header" style="background: #696969; color: #d8d3d3; ">MAIN NAVIGATION</li>
            	<li class=""><a href="/"> <i
                     class="fa fa-check-square-o"></i> <span>메인</span> <span
                     class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
                  </li>
               <li class="treeview"><a href="#" onclick="javascript:loginShow();"> <i class="fa fa-table"></i>
                     <span>이미지 검색</span> <span class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
                  </li>
                  
               <li class="treeview"><a href="#" onclick="javascript:loginShow();"> <i class="fa fa-image"></i>
                     <span>이미지 색상 추출</span> <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
               </li>
              <li><a href="#" id = "listShow"> <i class="fa fa-list"></i>
                     <span>후기 게시판</span> <span class="pull-right-container"><i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a></li>
               
               <li><a href="#" onclick="javascript:loginShow();"> <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                     <span>전국미술관</span> <span class="pull-right-container"><i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a></li>
                
                <li><a href="#" onclick="javascript:loginShow();"> <i class="fa fa-car"></i> 
                     <span>전시 정보 조회</span> <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
               </li>
               
               
            
            </ul>
            </c:if>
             <c:if test="${ loginVO.id ne null && loginVO.type eq 'U'}"> 
            <ul class="sidebar-menu" data-widget="tree">
               <li class="header" style="background: #696969; color: #d8d3d3; ">MAIN NAVIGATION</li>
               <li class=""><a href="/"> <i
                     class="fa fa-check-square-o"></i> <span>메인</span> <span
                     class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
                  </li>

               <li class="treeview"><a href="#" id = "fileShow"> <i class="fa fa-table"></i>
                     <span>이미지 검색</span> <span class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
                  </li>
                   <li class="treeview"><a href="#" id = "propertiesShow"> <i class="fa fa-image"></i>
                     <span>이미지 색상 추출</span> <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
               </li>
               <li><a href="#" id = "listShow"> <i class="fa fa-list"></i>
                     <span>후기 게시판</span> <span class="pull-right-container"><i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a></li>
               
               <li><a href="#" id = "mulistShow"> <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                     <span>전국 미술관</span> <span class="pull-right-container"><i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a></li>
               
              
                
                <li><a href="#" id = "infoShow"> <i class="fa fa-car"></i> 
                     <span>전시 정보 조회</span> <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
               </li>
               
               
            
            </ul>
   		</c:if>  
   		<c:if test="${ loginVO.id ne null && loginVO.type eq 'A' }">
   		<ul class="sidebar-menu" data-widget="tree">
               <li class="header">MAIN NAVIGATION</li>
               <li class=""><a href="#" id = "SignShow"> <i
                     class="fa fa-check-square-o"></i> <span>회원 관리</span> <span
                     class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
                  </li>
               <li><a href="#" id = "listShow"> <i class="fa fa-list"></i>
                     <span>게시판 관리</span> <span class="pull-right-container"><i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a></li>
               
            
            </ul>
   		
   		
   		</c:if>
         </section>
   
         <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="background-color: #EDF0F1;">
<div class="loader-moving">
  <span class="left"></span>
  <span class="right"></span>
</div>
    
    
    
    

    <div>
      
      
      
      
	<div>
		<div>
			<div data-test-selector="page-home">
			
			
			<div class="_1He59pT8" style="background-image: linear-gradient(180deg,#c7c7c7,#ffffff); z-index: -1; position: absolute; width: 100%; height: -webkit-fill-available;">
					<section class="_27ty2vyT" style="height:100%;z-index: 888;">
						<div class="_1EiZdrUj">
							<div class="_2QI86FSc LpMc1Jar" style="top:80px; z-index:0;">
								<div class="_3y-eEHXY">
									<div class="_26owAtQ5" style="    transform: translateY(0%);   flex-basis: 26.87331%; ">
										
									</div>
									
									
									<div class="_26owAtQ5" style="    transform: translateY(0%);   flex-basis: 26.87331%; ">
										
									</div>
									
									
									<div class="_26owAtQ5" style="  cursor: inherit;  transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs" style=" min-width: 0vw;">
											<a class="_2lcEr33g" href="/coupe-driving-on-country-road-in-vintage-sports-PSRHLBZ"></a>
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Coupe Driving on Country Road in Vintage Sports Car" sizes="(min-width: 1570px) 316px, (min-width: 1200px) calc((87.5vw - 120px) / 4), (min-width: 750px) calc((87.5vw - 60px) / 4), (min-width: 375px) 46.25vw, calc(95vw - 20px)" srcset="/upload/g-8_good4452.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: -3.2074423771174665%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="_26owAtQ5" style=" cursor: inherit;   transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Elementy - Multipurpose WordPress Theme" sizes="calc((95vw - 20px) / 3)" srcset="/upload/gkg1.jpg" src="/upload/fv.jpg" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="_26owAtQ5" style="    transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/gkg2.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="_26owAtQ5" style="cursor: inherit;   transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Multipurpose Magazine 7 Indesign Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/gkg3.jpg" src="/upload/ba1.jpg" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="_26owAtQ5" style="  cursor: inherit;  transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/ba1.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>						
									<div class="_26owAtQ5" style="  cursor: inherit;  transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/123.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>			
									<div class="_26owAtQ5" style="  cursor: inherit;  transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/fv.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>			
									<div class="_26owAtQ5" style="   cursor: inherit; transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/1234.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div><div class="_26owAtQ5" style=" cursor: inherit;   transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/12345.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div><div class="_26owAtQ5" style="   cursor: inherit; transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/112.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="_26owAtQ5" style="  cursor: inherit;  transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/221.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div><div class="_26owAtQ5" style=" cursor: inherit;   transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/21121.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div><div class="_26owAtQ5" style="cursor: inherit;    transform: translateY(0%);   flex-basis: 26.87331%; ">
										<div class="_1JHyw_Qo _19FugtAs">
											 
											<div class="_3hs3-yZL">
												<div class="Mwvoxp0R" style="padding-top: 75.666667%;"></div>
												<div>
													<div class="_22Wchr-3" style="width: 100%; height: 100%; position: absolute; top: 0; left: 0; right: 0; bottom: 0"></div>
													<div>
														<img alt="Bone | The Creative Agency Template" sizes="calc((95vw - 20px) / 3)" srcset="/upload/2112.jpg" src="" style="width: auto; height: 100%; position: absolute; top: 0; left: 0%; right: 0; bottom: 0">
													</div>
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
						 <!-- <img src="/upload/121.PNG" style="    left: 300px; top: 514px; position: absolute;"> --> 
										<div class="font">
										 <p class="pp" style="position: absolute; top: 400px; left:90px; padding-top: 118px; font-weight: bold; font-size: 30px; line-height: 48px;"> 일상에 필요한 모든 것들을 연결해주는  <br> 당신과 가장 가까운 인공지능을 만나보세요. </p>
										 </div>
					</div></section>

							

						</div>

					</div>
				</div>
				
			</div>
      </div>

      
    
    
    
    
    
    
    
      