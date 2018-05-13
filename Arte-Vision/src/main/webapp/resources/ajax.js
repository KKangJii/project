function SignGogo(){
	$.ajax({
		url : "/login/Sign",
		method : "post",
		success : function(data) {
			$('.Sign123').html(data);
		}
	});
}


//------------------ 게시판 ---------------
var boardVO;
function search21() {
	$.ajax({
		url : "/board/search",
		success : function(data) {
			$('.searchC').html(data);
		}
	});
}

$(document).on("keyup","#search1234",function() {
	var search = $(this).val();
	var pageNum = 1;
	$.ajax({
		url : '/board/list',
		type : 'get',
		data : {
			'pageNum' : pageNum,
			'search' : search
		},
		success : function(data) {
			$(".list").html(data);

		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
		}
	});
});
function listSearch() {
	
	var pageNum = 1;
	var search = $("#inputSearch123321").val();
	$.ajax({
		url : '/board/listSearch',
		type : 'post',
		data : { 
			'pageNum' : pageNum,
			'search' : search
		},
		success : function(data) {
			$(".listSearch").html(data);
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
}
function list(pageNum) {
	$.ajax({
		url : '/board/list',
		type : 'get',
		data : {
			'pageNum' : pageNum
		},
		success : function(data) {
			$(".list").html("");
			$(".list").html(data);
			search21();

		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
}
function writeForm(listNo) {
	$
			.ajax({
				url : '/board/writeForm',
				type : 'get',
				data : {
					"listNo" : listNo
				},
				success : function(data) {
					var a = '';
					a += '	<div id = "content"></div>';
					a += ' <div><button class="btn btn-default pull-right" onclick="listBack()">취소</button></div>';
					a += ' <div id ="content12"><button class="btn btn-default pull-right" onclick="saveContent()">글등록완료</button></div>';
					a += '<br/>';
					a += '<br/>';
					$(".searchC").html("");
					$(".list").html("");
					$(".detail").html("");
					$(".list").html(data + a);

				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
			});
}
function content() {
	$.ajax({
		url : "/board/content",
		success : function(data) {
			// $('#msgView').html(data);
			$('#content').html(data);
		}
	});
}

function writetext() {
	var no = $('[name=no]').val();
	var title = $('[name=title]').val();
	var writer = $('[name=writer]').val();
	var content = Editor.getContent();
	$.ajax({
		url : '/board/write',
		type : 'post',
		data : {
			'no' : no,
			'title' : title,
			'writer' : writer,
			'content' : content
		},
		success : function(data) {
			list(1);
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
}
function detailSearch(no) {
	
	$.ajax({
		url : '/board/detailSearch',
		type : 'get',
		data : {
			'no' : no
		},
		success : function(data) {
			var a = '';
			
			$(".detailSearch").html("");
			$(".detailSearch").html(data);
			
			commentList(1, no);
			
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
	
}
function detail(no) {

	$.ajax({
		url : '/board/detail',
		type : 'get',
		data : {
			'no' : no
		},
		success : function(data) {
			var a = '';

			$(".detail").html("");
			$(".detail").html(data);
			ReferralsSelect(no);
			commentList(1, no);

		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});

}

function modifyForm(no) {

	$
			.ajax({
				url : '/board/' + no,
				type : 'GET',
				success : function(data) {
					var a = "";
					a += '	<div id = "content"></div>';
					a += ' <div><button class="btn btn-default pull-right" onclick="detailBack('
							+ no + ')">취소</button></div>'
					a += '		<div id ="content12"><button class="btn btn-default pull-right" onclick="modifyGo('
							+ no + ')">수정완료</button></div>'
					a += '<br/>'
					a += '<br/>'
					a += '<hr/>';
					$(".detail").html("");
					$(".detail").html(a);
					content();
					list(1);
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
			});

}
function modifyGo(no) {
	var title = $('[name=title]').val();
	var writer = $('[name=writer]').val();
	var content = Editor.getContent();
	$.ajax({
		url : ' /board/' + no,
		type : 'POST',
		data : {
			'title' : title,
			'writer' : writer,
			'content' : content
		},
		success : function(data) {

			detail(no);
			list(1);

		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
}
function deleteForm() {
	$.ajax({
		url : '/board/deleteForm',
		type : 'get',
		success : function(data) {
			$(".searchC").html("");
			$(".detail").html("");
			$(".list").html(data);
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
}
function deleteGo(no) {
	$.ajax({
		url : '/board/' + no,
		type : 'DELETE',
		success : function(data) {
			deleteForm();
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
}
// ------------------------------댓글------------------------------------------

// 댓글 목록
function commentList(pageNum, no) {

	$.ajax({
		url : '/reply/list',
		type : 'get',
		data : {
			'rno' : no,
			'pageNum' : pageNum,
		},
		success : function(data) {
			$(".commentList").html(data);
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
		}
	});
}

// 댓글 등록
function commentInsert(insertData) {
	$.ajax({
		url : '/reply/insert',
		type : 'post',
		data : insertData,
		success : function(data) {
			commentList(1, data); // 댓글 작성 후 댓글 목록 reload
			$('[name=content]').val('');
			list(1);
		},
	});
}

// 댓글 수정 - 댓글 내용 출력을 input 폼으로 변경

function commentUpdate(no, content, bno) {
	var bno = bno;
	var a = '';

	a += '<div class="input-group">';
	a += '<input type="text" class="form-control" name="content_' + no
			+ '" value="' + content + '"/>';
	a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('
			+ no
			+ ','
			+ bno
			+ ');"><i class="fa fa-arrow-left" aria-hidden="true"></i></button> </span>';
	a += '</div>';

	$('.commentContent' + no).html(a);

}

// 댓글 수정
function commentUpdateProc(no, bno) {
	var bno = bno;
	var updateContent = $('[name=content_' + no + ']').val();
	$.ajax({
		url : '/reply/update',
		type : 'post',
		data : {
			'content' : updateContent,
			'no' : no
		},
		success : function(data) {
			commentList(1, bno); // 댓글 수정후 목록 출력
		}
	});
}

// 댓글 삭제
function commentDelete(no, bno) {
	var bno = bno;
	$.ajax({
		url : '/reply/delete/' + no,
		type : 'post',
		success : function(data) {

			commentList(1, bno); // 댓글 삭제후 목록 출력
			list(1);
		}
	});
}

// /////////////////////////// 파일 ajax /////////////////////////////////////

function infosel() {
	$.ajax({
		url : "/board/info1",
		method : "get",
		success : function(data) {
			$('.info123').html(data);
		}
	});
}
function info(api) {
	$.ajax({
		url : "/board/info1",
		method : "post",
		data : {
			'api' : api
		},
		success : function(data) {
			$('.info123').html(data);
		},
		error : function() {
			alert('에러셈ㅋㅋ');
		},
	});
}
function fileUpload() {
	$.ajax({
		url : "/board/upload",
		method : "get",
		success : function(data) {
			$('.file').html("");
			$('.file').html(data);

		}
	});
}
function fileUploadForm(event) {
	event.stopPropagation();
	event.preventDefault();
	console.log("this", $(event.target).parent()[0]);
	$formData = new FormData($(event.target).parent()[0]);

	$.ajax({
		url : "/board/upload",
		method : "post",
		data : $formData,
		processData : false,
		contentType : false,
		beforeSend : function() {
			$('.file').html("<div id='loading' class='loading'><img id='loading_img' style='width:35px; height:35px;' alt='loading' src='/upload/viewLoading.gif' /></div>");
		},
		success : function(data) {
			$('.file').html(data);
		}
	});
}
function mulist() {
	$.ajax({
		url : "/board/mulist",
		method : "get",
		success : function(data) {
			$('.mulist1234').html(data);
		}
	});
}
