<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
function toggle(){
	var check = false;
	var cnt = 0;
	var id = document.back.id;
	
	for(var i = 0; i < id.length && cnt == i; i++){
		if(id[i].checked)
			cnt++;
	}
	if(cnt != id.length){
		check = true;
	}
	for(var i = 0; i < id.length; i++){
//		hobby[i].checked = !hobby[i].checked; //if문돌릴필요없이 !써서바로댐
		id[i].checked = check;
		
	}
}
function deleteSign(){
	var a = "";
	a += "삭제된 회원은 복구가 불가능합니다.\n"
	a += "선택하신 회원을 정말 삭제하시겠습니까?"
	return confirm(a);
}
</script>

<form action="/login/SignDelete" name="back" method="post" onsubmit ="return deleteSign()">
	<div class="table-responsive">
		<table id="board_table" class="table no-margin">
			<tr>
				<th width="7%">선택</th>
				<th>아이디</th>
				<th width="16%">닉네임</th>
				<th width="20%">생일</th>
				<th width="20%">전화번호</th>
			</tr>
			<c:forEach var="Signlist" items="${ Signlist }" varStatus="loop">
				<tr>
					<td><input type="checkbox" name="id" value="${ Signlist.id }" />
					</td>
					<td>${ Signlist.id }</td>
					<td>${ Signlist.nickname }</td>
					<td>${ Signlist.birthday }
					<td>${ Signlist.tel1 }-${ Signlist.tel2 }-${ Signlist.tel3 }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<input type="button" class = "btn btn-default " value="전체선택/해제" onclick="toggle()" /> 
	<input type="submit" class = "btn btn-default " value="삭제" />
</form>