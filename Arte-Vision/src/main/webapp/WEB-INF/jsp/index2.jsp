<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="/Include/Header.jsp"%>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/resources/jquery.ui.touch-punch.js"></script>
  <script>
  $( function() {
    $( "#indexAll" ).droppable().draggable({
          cursor:"pointer", // 커서 모양
          revert : "valid",
          handle : "#indexTitle",
            containment:".content-wrapper"}).resizable({
               cursor:"pointer",
               minWidth : 220,
               minHeight : 43,
               containment:".content-wrapper "
            }).css({overflow:'hidden',
               position : 'relative',
               
               });
    $( "#listAll" ).droppable().draggable({
      cursor:"pointer", // 커서 모양
      revert : "valid",
      handle : "#listTitle",
        containment:".content-wrapper"}).resizable({
           cursor:"pointer",
           minWidth : 220,
           minHeight : 43,
           containment:".content-wrapper"
        }).css({overflow:'hidden',
           position : 'relative'
           });
    $( "#fileAll" ).droppable().draggable({
      cursor:"pointer", // 커서 모양3
      revert : "valid",
      handle : "#fileTitle",
        containment:".content-wrapper"}).resizable({
           cursor:"pointer",
           minWidth : 220,
           minHeight : 43,
           containment:".content-wrapper"
        }).css({overflow:'hidden',
           position : 'relative'
           });
    $( "#infoAll" ).droppable().draggable({
      cursor:"pointer", // 커서 모양
      revert : "valid",
      handle : "#infoTitle",
        containment:".content-wrapper"}).resizable({
           cursor:"pointer",
           minWidth : 220,
           minHeight : 43,
           containment:".content-wrapper"
        }).css({overflow:'hidden',
           position : 'relative'
           });
    $( "#propertiesAll" ).droppable().draggable({
      cursor:"pointer", // 커서 모양
      revert : "valid",
      handle : "#propertiesTitle",
        containment:".content-wrapper"}).resizable({
           cursor:"pointer",
           minWidth : 220,
           minHeight : 43,
           containment:".content-wrapper"
        }).css({overflow:'hidden',
           position : 'relative'
           });
    $( "#mulistAll" ).droppable().draggable({
      cursor:"pointer", // 커서 모양
      revert : "valid",
      handle : "#mulistTitle",
        containment:".content-wrapper"}).resizable({
           cursor:"pointer",
           minWidth : 220,
           minHeight : 43,
           containment:".content-wrapper"
        }).css({overflow:'hidden',
           position : 'relative'
           });
    
  } );
  </script>
<style>
form {
   display: inline;
}
.content-wrapper{
   position : relative;
}
#draggLocation{
   align-content: center;
}
/* 로딩*/

   #loading {

      height: 100%;

      left: 0px;

      position: fixed;

      _position:absolute; 

      top: 0px;

      width: 100%;

      filter:alpha(opacity=50);

      -moz-opacity:0.5;

      opacity : 0.5;

   }

   

   .loading {

      background-color: white;

      z-index: 199;

   }

   

   #loading_img{

      position:absolute; 

      top:60%;

      left:60%;

      height:35px;

      margin-top:-75px;   

      margin-left:-75px;   

      z-index: 999;

   }

</style>

<head>
<meta charset="utf-8">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0">
<meta name="fragment" content="!">
<title>All the Templates You Can Download</title>
<script type="application/ld+json">{"@context":"http://schema.org","@type":"WebSite","name":"Envato Elements","url":"https://elements.envato.com"}</script>
<style>
svg {
	height: 1em;
}
</style>
<style>
.UnsupportedBrowserBanner_banner {
	display: none;
	position: fixed;
	z-index: 10000;
	width: 100%;
	padding: 10px 30px;
	color: white;
	background: black;
	bottom: 0;
	text-align: center;
}

@media ( min-width : 1000px) {
	.UnsupportedBrowserBanner_banner {
		position: relative;
	}
}

.mod_no-supports .UnsupportedBrowserBanner_banner {
	display: block;
}


</style>
<link rel="stylesheet"
	href="https://elements-assets.envato.com/apps/storefront/storefront-db95bd2bd5c779641476.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:200,600,600italic,700,900%7COpen+Sans:300,400,600,700,700italic,400italic"
	media="all">
