<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/mamba/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="/mamba/css/style.css" rel="stylesheet" media="screen">
<script src="/mamba/js/modernizr.custom.js"></script>
<link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css">

<link type="text/css" rel="stylesheet" charset="UTF-8" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

      <script type="text/javascript" src="/upload/jquery.maphilight.min.js"></script>
      
     
    
<style>
  
.info123 {
   text-align: center;
   align-content: center;
   align-items: center;
   align-self: center;
   height:810px;
}


area :hover {
    -webkit-transform: scale(1.5,1.5);
    -moz-transform: scale(1.5,1.5);
    -o-transform: scale(1.5,1.5);
    -ms-transform: scale(1.5,1.5);
    transform: scale(1.5,1.5);
}



#mapusa.gif .hh:hover {
   background-image:url(/upload/logo10.png);
   -webkit-transform: scale(1.5,1.5);
    -moz-transform: scale(1.5,1.5);
    -o-transform: scale(1.5,1.5);
    -ms-transform: scale(1.5,1.5);
    transform: scale(1.5,1.5);
}



.map{
   margin-left:auto;
    margin-right:auto;

}
body{
	font-size : 16px;
	line-height : 26px;

}
</style>
<script>
$(function() {
    $('.map').maphilight({
        fillColor: '008800'
    });
 
});

</script>


</head>
<body>
<div style="left:530px;">
<h2>지역선택</h2>   
</div>



<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3" data-wow-delay="1.5s" style="width: -webkit-fill-available; margin:auto;">
               <div class="box-team wow bounceInDown animated" style="visibility: visible; -webkit-animation-delay: 0.8s; -moz-animation-delay: 0.8s; animation-delay: 0.8s;margin:auto;">
<div id="mapusa" align="center" class="gg" style="position:relative;  width:auto; height:auto; top:50px; margin-left:0; ">
<IMG SRC="/upload/imgbranchmap.gif" style="width:auto;height:auto;" class="map" id="mapname" USEMAP="#mapusa.gif" BORDER=0>
      <MAP NAME="mapusa.gif">
         <area shape="poly" title="서울" id="squidhead" class="hh"
            onclick="info('서울')"
            coords="121,117,113,128,102,124,94,116,106,102,114,102,119,109">
         <area shape="poly" title="인천"
            onclick="info('인천')"
            coords="68,92,82,97,90,111,90,121,88,129,75,122,65,128,55,112,58,98,68,94">
         <area shape="poly" title="경기도"
            onclick="info('경기')"
            coords="96,127,84,146,92,162,120,165,137,162,156,147,159,120,151,106,146,96,143,76,127,69,115,62,100,69,94,84,84,95,94,107,104,103,114,99,122,104,124,114,124,124,114,131,105,134,96,127">
         <area shape="poly" title="강원도"
            onclick="info('강원')"
            coords="124,61,132,67,148,76,148,85,151,95,158,109,162,124,162,136,160,148,171,143,185,142,194,151,215,157,242,151,253,143,257,134,245,115,229,93,218,72,204,51,198,43,186,53,170,59,158,60,138,58,128,58,123,60">
         <area shape="poly" title="충청남도"
            onclick="info('충남')"
            coords="73,157,92,166,110,169,125,169,135,176,129,184,131,194,133,202,120,204,119,220,133,227,144,227,146,236,136,243,115,234,93,237,77,236,75,214,66,207,62,194,57,186,48,186,59,164,72,157">
         <area shape="poly" title="충청북도"
            onclick="info('충북')"
            coords="140,166,158,152,179,149,191,152,202,156,195,164,187,170,178,176,164,188,163,205,163,216,170,226,162,240,150,239,151,219,145,216,144,203,137,197,136,186,138,171,139,165">
         <area shape="poly" title="대전"
            onclick="info('대전')"
            coords="136,205,143,218,139,223,126,220,124,211,126,206,137,206">
         <area shape="poly" title="전라북도"
            onclick="info('전북')"
            coords="80,241,98,241,113,240,125,242,135,249,148,244,159,246,153,258,147,275,148,295,123,296,105,287,92,284,86,293,72,294,68,284,81,266,84,250,81,240">
         <area shape="poly" title="전라남도"
            onclick="info('전남')"
            coords="69,295,82,297,83,303,80,312,89,318,109,315,110,305,103,298,94,296,90,295,96,288,111,293,124,300,141,298,148,304,156,319,160,337,157,347,141,354,143,362,139,368,127,362,120,366,113,375,84,375,68,367,59,367,48,372,50,383,33,388,30,376,46,360,42,351,35,343,41,330,48,321,43,313,48,308,65,310,63,301,69,297">
         <area shape="poly" title="광주"
            onclick="info('광주')"
            coords="89,298,101,302,107,308,101,314,89,316,86,310,87,298">
         <area shape="poly" title="경상북도"
            onclick="info('경북')"
            coords="204,161,221,161,248,158,257,144,264,160,267,179,263,208,267,232,278,237,272,260,265,267,244,266,234,270,219,272,213,268,226,250,222,237,208,237,199,244,196,256,194,267,188,272,176,254,164,247,164,239,178,227,170,217,165,205,167,192,184,178,204,162">
         <area shape="poly" title="대구"
            onclick="info('대구')"
            coords="198,267,202,251,210,242,217,242,223,248,218,260,214,266,199,267">
         <area shape="poly" title="경상남도"
            onclick="info('경남')"
            coords="167,251,178,264,192,275,203,271,214,270,223,279,237,271,241,282,248,290,231,296,220,299,221,309,206,313,200,325,215,329,223,321,222,333,213,345,195,333,181,336,174,343,162,344,157,304,152,295,152,277,155,257,169,251">
         <area shape="poly" title="울산"
            onclick="info('울산')"
            coords="242,272,252,268,270,271,274,280,264,295,254,294,250,286,244,271">
         <area shape="poly" title="부산"
            onclick="info('부산')"
            coords="231,301,247,295,256,297,256,308,245,315,230,318,222,318,210,317,231,301">
         <area shape="poly" title="제주도"
            onclick="info('제주')"
            coords="63,410,77,403,98,402,106,410,93,422,75,427,64,431,51,431,45,417,64,408">
      </MAP>
   </div>
   </div></div>












</body>
<script>



</script>
</html>