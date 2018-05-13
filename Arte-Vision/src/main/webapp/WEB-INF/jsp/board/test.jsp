<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Random"%>
<style type="text/css">
form {
	display: inline;
}

.form-control {
	display: inline;
	width: 20%
}

.table-responsive {
	position: relative;
}

.istme {
	position: absolute;
	top: 10px;
	left: 500px;
	right: 0;
	width: 600px;
	height: 200px;
}
</style>
<script>
	function fileUploadGo() {
		fileUpload();
	}
</script>
<div class="box-info">
	<div align="right">
		<button type="button" class="btn btn-warning" onclick="fileUploadGo()">
			<h7 style="color:white;">다른사진검색하기</h7>
		</button>
	</div>
	<div class="box-body">
		<div class="table-responsive">
			<img class="profile-user-img img-responsive img-circle"
				style="width: 30%; height: 30%;" src="/upload/${ oriFileName }"
				alt="User profile picture" /><br />
			<div class="nav-tabs-custom">
				<div align="center" class="nav-tabs-custom">
				<ul class="nav nav-tabs" style="display:table">
					<c:choose>
						<c:when test="${ api eq 'web' }">
							<li class="active"><a href="#tab_1" data-toggle="tab"
								aria-expanded="true">이미지 정보</a></li>
							<li class=""><a href="#tab_2" data-toggle="tab"
								aria-expanded="false">이미지 검색결과</a></li>
						</c:when>
						<c:otherwise>
							<li class="active"><a href="#tab_1" data-toggle="tab"
								aria-expanded="true">이미지 검색결과</a></li>
							<li class=""><a href="#tab_2" data-toggle="tab"
								aria-expanded="false">이미지 정보</a></li>
						</c:otherwise>
					</c:choose>
					<li class=""><a href="#tab_3" data-toggle="tab"
						aria-expanded="false">Text 번역</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" aria-expanded="false"> 이미지 검색
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li role="presentation">
								<form method="post" enctype="multipart/form-data">
									<input type="hidden" name="oriFileName"
										value="${ oriFileName }" /> <input type="hidden" name="test"
										value="1" /> <input type="hidden" name="api" value="web" />
									<input type="button" class="btn btn-default"
										style="width: 100%;" onclick="fileUploadForm(event);"
										value="web" />
								</form>
							</li>
							<li role="presentation"><form method="post"
									enctype="multipart/form-data">
									<input type="hidden" name="oriFileName"
										value="${ oriFileName }" /> <input type="hidden" name="test"
										value="1" /> <input type="hidden" name="api" value="labels" />
									<input type="button" class="btn btn-default"
										style="width: 100%;" onclick="fileUploadForm(event);"
										value="labels" />
								</form></li>
							<li role="presentation">
								<form method="post" enctype="multipart/form-data">
									<input type="hidden" name="oriFileName"
										value="${ oriFileName }" /> <input type="hidden" name="test"
										value="1" /> <input type="hidden" name="api" value="text" />
									<input type="button" class="btn btn-default"
										style="width: 100%;" onclick="fileUploadForm(event);"
										value="text" />
								</form>
							</li>
							<li role="presentation"><form method="post"
									enctype="multipart/form-data">
									<input type="hidden" name="oriFileName"
										value="${ oriFileName }" /> <input type="hidden" name="test"
										value="1" /> <input type="hidden" name="api"
										value="landmarks" /> <input type="button"
										class="btn btn-default" style="width: 100%;"
										onclick="fileUploadForm(event);" value="landmarks" />
								</form></li>
						</ul></li>
				</ul>
				</div>
				<div class="tab-content">
					<c:choose>
						<c:when test="${ api eq 'web' }">

							<div class="tab-pane active" id="tab_1">
								<c:set var="name" value="${ list2 }" />
								<c:choose>
									<c:when test="${ empty name}">
									</c:when>

									<c:otherwise>
										<b>이미지 정보</b>
										<br>
										<c:forEach var="list2" items="${ list2 }">
    										 ${ list2 }<br />
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</div>
							<!-- /.tab-pane -->
							<div class="tab-pane" id="tab_2">
								<b>이미지 검색결과 </b><br />
								<c:if test="${ list.get(0) ne 'Landmarks' }">
								<c:forEach var="list" items="${ list }">
									<a class="">${ list }</a>
									<br />
								</c:forEach>
								</c:if>
								<c:if test="${ list.get(0) eq 'Landmarks' }">
									<c:if test="${ fn:length(list) > 1}">
										<%--                 <c:if test="${ list.get(0).contains('location')}">  --%>
										<script>
											var list1 = new Array();
											<c:forEach var="list" items="${ list }">
											list1.push('${list}');
											</c:forEach>
											var a = list1.pop();
											var b = list1.pop();

											function initMap() {
												var uluru = {
													lat : Number(b),
													lng : Number(a)
												};
												var map = new google.maps.Map(
														document
																.getElementById('map'),
														{
															zoom : 4,
															center : uluru
														});
												var marker = new google.maps.Marker(
														{
															position : uluru,
															map : map
														});
											}
										</script>
										<script
											src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOZpSkaprH_MXjDLQvhPgF06Ka9L8zjqU&callback=initMap">
											
										</script>

										<div id="map" style="width: 400px; height: 400px"></div>
									</c:if>
									<c:if test="${ fn:length(list) == 1 }">
										해당 이미지로 랜드마크 검색이 불가능합니다.
									</c:if>
								</c:if>

							</div>
							<!-- /.tab-pane -->
							<div class="tab-pane" id="tab_3">
								<b> 번역할것 : </b> <a>${ text }</a> <br /> <b>번역된것 : </b> <a>${ BoardList }</a><br />

							</div>
						</c:when>
						<c:otherwise>

							<div class="tab-pane active" id="tab_1">
								<b>이미지 검색결과 </b><br />
								<c:if test="${ list.get(0) ne 'Landmarks' }">
								<c:forEach var="list" items="${ list }">
									<a class="">${ list }</a>
									<br />
								</c:forEach>
								</c:if>
								<c:if test="${ list.get(0) eq 'Landmarks' }">
									<c:if test="${ fn:length(list) > 1 }">
										<%--                 <c:if test="${ list.get(0).contains('location')}">  --%>
										<script>
											var list1 = new Array();
											<c:forEach var="list" items="${ list }">
											list1.push('${list}');
											</c:forEach>
											var a = list1.pop();
											var b = list1.pop();

											function initMap() {
												var uluru = {
													lat : Number(b),
													lng : Number(a)
												};
												var map = new google.maps.Map(
														document
																.getElementById('map'),
														{
															zoom : 4,
															center : uluru
														});
												var marker = new google.maps.Marker(
														{
															position : uluru,
															map : map
														});
											}
										</script>
										<script
											src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOZpSkaprH_MXjDLQvhPgF06Ka9L8zjqU&callback=initMap">
										<!-- 구글맵 두번실행 막으셈 -->
										</script>

										<div id="map" style="width: 400px; height: 400px"></div>
									</c:if>
									<c:if test="${ fn:length(list) == 1 }">
										해당 이미지로 랜드마크 검색이 불가능합니다.
									</c:if>
								</c:if>

							</div>
							<div class="tab-pane" id="tab_2">
								<c:set var="name" value="${ list2 }" />
								<c:choose>
									<c:when test="${ empty name}">
									</c:when>

									<c:otherwise>
										<b>크롤링 정보</b>
										<br>
										<c:forEach var="list2" items="${ list2 }">
    				 ${ list2 }<br />

										</c:forEach>
									</c:otherwise>
								</c:choose>
							</div>
							<!-- /.tab-pane -->
							<!-- /.tab-pane -->
							<div class="tab-pane" id="tab_3">
								<b> 번역할것 : </b> <a>${ text }</a> <br /> <b>번역된것 : </b> <a>${ BoardList }</a><br />

							</div>
							<!-- /.tab-pane -->
						</c:otherwise>
					</c:choose>
				</div>
				<!-- /.tab-content -->
			</div>

		</div>
	</div>
	<!-- /.table-responsive -->
</div>
<!-- /.table-responsive -->
