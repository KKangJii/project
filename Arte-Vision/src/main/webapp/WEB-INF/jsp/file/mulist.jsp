<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<!DOCTYPE html>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!-- <link href="../webapp/assets/css/bootstrap.css" rel="stylesheet" media="screen"> -->
<link href="/mamba/css/hihi.css" rel="stylesheet" media="screen">

<link href="/mamba/css/style.css" rel="stylesheet" media="screen">
<!-- <link href="/mamba/color/default.css" rel="stylesheet" media="screen"> -->
<script src="/mamba/js/modernizr.custom.js"></script>
<link type="text/css" rel="stylesheet" charset="UTF-8"
	href="https://translate.googleapis.com/translate_static/css/translateelement.css">



<script>
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});

	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideToggle("slow");
			$("#panel1").slideUp();
			$("#panel2").slideUp();
			$("#panel3").slideUp();
			$("#panel4").slideUp();
			$("#panel5").slideUp();
			$("#panel6").slideUp();
			$(".logoShow").slideUp();
		});
		$("#flip1").click(function() {
			$("#panel1").slideToggle("slow");
			$("#panel").slideUp();
			$("#panel2").slideUp();
			$("#panel3").slideUp();
			$("#panel4").slideUp();
			$("#panel5").slideUp();
			$("#panel6").slideUp();
			$(".logoShow").slideUp();
		});
		$("#flip2").click(function() {
			$("#panel2").slideToggle("slow");
			$("#panel").slideUp();
			$("#panel1").slideUp();
			$("#panel3").slideUp();
			$("#panel4").slideUp();
			$("#panel5").slideUp();
			$("#panel6").slideUp();
			$(".logoShow").slideUp();
		});
		$("#flip3").click(function() {
			$("#panel3").slideToggle("slow");
			$("#panel1").slideUp();
			$("#panel2").slideUp();
			$("#panel").slideUp();
			$("#panel4").slideUp();
			$("#panel5").slideUp();
			$("#panel6").slideUp();
			$(".logoShow").slideUp();
		});
		$("#flip4").click(function() {
			$("#panel4").slideToggle("slow");
			$("#panel1").slideUp();
			$("#panel2").slideUp();
			$("#panel3").slideUp();
			$("#panel").slideUp();
			$("#panel5").slideUp();
			$("#panel6").slideUp();
			$(".logoShow").slideUp();
		});
		$("#flip5").click(function() {
			$("#panel5").slideToggle("slow");
			$("#panel1").slideUp();
			$("#panel2").slideUp();
			$("#panel3").slideUp();
			$("#panel4").slideUp();
			$("#panel").slideUp();
			$("#panel6").slideUp();
			$(".logoShow").slideUp();
		});
		$("#flip6").click(function() {
			$("#panel6").slideToggle("slow");
			$("#panel1").slideUp();
			$("#panel2").slideUp();
			$("#panel3").slideUp();
			$("#panel4").slideUp();
			$("#panel5").slideUp();
			$("#panel").slideUp();
			$(".logoShow").slideUp();
		});
	});
</script>
<script>
	function locationShow() {
		$(".logoShow").slideDown();
		$("#panel").slideUp();
		$("#panel1").slideUp();
		$("#panel2").slideUp();
		$("#panel3").slideUp();
		$("#panel4").slideUp();
		$("#panel5").slideUp();
		$("#panel6").slideUp();
	}
</script>


<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<style type="text/css">

/* table{
width:1600px;
} */
/* table td{
width:262px;
height:192px;

} */
.uk-article {
	width: 1000px;;
}

img.abc {
	width: 150px;
	height: 150px;
	align-content: center;
	align-items: center;
	align-self: center;
	margin-left: auto;
	margin-right: auto;
	display: block;
}

figcaption h3 {
	color: white;
}

snip1384 img {
	margin-bottom: 0px;
}

.box-team img {
	margin-bottom: 0px;
}
/* img {

width:150px;
height:150px;
align-content: center;
align-items: center;
align-self: center;
margin-left: auto; 
margin-right: auto; 
display: block;





}
 */