<script nonce="6b963b1d-022f-4196-bc33-9286863b988d">
    (function(i, s, o, g, r, a, m) {i["GoogleAnalyticsObject"] = r; i[r] = i[r] || function() {
      (i[r].q = i[r].q || []).push(arguments)}, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, "script", "//www.google-analytics.com/analytics.js", "ga")</script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/943617023/?random=1512987344619&amp;cv=8&amp;fst=1512987344619&amp;num=1&amp;guid=ON&amp;eid=376635470%2C659238991&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=1&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=Gbe&amp;frm=0&amp;url=https%3A%2F%2Felements.envato.com%2F%3Firgwc%3D1%26clickid%3DyvW1Vh2GBVtMwuvSmyWiqwJVUkmThqWt5UJj1w0%26iradid%3D377365%26utm_campaign%3Delements_af_363395%26iradtype%3DBANNER%26irmptype%3Dmediapartner%26utm_medium%3Daffiliate%26utm_source%3Dimpact_radius%26mp%3Dtommyngo&amp;tiba=All%20the%20Templates%20You%20Can%20Download&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://www.googleadservices.com/pagead/conversion/853740815/?random=1512987344655&amp;cv=8&amp;fst=1512987344655&amp;num=1&amp;value=0&amp;label=QSAgCM3p6nAQj5qMlwM&amp;guid=ON&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=1&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=Gbe&amp;frm=0&amp;url=https%3A%2F%2Felements.envato.com%2F%3Firgwc%3D1%26clickid%3DyvW1Vh2GBVtMwuvSmyWiqwJVUkmThqWt5UJj1w0%26iradid%3D377365%26utm_campaign%3Delements_af_363395%26iradtype%3DBANNER%26irmptype%3Dmediapartner%26utm_medium%3Daffiliate%26utm_source%3Dimpact_radius%26mp%3Dtommyngo&amp;tiba=All%20the%20Templates%20You%20Can%20Download&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta property="og:site_name" content="Envato Elements" data-rdm="">
<meta property="og:type" content="website" data-rdm="">
<meta property="og:image"
	content="http://elements-assets.envato.com/static/og-default.jpg"
	data-rdm="">
<meta property="og:image:url"
	content="http://elements-assets.envato.com/static/og-default.jpg"
	data-rdm="">
<meta property="og:image:secure_url"
	content="http://elements-assets.envato.com/static/og-default.jpg"
	data-rdm="">
<meta property="og:image:type" content="image/jpg" data-rdm="">
<meta property="og:image:width" content="1200" data-rdm="">
<meta property="og:image:height" content="630" data-rdm="">
<meta property="og:title" content="All the Templates You Can Download"
	data-rdm="">
<meta property="og:description"
	content="Download unlimited templates for graphics and web for $29 per month with Envato Elements. All templates designed by top independent designers!"
	data-rdm="">
<meta name="description"
	content="Download unlimited templates for graphics and web for $29 per month with Envato Elements. All templates designed by top independent designers!"
	data-rdm="">
</head>
<body>

   <section>
   
   <div id = "draggLocation">
   		 <c:if test="${ loginVO.id ne null && loginVO.type eq 'A' }">
         <div class="box-info ui-widget-content" id="SignAll">

            <div class="box-header with-border" id = "SignTitle" style = "background: rgb(173, 173, 173);">
               <h3 class="box-title"  style="color: rgba(255, 255, 255, 0.9);">회원 관리</h3>

               <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" id="SignHide"
                     data-widget="collapse">
                     <i id = "SignButton" class="fa fa-minus" style="color: rgb(255, 255, 255);"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" id="SignRemove"
                     data-widget="remove">
                     <i class="fa fa-times" style="color: rgb(255, 255, 255);"></i>
                  </button>
               </div>
            </div>
            <div class="box-body" id="SignBody">
               <div class="Sign123"></div>
            </div>
         </div>
    	 </c:if>
   
   
         <div class="box-info ui-widget-content ui-widget-content" id="fileAll">

            <div class="box-header with-border" id="fileTitle"  style = "background: rgb(173, 173, 173);">
               <h3 class="box-title" style="color: rgba(255, 255, 255, 0.9);">이미지 업로드</h3>

               <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" id="fileHide"
                     data-widget="collapse">
                     <i id = "fileButton" class="fa fa-minus" style="color: rgb(255, 255, 255);"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" id="fileRemove"
                     data-widget="remove">
                     <i class="fa fa-times" style="color: rgb(255, 255, 255);"></i>
                  </button>
               </div>
            </div>
            <div class="box-body" id="fileBody">
               <div class="file"></div>
            </div>
         </div>
         <jsp:include page="/WEB-INF/jsp/board/properties.jsp">
            <jsp:param name="token" value="<%=token%>" />
         </jsp:include>
      
         <div class="box-info ui-widget-content" id="listAll">

            <div class="box-header with-border" id = "listTitle" style = "background: rgb(173, 173, 173);">
            <c:if test="${ loginVO.id ne null && loginVO.type eq 'A' }">
               <h3 class="box-title" style="color: rgba(255, 255, 255, 0.9);">게시판 관리</h3>
            </c:if>
            <c:if test="${ loginVO.id ne null && loginVO.type eq 'U' }">
               <h3 class="box-title" style="color: rgba(255, 255, 255, 0.9);">후기 게시판</h3>
			</c:if>
               <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" id="listHide"
                     data-widget="collapse">
                     <i id = "listButton" class="fa fa-minus" style="color: rgb(255, 255, 255);"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" id="listRemove"
                     data-widget="remove">
                     <i class="fa fa-times" style="color: rgb(255, 255, 255);"></i>
                  </button>
               </div>
            </div>            
            <div class="box-body" id="listBody">
               <div class="detail"></div>
               <div class="searchC"></div>
               <div class="list"></div>
            </div>
         </div>
        <div class="box-info ui-widget-content" id="mulistAll"
				style="width: auto;">

				<div class="box-header with-border" id="mulistTitle"
					style="background: rgb(173, 173, 173);">
					<h3 class="box-title" style="color: rgba(255, 255, 255, 0.9);">전국
						미술관 링크</h3>

					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" id="mulistHide"
							data-widget="collapse">
							<i id="mulistButton" class="fa fa-minus"
								style="color: rgb(255, 255, 255);"></i>
						</button>
						<button type="button" class="btn btn-box-tool" id="mulistRemove"
							data-widget="remove">
							<i class="fa fa-times" style="color: rgb(255, 255, 255);"></i>
						</button>
					</div>
				</div>

				<div class="box-body" id="mulistBody">
					<div class="mulist1234"></div>
				</div>
			</div>
      
       
         <div class="box-info ui-widget-content" id="infoAll">

            <div class="box-header with-border" id = "infoTitle" style = "background: rgb(173, 173, 173);">
               <h3 class="box-title"  style="color: rgba(255, 255, 255, 0.9);">전시 정보 조회</h3>

               <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" id="infoHide"
                     data-widget="collapse">
                     <i id = "infoButton" class="fa fa-minus" style="color: rgb(255, 255, 255);"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" id="infoRemove"
                     data-widget="remove">
                     <i class="fa fa-times" style="color: rgb(255, 255, 255);"></i>
                  </button>
               </div>
            </div>
            <div class="box-body" id="infoBody">
               <div class="info123"></div>
            </div>
         </div>


       
      
      
   </div>
   </section>
         
         </div>
   </div>
  <footer class="main-footer" style="padding: 0px;">
   
   
<div class="back"  style="float:right; width: 89px;" >
<a href="#scroll-up">
  <button class="btn btn-default btn-lg" style="float:right; height:56px; font-size: 15px;">
     Top
        <!-- <div onclick="location.href='localhost:8000/index'">홈으로</div> -->
    </button>
    </a>
</div>
      <div style="padding-top : 15px; padding-bottom: 15px;">
      <strong><font style="vertical-align: inherit;"><font
            style="vertical-align: inherit;">Copyright © 2017-2018 </font></font><a 
         href="http://arte-vision.ml"><font style="vertical-align: inherit;"><font
               style="vertical-align: inherit;">Arte-Vision</font></font></a><font
         style="vertical-align: inherit;"><font
            style="vertical-align: inherit;"> . </font></font></strong><font
         style="vertical-align: inherit;"></font>
      </div>
   </footer> 
</body>
<link rel="stylesheet" href="/resources/listPage.css" />
<script>
   $(document).ready(function() {
      
      //AJAX 통신 시작
      $( document ).ajaxStart(function() {
          //마우스 커서를 로딩 중 커서로 변경
          $('html').css("cursor", "wait"); 
      });
      //AJAX 통신 종료
      $( document ).ajaxStop(function() {
          //마우스 커서를 원래대로 돌린다
          $('html').css("cursor", "auto"); 
      });
      
      
      $('#SignAll').css('display', 'none');
      $('#fileAll').css('display', 'none');
      $("#listAll").css('display', 'none');
      $("#infoAll").css('display', 'none');
      $("#mulistAll").css('display', 'none');
      $('#propertiesAll').css('display', 'none');
      
      $('#indexShow').click(function(e) {
         location.href="/";
      });
      $('#listHide').click(function(e) {
         $('#listBody').toggle(500);
         var src = ($('#listButton').attr('class') === 'fa fa-minus') 
            ? 'fa fa-plus'
            : 'fa fa-minus'; 
             $('#listButton').attr('class', src);
             $('#listAll').css('height','auto');

      });
      $('#listRemove').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         
         //$listAll.hide(1000);
         $("#listAll").removeClass('dkdk-in');
         $("#listAll").addClass('dkdk-out');
         $("#listAll").one('webkitAnimationEnd', function(e) {
            $("#listAll").css('display', 'none');
            $("#listAll").removeClass('dkdk-out');

         });

      });
      

      $('#listShow').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         list(1);
         $("#listAll").css('display', 'block');
         $('#listAll').removeClass('dkdk-out');
         $("#listAll").addClass("dkdk-in");
         $(".detail").html("");
         $('#listBody').show();

      });
      
      $('#propertiesRemove').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         //$listAll.hide(1000);
         $("#propertiesAll").removeClass('dkdk-in');
         $("#propertiesAll").addClass('dkdk-out');
         $("#propertiesAll").one('webkitAnimationEnd', function(e) {
            $("#propertiesAll").css('display', 'none');

         });
      });
      $('#propertiesShow').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         $("#propertiesAll").css('display', 'block');
         $("#propertiesAll").removeClass('dkdk-out');
         $("#propertiesAll").addClass("dkdk-in");
         $('#propertiesBody').show();
      });
      $('#fileHide').click(function() {
         $('#fileBody').toggle(500);
         var src = ($('#fileButton').attr('class') === 'fa fa-minus') 
            ? 'fa fa-plus'
            : 'fa fa-minus'; 
             $('#fileButton').attr('class', src);
             $('#fileAll').css('height','auto');
      });
      $('#fileRemove').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         //$listAll.hide(1000);
        
         $("#fileAll").removeClass('dkdk-in');
         $("#fileAll").addClass('dkdk-out');
         $("#fileAll").one('webkitAnimationEnd', function(e) {
            $("#fileAll").css('display', 'none');
         });
      });
      $('#fileShow').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         fileUpload();
         $("#fileAll").css('display', 'block');
         $("#fileAll").removeClass('dkdk-out');
         $("#fileAll").addClass("dkdk-in");
         $('#fileBody').show();
         
      });
      $('#mulistHide').click(function(e) {
         $('#mulistBody').toggle(500);
         var src = ($('#mulistButton').attr('class')=== 'fa fa-minus')
       ? 'fa fa-plus'
       : 'fa fa-minus'; 
      $('#mulistButton').attr('class',src);
      $('#mulistAll').css('height','auto');

      });
      $('#mulistRemove').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         
         //$listAll.hide(1000);
         $("#mulistAll").removeClass('dkdk-in');
         $("#mulistAll").addClass('dkdk-out');
         $("#mulistAll").one('webkitAnimationEnd', function(e) {
            $("#mulistAll").css('display', 'none');
            $("#mulistAll").removeClass('dkdk-out');
         });
      });
      
      $('#mulistShow').click(function(e) {
         e.stopPropagation();
         e.preventDefault();
         mulist();
         $("#mulistAll").css('display', 'block');
         $('#mulistAll').removeClass('dkdk-out');
         $("#mulistAll").addClass("dkdk-in");
         $('#mulistBody').show();

      });
      
      
       $('#infoHide').click(function(e) {
            $('#infoBody').toggle(500);
            var src = ($('#infoButton').attr('class')=== 'fa fa-minus')
          ? 'fa fa-plus'
          : 'fa fa-minus'; 
         $('#infoButton').attr('class',src);
         $('#infoAll').css('height','auto');

         });
         $('#infoRemove').click(function(e) {
            e.stopPropagation();
            e.preventDefault();
            
            //$listAll.hide(1000);
            $("#infoAll").removeClass('dkdk-in');
            $("#infoAll").addClass('dkdk-out');
            $("#infoAll").one('webkitAnimationEnd', function(e) {
               $("#infoAll").css('display', 'none');
               $("#infoAll").removeClass('dkdk-out');
            });
         });
         
         $('#infoShow').click(function(e) {
            e.stopPropagation();
            e.preventDefault();
            infosel();
            $("#infoAll").css('display', 'block');
            $('#infoAll').removeClass('dkdk-out');
            $("#infoAll").addClass("dkdk-in");
            $('#infoBody').show();

         });
         
       $('#SignHide').click(function(e) {
            $('#SignBody').toggle(500);
            var src = ($('#SignButton').attr('class')=== 'fa fa-minus')
          ? 'fa fa-plus'
          : 'fa fa-minus'; 
         $('#SignButton').attr('class',src);
         $('#SignAll').css('height','auto');

         });
         $('#SignRemove').click(function(e) {
            e.stopPropagation();
            e.preventDefault();
            
            //$listAll.hide(1000);
            $("#SignAll").removeClass('dkdk-in');
            $("#SignAll").addClass('dkdk-out');
            $("#SignAll").one('webkitAnimationEnd', function(e) {
               $("#SignAll").css('display', 'none');
               $("#SignAll").removeClass('dkdk-out');
            });
         });
         
         $('#SignShow').click(function(e) {
            e.stopPropagation();
            e.preventDefault();
            SignGogo();
            $("#SignAll").css('display', 'block');
            $('#SignAll').removeClass('dkdk-out');
            $("#SignAll").addClass("dkdk-in");
            $('#SignBody').show();

         });
         
         
         
   });
</script>
</html>