<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
function loginGogo(){
	var a = ""
	a += "로그인한 회원만 사용 가능합니다.\n"
	a += "로그인 하시겠습니까?"
	return confirm(a);
	
}
</script>
<div class="table-responsive">
	<table id="board_table" class="table no-margin">
		<tr>
			<th width="5%">번호</th>
			<th width=30%>제목</th>
			<th width="15%">글쓴이</th>
			<th width="10%">날짜</th>
		</tr>
		<c:choose>
			<c:when test="${ str ne null }">
			<tr>
				<td></td>
				<td align = "center">
					${ str }
				</td>
				<td></td>
				<td></td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="list" items="${ list }">
					<tr>
						<td>${ list.no }</td>
						<td><a href="#scroll-up" onclick="detail(${list.no});" id="detailGO"><c:out value="${ list.title }"></c:out></a>
							<small class="label bg-green">${ list.reNum }</small></td>
						<td><c:out value="${ list.writer }"></c:out></td>
						<td>${ list.regDate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
	<c:if test="${ loginVO.id eq null }">
	<form name="myForm" action="/login" method="POST" onsubmit ="return loginGogo()">
	<button type="submit" class="btn btn-default pull-right">
		<i class="fa fa-pencil" aria-hidden="true">&nbsp;글쓰기</i>
	</button>
	</form>
	</c:if>
	<c:if test="${ loginVO.id ne null }">
	<button type="button" class="btn btn-default pull-right"
		onclick="writeForm(${ listNo })">
		<i class="fa fa-pencil" aria-hidden="true">&nbsp;글쓰기</i>
	</button>
	</c:if>
<div class="box-tools" style="margin-left: 35%;">
	<ul class="pagination pagination-sm inline">
		<li><a href="#" onclick="list(1)">«</a></li>
		<c:forEach var="page" begin="${beginPage}" end="${endPage}">
			<c:if test="${page eq pageNo}">
				<li class="active"><a href="#">${page}</a></li>
			</c:if>
			<c:if test="${page ne pageNo}">
				<li><a href="#" onclick="list(${page})">${page}</a></li>
			</c:if>
		</c:forEach>
		<li><a href="#" onclick="list(${endPage })">»</a></li>
	</ul>
</div>