.col-lg-3 {
	width: auto;
}

.container {
	text-align: center;
}

.container img {
	/* width:150px;
	height:150px; */
	display: inline-block;
	color: #03c;
	-webkit-transition: 0.5s;
	-moz-transition: 0.5s;
	-o-transition: 0.5s;
	-ms-transition: 0.5s;
	transition: 0.5s;
}

.container img:hover {
	-webkit-transform: scale(1.5, 1.5);
	-moz-transform: scale(1.5, 1.5);
	-o-transform: scale(1.5, 1.5);
	-ms-transform: scale(1.5, 1.5);
	transform: scale(1.5, 1.5);
}

figure.snip1384 {
	background-color: white;
	padding: 23px;
	margin: 23px;
	color: #dd4b39;
	font: bold;
}

#panel, #panel1, #panel2, #panel3, #panel4, #panel5, #panel6 {
	padding: 50px;
	display: none;
	border: solid 0px;
}

#panel, #panel1, #panel2, #panel3, #panel4, #panel5, #panel6, #flip,
	#flip1, #flip2, #flip3, #flip4, #flip5, #flip6 {
	padding: 5px;
	text-align: center;
	background-color: white;
	border: solid 0px #c3c3c3;
	float: left;
}

#flip, #flip1, #flip2, #flip3, #flip4, #flip5, #flip6 {
	height: 194px;
	width: 200px;
	float: left;
}

.box box-info {
	width: 50px;
	font-size: 15px;
}

.btn btn-block btn-success btn-lg {
	float: left;
	color: #310707;
	background-color: #efd59e;
	border-color: #d0caca;
	width: 260px;
	height: 166px;
}

