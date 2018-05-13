<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<td><a href="#scroll-up" onclick="detailSearch(${list.no});" id="detailGO"><c:out value="${ list.title }"></c:out></a>
							<small class="label bg-green">${ list.reNum }</small></td>
						<td><c:out value="${ list.writer }"></c:out></td>
						<td>${ list.regDate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
<div class="box-tools" align="center">
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
