<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="box-footer box-comments">
<c:forEach var="list" items="${list }">
	<div class="box-comment commentInfo${list.no}">
		<div class="comment-text">
			<span class="username"> <c:out value="${list.writer }"></c:out> &nbsp;&nbsp;
			<c:if test="${list.writer eq loginVO.nickname || loginVO.type eq 'A'}">
			<a onclick="commentUpdate(${list.no},'${list.content }', ${rno });"><i class="fa fa-pencil" aria-hidden="true"></i>
		</a> <a onclick="commentDelete(${list.no},${ rno });"><i class="fa fa-close" aria-hidden="true"></i></a>
			</c:if>
			<span class="text-muted pull-right">${list.regDate }</span>
			</span>
			<div class="commentContent${list.no}">
			<c:out value="${list.content }"></c:out>
			</div>
		</div>
		<!-- /.comment-text -->
	</div>
	</c:forEach>
	<div class="box-tools" style="margin-left: 35%;">
	<ul class="pagination pagination-sm inline">
		<li><a href="#" onclick="commentList(1,${ rno })">«</a></li>
		<c:forEach var="page" begin="${beginPage}" end="${endPage}">
			<c:if test="${page eq pageNo}">
				<li class="active"><a href="#">${page}</a></li>
			</c:if>
			<c:if test="${page ne pageNo}">
				<li><a href="#" onclick="commentList(${page},${ rno })">${page}</a></li>
			</c:if>
		</c:forEach>
		<li><a href="#" onclick="commentList(${endPage},${ rno })">»</a></li>
	</ul>
</div>
</div>