<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="table-responsive">
	<table id="board_table" class="table no-margin">
		<tr>
			<th width="5%">제목</th>
			<td><c:out value="${ boardVO.title }"></c:out></td>
			<td width="10%" align="right">${boardVO.regDate}</td>
		</tr>
		<tr>
			<th width="10%">작성자</th>
			<td><c:out value="${ boardVO.writer }"></c:out></td>
			<td align="right">
			<c:if test="${ boardVO.writer eq loginVO.nickname || loginVO.type eq 'A'}">
			<div>
				<a onclick="modifyForm(${boardVO.no})" style = "margin-right : 10px;">
					<i class="fa fa-pencil fa-2x" aria-hidden="true"></i>
				</a>
				<a onclick="delete123456()">
					<i class="fa fa-trash fa-2x" aria-hidden="true"></i>
				</a>
			</div>
			</c:if>
			</td>
		</tr>
		<tr>
			<th></th>
			<td><br />
			<br />
			<br />
			<br />${ boardVO.content }
			<br />
			<br />
			<br />
			<br /></td>
			<td align="right"></td>
		</tr>
	</table>
	<hr />
	<c:if test="${ loginVO.id eq null }">
	댓글 작성은 로그인한 회원만 가능합니다.
	</c:if>
	<c:if test="${ loginVO.id ne null }">
	<form name="commentInsertForm">
		<div>
			<div class="input-group" style="width:94%; float: left;">
				<input type="hidden" name="rno" value="${boardVO.no}" /> 
					<input type="text" name = "writer" id="writer44" class="form-control" value = "${ loginVO.nickname }" onfocus='blur()'/><br/>
					 <input type="text"
					class="form-control" style="height : 68px;" id="content44" name="content"
					placeholder="내용을 입력하세요." />
			</div>
			<button type="button" name="commentInsertBtn" style="height: 68px;  margin-top:34px; "
				class="btn btn-default">
				<i class="fa fa-reply fa-2x" aria-hidden="true"></i><br />등록
			</button>
		</div>
	</form>
	</c:if>
	<br />
	<hr />
	<div class="commentList"></div>
</div>
<br/>
<script>
	var no = ${boardVO.no};
	$(function() {$('[name=commentInsertBtn]').click(
			function() { //댓글 등록 버튼 클릭시 
				if( $('#writer44').val() == '' || $('#writer44').val() == null){
					alert("작성자를 입력해주세요.");
				}else if( $('#content44').val() == '' || $('#content44').val() == null){
					alert("내용을 입력해주세요.");
				}else{
				var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
					commentInsert(insertData); //Insert 함수호출(아래)
				}
			});
		});
	function delete123456(){
		var a = "";
		a += "게시글을 삭제하시면 복구하실수 없습니다.\n";
		a += "정말 삭제하시겠습니까?"
		if (confirm(a)){
			deleteGo(no);
		}
	}

</script>
