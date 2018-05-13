<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ page import="java.util.Random"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<link href="/mamba/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="/mamba/css/hihi2.css" rel="stylesheet" media="screen">
  
<link href="/mamba/css/style.css" rel="stylesheet" media="screen">
<!-- <link href="/mamba/color/default.css" rel="stylesheet" media="screen"> -->
<script src="/mamba/js/modernizr.custom.js"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>


<script>

$(".hover").mouseleave(
        function () {
          $(this).removeClass("hover");
        }
      );




</script>
<style type="text/css">


.snip13841{
    height: 300px;
        float: left;
    height: 289px;
    width: 265px;
    
}




/* table{
width:1600px;
} */
/* table td{
width:262px;
height:192px;

} */

img.abc {

width:150px;
height:150px;
align-content: center;
align-items: center;
align-self: center;
margin-left: auto; 
margin-right: auto; 
display: block;
}


figcaption h3{
color:white;
}


snip13841 .img{

height:300px;
width:280px;

}

.box-team img{
margin-bottom:0px;

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

.container{

text-align: center;


}



.container img{

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
    -webkit-transform: scale(1.5,1.5);
    -moz-transform: scale(1.5,1.5);
    -o-transform: scale(1.5,1.5);
    -ms-transform: scale(1.5,1.5);
    transform: scale(1.5,1.5);
}


figure.snip13841{

background-color:white;
padding:23px;
margin:23px;
color:#dd4b39;
font:  bold;
}






.box box-info{
width:50px;
font-size: 15px;

}



/* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */






.back{
width:89px;
text-align: center;
float: right;
}



.new img{
height:150px;
width:150ox;
}



.img{
width:270px;
height:290px;
}



figcaption h3 {
    color: white;
    margin-top: 83px;
    }

</style>


<link
   href="/resources/style.css"
   rel="stylesheet">    
<style>
body{
	font-size : 16px;
	line-height : 26px;

}
</style> 
<form name="myForm" action="/" method="POST">
		 </form>
   <div class="back">
   
   
    <div  class="btn-group-vertical">
       
        <!-- <div onclick="location.href='localhost:8000/index'">홈으로</div> -->
        
    </div>
</div>
   <div class="back">
    <div onclick="infosel()" class="btn-group-vertical">
    <button type="button" class="btn btn-warning" onclick="infosel()"><h7 style="color:white;" >지역선택</h7></button>
        <!-- <div onclick="location.href='localhost:8000/index'">홈으로</div> -->
        
    </div>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
   

   <!-- <h3 class="box-title">전시정보 조회</h3> -->
      <c:forEach var="list" items="${ list5 }">

               <div class="python" style="margin-left:auto; margin-right:auto;">

                      ${list}
</div>
   </c:forEach>





<!-- <button type="button" class="btn btn-block btn-success btn-lg">Success</button> -->
   
   












<!-- 
<div class="hihi">
<button class="btn btn-block btn-success btn-lg" name="hihi" onclick="infosel()">지역선택</button>
</div> -->
            
            <!-- &nbsp;&nbsp;<button><a href="http://localhost:8000/index">홈으로</a></button> -->



      
      <c:forEach var="list6" items="${ list6 }">
         <%-- <h2>${list6} 지역 전시정보</h2> --%>
      </c:forEach>


      <c:set var="name" value="${ list5 }" />

   <c:choose>

      <c:when test="${fn:contains(name,'해당')}">
      <br><br><br><br>
      <div style="width:100px; height:100px; text-align: center;">
      
         <h2 style="width:1299px;">${list6}지역엔 미술전시가 없습니다!</h2>
         <br><br><br><br><br>
         </div>
         <br><br><br><br>
      </c:when>



      <c:otherwise>

         <c:set var="i" value="0" />
         <c:set var="j" value="4" />

         <div class="table-responsive">
            <!--       <table border="1" class="tbl"> -->
            <!-- <script id="grid-template-1" type="text/template"> -->
<%-- 
            <table class="blueone">



               <thead>
                  <tr>
                     <td colspan="5"><h2>${list6}지역전시정보</h2></td>
                  </tr>
                  <tr>
                     <th></th>
                     <th><h4>제목</h4></th>
                     <th><h4>위치</h4></th>
                     <th>
                        <h4>날짜</h4>
                     </th>
                  </tr>

               </thead>

               <tbody>


                  <c:forEach var="list" items="${ list5 }">

                     <c:if test="${i%j == 0 }">
                        <tr>
                     </c:if>

                     <td>${list }</td>
                     <c:if test="${i%j == j-1 }">
                        </tr>

                     </c:if>
                     <c:set var="i" value="${i+1 }" />
                  </c:forEach>

               </tbody>
            </table> --%>
</div>
   <!-- <div class="122" > -->
         <div class="back">
      <div  class="btn-group-vertical">
       
        <!-- <div onclick="location.href='localhost:8000/index'">홈으로</div> -->
        
    </div>
      </div>
   <!--    </div> -->
         <!-- <a href="http://localhost:8000/index">홈으로</a>> <br /> <br /> <br /> <br /> -->

         
      </c:otherwise>
   </c:choose>
         
               <br /> <br />