@import url(http://fonts.googleapis.com/earlyaccess/kopubbatang.css);

body{
	font-size : 16px;
	line-height : 26px;

}


</style>
<section>
	<section id="about" class="home-section bg-white">
		<div class="container" style="width: auto;">
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<div class="section-heading"></div>
				</div>
			</div>
			<div class="row">









				<div id="flip" class="logoShow">
					<div class="btn btn-block btn-success btn-lg"
						style="float: right; color: #310707; background-color: #ececec; border-color: #d0caca;">
						<img src="/upload/Seal_of_Seoul.svg.png"> <br> <br>
						<a href="#"><h7>서울</h7> </a>
					</div>
				</div>

				<div id="flip1" class="logoShow">
					<div class="btn btn-block btn-success btn-lg"
						style="float: right; color: #310707; background-color: #ececec; border-color: #d0caca;">
						<img src="/upload/131px-Symbol_of_Gyeonggi.svg.png"
							style="margin-top: 6.4px;"> <br> <a href="#"><h7>경기</h7>
						</a>
					</div>
				</div>
				<div id="flip2" class="logoShow">
					<div class="btn btn-block btn-success btn-lg"
						style="float: right; color: #310707; background-color: #ececec; border-color: #d0caca;">
						<img src="/upload/Seal_of_Gangwon.svg.png"> <br> <a
							href="#"><h7>강원도</h7> </a>
					</div>
				</div>
				<div id="flip3" class="logoShow">
					<div class="btn btn-block btn-success btn-lg"
						style="float: right; color: #310707; background-color: #ececec; border-color: #d0caca;">
						<img src="/upload/Seal_of_North_Chungcheong.svg.png"> <br>
						<a href="#"><h7>충청도</h7> </a>
					</div>
				</div>


				<div id="flip4" class="logoShow">
					<div class="btn btn-block btn-success"
						style="float: right; color: #310707; background-color: #ececec; border-color: #d0caca;">
						<img src="/upload/Seal_of_North_Gyeongsang.svg.png"> <br>
						<a href="#"><font size="4">경상도</font> </a>
					</div>
				</div>
				<div id="flip6" class="logoShow">
					<div class="btn btn-block btn-success btn-lg"
						style="float: right; color: #310707; background-color: #ececec; border-color: #d0caca;">
						<img src="/upload/145px-Symbol_of_Jeonbuk.svg.png"> <br>
						<a href="#"><h7>전라도</h7> </a>
					</div>
				</div>
				<div id="flip5" class="logoShow">
					<div class="btn btn-block btn-success btn-lg"
						style="float: right; color: #310707; background-color: #ececec; border-color: #d0caca;">
						<img src="/upload/Seal_of_Jeju.svg.png"> <br> <a
							href="#"><h7>제주도</h7> </a>
					</div>
				</div>






				<div id="panel">

					<div>
						<h2>서울지역 미술관 정보</h2>
						<button class="btn btn-warning pull-right"
							onclick="locationShow()">지역선택</button>
					</div>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo.gif" alt="sample92" />
								<figcaption>
									<h3>국립민속미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.mmca.go.kr/main.do"></a>
						</div>
					</div>
					</figure>

					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo2.PNG" alt="sample92" />
								<figcaption>
									<h3>국립현대미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.mmca.go.kr/main.do"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo3.png" alt="sample92" />
								<figcaption>
									<h3>국립중앙박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.mmca.go.kr/main.do"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo4.png" alt="sample92" />
								<figcaption>
									<h3>예술의전당</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.mmca.go.kr/main.do"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo5.png" alt="sample92" />
								<figcaption>
									<h3>서울시립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.mmca.go.kr/main.do"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo6.png" alt="sample92" />
								<figcaption>
									<h3>동대문디자인플라자</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.mmca.go.kr/main.do"></a>
						</div>
					</div>
					</figure>









					<!-- /////////////////////////////////////////////////////////////////////////////////////////// -->
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo7.png" alt="sample92" />
								<figcaption>
									<h3>문화역서울284</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="https://www.seoul284.org/"></a>
						</div>
					</div>
					</figure>




					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo8.png" alt="sample92" />
								<figcaption>
									<h3>세종문화회관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank"
									href="http://www.sejongpac.or.kr/main/main_real.asp"></a>
						</div>
					</div>
					</figure>








					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo9.png" alt="sample92" />
								<figcaption>
									<h3>삼성미술관리움</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://leeum.samsungfoundation.org"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo10.png" alt="sample92" />
								<figcaption>
									<h3>대림미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="https://www.daelimmuseum.org/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo11.png" alt="sample92" />
								<figcaption>
									<h3>서울미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.seoulmuseum.org/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo12.png" alt="sample92" />
								<figcaption>
									<h3>한글박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.hangeul.go.kr/main.do"></a>
						</div>
					</div>
					</figure>




					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo13.png" alt="sample92" />
								<figcaption>
									<h3>아라리오갤러리</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.arariogallery.com/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo14.png" alt="sample92" />
								<figcaption>
									<h3>국제갤러리</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="https://www.kukjegallery.com/"></a>
						</div>
					</div>
					</figure>





					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo15.png" alt="sample92" />
								<figcaption>
									<h3>학고재갤러리</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.hakgojae.com/"></a>
						</div>
					</div>
					</figure>







					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo16.png" alt="sample92" />
								<figcaption>
									<h3>사비나미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.savinamuseum.com/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo17.png" alt="sample92" />
								<figcaption>
									<h3>갤러리현대</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.galleryhyundai.com/"></a>
						</div>
					</div>
					</figure>





					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo18.png" alt="sample92" />
								<figcaption>
									<h3>우양미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.wooyangmuseum.org/html/"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo19.png" alt="sample92" />
								<figcaption>
									<h3>한미사진미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.photomuseum.or.kr"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo20.png" alt="sample92" />
								<figcaption>
									<h3>스페이스</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.spacek.co.kr/"></a>
						</div>
					</div>
					</figure>




					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo21.png" alt="sample92" />
								<figcaption>
									<h3>갤러리바톤</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://gallerybaton.com/"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo22.png" alt="sample92" />
								<figcaption>
									<h3>구슬모아당구장</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank"
									href="http://daelimmuseum.org/guseulmoa/index.do"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo23.png" alt="sample92" />
								<figcaption>
									<h3>일민미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://ilmin.org/kr/"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo24.png" alt="sample92" />
								<figcaption>
									<h3>토탈미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.totalmuseum.org/"></a>
						</div>
					</div>
					</figure>




				</div>









				<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
				<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
				<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
				<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->






				<div id="panel1">
					<div>
						<h2>경기지역 미술관 정보</h2>
						<button class="btn btn-warning pull-right"
							onclick="locationShow()">지역선택</button>
					</div>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo-1.png" alt="sample92" />
								<figcaption>
									<h3>백남준아트센터</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://njp.ggcf.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/tndnjs-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>수원시립아이파크미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://sima.suwon.go.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo-3.png" alt="sample92" />
								<figcaption>
									<h3>양주시립장욱진미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://changucchin.yangju.go.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo-4.png" alt="sample92" />
								<figcaption>
									<h3>단원미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.danwon.org/"></a>
						</div>
					</div>
					</figure>

					<!-- 												1줄째!!!!													 -->
					<!-- 												1줄째!!!!													 -->
					<!-- 												1줄째!!!!													 -->














					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo-5.png" alt="sample92" />
								<figcaption>
									<h3>양평군립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.ymuseum.org/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo-6.png" alt="sample92" />
								<figcaption>
									<h3>이천시립월전미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.iwoljeon.org/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo-7.png" alt="sample92" />
								<figcaption>
									<h3>블루메미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.bmoca.or.kr/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/logo-8.png" alt="sample92" />
								<figcaption>
									<h3>소다미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://museumsoda.org/"></a>
						</div>
					</div>
					</figure>

















					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/111-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>송암미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://songam.incheon.go.kr/index.do"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/222-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>경기문화재단</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.ggcf.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/333-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>경기도박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://musenet.ggcf.kr/"></a>
						</div>
					</div>
					</figure>

					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/444-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>경기도미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://gmoma.ggcf.kr/"></a>
						</div>
					</div>
					</figure>









					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/555-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>실학박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://silhak.ggcf.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/666-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>전곡선사박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://jgpm.ggcf.kr/"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/777-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>경기도어린이박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://gcm.ggcf.kr/"></a>
						</div>
					</div>
					</figure>



				</div>










				<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->










				<div id="panel2">
					<div>
						<h2>강원지역 미술관 정보</h2>
						<button class="btn btn-warning pull-right"
							onclick="locationShow()">지역선택</button>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/g1-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>국립춘천박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://chuncheon.museum.go.kr/html/kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/2-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>춘천문화예술회관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.cccf.or.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/3-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>상상마당갤러리</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="https://www.sangsangmadang.com/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/4-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>강릉시립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://gnmu.gn.go.kr/src/main.php"></a>
						</div>
					</div>
					</figure>






					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/5-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>하슬라아트월드뮤지엄</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.haslla.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/6-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>박수근미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.parksookeun.or.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/7-iloveimg-resized (1).png" alt="sample92" />
								<figcaption>
									<h3>이상원미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.lswmuseum.com/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/8-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>뮤지엄 산</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank"
									href="http://www.museumsan.org/newweb/index.jsp"></a>
						</div>
					</div>
					</figure>
				</div>







				<!-- ///////////////////////////////////////////////////////////////////////////////////// -->




				<div id="panel3" style="width: 1478px;">
					<div>
						<h2>충청지역 미술관 정보</h2>
						<button class="btn btn-warning pull-right"
							onclick="locationShow()">지역선택</button>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/9-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>대전시립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://dmma.daejeon.go.kr/"></a>
						</div>
					</div>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/10-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>대전이응노미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.leeungnomuseum.or.kr/"></a>
						</div>
					</div>

					</figure>
				</div>


























				<!-- /////////////////////////////////////////////////////////////////////// -->







				<div id="panel4">
					<div>
						<h2>경상지역 미술관 정보</h2>
						<button class="btn btn-warning pull-right"
							onclick="locationShow()">지역선택</button>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/부산시립미술관.png" alt="sample92" />
								<figcaption>
									<h3>부산시립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://art.busan.go.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/부산영화의 전당.png" alt="sample92" />
								<figcaption>
									<h3>부산영화의전당</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank"
									href="http://www.dureraum.org/bcc/main/main.do?rbsIdx=1"></a>
						</div>
					</div>
					</figure>




					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/고은사진미술관.png" alt="sample92" />
								<figcaption>
									<h3>고은사진미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://goeunmuseum.kr/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/한광미술관.png" alt="sample92" />
								<figcaption>
									<h3>한광미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.asiaart.co.kr/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/부산영화의 전당.png" alt="sample92" />
								<figcaption>
									<h3></h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank"
									href="http://www.dureraum.org/bcc/main/main.do?rbsIdx=1"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/포항시립미술관.png" alt="sample92" />
								<figcaption>
									<h3>포항시립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.poma.kr/"></a>
						</div>
					</div>
					</figure>

					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/대구시립미술관.png" alt="sample92" />
								<figcaption>
									<h3>대구시립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank"
									href="http://artmuseum.daegu.go.kr/main/index.html"></a>
						</div>
					</div>
					</figure>

					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/17-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>대구문화예술회관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://artcenter.daegu.go.kr/"></a>
						</div>
					</div>
					</figure>
				</div>





				<!-- ///////////////////////////////////////////////////////////////// -->


				<div id="panel5">
					<div>
						<h2>제주지역 미술관 정보</h2>
						<button class="btn btn-warning pull-right"
							onclick="locationShow()">지역선택</button>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/18-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>제주도립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://jmoa.jeju.go.kr/kor/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/19-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>제주현대미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.jejumuseum.go.kr/kor/"></a>
						</div>
					</div>
					</figure>




					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/고은사진미술관.png" alt="sample92" />
								<figcaption>
									<h3>고은사진미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://goeunmuseum.kr/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/20-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>본테박물관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.bontemuseum.com/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/21-iloveimg-resized (1).png" alt="sample92" />
								<figcaption>
									<h3>이중섭미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://culture.seogwipo.go.kr/jslee/"></a>
						</div>
					</div>
					</figure>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/22-iloveimg-resized (2).png" alt="sample92" />
								<figcaption>
									<h3>기당미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://culture.seogwipo.go.kr/gidang/"></a>
						</div>
					</div>
					</figure>
				</div>
















				<div id="panel6">
					<div>
						<h2>전라지역 미술관 정보</h2>
						<button class="btn btn-warning pull-right"
							onclick="locationShow()">지역선택</button>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/1111-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>이당미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://yidang.org/"></a>
						</div>
					</div>

					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/2222-iloveimg-resized.jpg" alt="sample92" />
								<figcaption>
									<h3>W 미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://blog.naver.com/museumw"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/3333-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>예깊미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.yegip.co.kr/"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/4444-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>익산예술의전당</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://arts.iksan.go.kr/index.iksan"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/5555-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>수지미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://sujimuseum.com/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/6666-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>옥천골미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://artsunchang.com/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/7777-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>정읍시립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://jma.jeongeup.go.kr/"></a>
						</div>
					</div>
					</figure>


					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/8888-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>삼례문화예술촌</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.srartvil.kr/index.9is"></a>
						</div>
					</div>
					</figure>



					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/9999-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>전북도립미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.jma.go.kr/"></a>
						</div>
					</div>
					</figure>

					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"
						data-wow-delay="1.3s">
						<div class="box-team wow bounceInDown animated"
							style="visibility: visible; -webkit-animation-delay: 0.9s; -moz-animation-delay: 0.9s; animation-delay: 0.9s;">
							<figure class="snip1384">
								<img src="/upload/1010-iloveimg-resized.png" alt="sample92" />
								<figcaption>
									<h3>장수미술관</h3>
									<p>이동하기</p>
									<i class="ion-ios-arrow-right"></i>
								</figcaption>
								<a target="_blank" href="http://www.jsmuseum.kr/"></a>
						</div>
					</div>
					</figure>

				</div>
	</section>
</section>



