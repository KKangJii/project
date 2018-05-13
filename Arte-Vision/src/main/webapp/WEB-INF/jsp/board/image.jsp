<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미지 업로드</title>
<link rel=stylesheet type=text/css
	href="/resources/daumeditor/css/popup.css" charset=utf-8 />
<script type=text/javascript charset=utf-8
	src="/resources/daumeditor/js/popup.js"></script>
<!-- jQuery 라이브러리 -->
<script type=text/javascript
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type=text/javascript
	src="/resources/daumeditor/js/jquery.form.js"></script>

<style>
/* css */
.header {
	background-image: none;
	background-color: #027dfc;
} /* 파일첨부(.file) */
.file {
	display: inline-block;
	margin-top: 8px;
	overflow: hidden;
}

.file .file-text {
	display: inline-block;
	padding: 6px 10px 8px 10px;
	border: 1px solid #c7c7c7;
	width: 179px;
	font-size: 14px;
	color: #8a8a8a;
	float: left;
}

.file .file-text:FOCUS {
	border-color: #54c4e5;
	outline: 0;
	-webkit-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.075), 0px 0px 8px
		rgba(102, 175, 233, 0.6);
	box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.075), 0px 0px 8px
		rgba(102, 175, 233, 0.6);
}

.file .file-btn {
	margin-left: 2px;
	padding: 6px 8px 4px 8px;
	height: 20px;
	line-height: 20px;
	font-size: 12px;
	font-weight: bold;
	background-color: #fff;
	border: 1px solid #989898;
	color: #989898;
	cursor: pointer;
	float: left;
}

.file .file-btn:HOVER {
	background-color: #edfbff;
	border: 1px solid #009bc8;
	color: #009bc8;
}
</style>
<script type="text/javascript">

	
	function initUploader(){
	    var _opener = PopupUtil.getOpener();
	    if (!_opener) {
	        alert('잘못된 경로로 접근하셨습니다.');
	        return;
	    }
	     
	    var _attacher = getAttacher('image', _opener);
	    registerAction(_attacher);
	}

	$(document).ready(function() {
		$('.file input[type=file]').change(
				function() {
					var inputObj = $(this).prev().prev();
					var fileLocation = $(this).val();
					inputObj.val(fileLocation.replace('C:\\fakepath\\', ''));
				});
	
			
		$('.submit a').on('click',function() {
			var form = $('#daumOpenEditorForm');
			var fileName = $('.file input[type=text]').val();
			form.ajaxSubmit({
				url : '${pageContext.request.contextPath}/board/singleUploadImageAjax',
				type : 'POST',
				dataType : 'JSON',
				beforeSubmit : function() {
					if (validation(fileName)) {
						return false;
					}
				},
				success : function(fileInfo) {
					if (fileInfo.result === -1) {
						alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
						return false;
					} else if (fileInfo.result === -2) {
						alert('파일이 1MB를 초과하였습니다.');
						return false;
					} else {
						done(fileInfo);
					}
				}
			});
		});
	});
		function done(fileInfo) {
		 	if (typeof(execAttach) == 'undefined') { 
		 		return; 
		 	}  
		 	var _mockdata = { 
		 			'imageurl': fileInfo.imageurl, 
		 			'filename': fileInfo.filename, 
		 			'filesize': fileInfo.filesize, 
		 			'imagealign': fileInfo.imagealign, 
		 			'originalurl': fileInfo.originalurl, 
		 			'thumburl': fileInfo.thumburl 
		 	}; 
		 	execAttach(_mockdata);
		 	closeWindow(); 
		}
		function validation(fileName) {
			var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
			var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex,fileName.length);
			if (!((fileNameExtension === 'jpg')||(fileNameExtension === 'gif')||(fileNameExtension === 'png')||(fileNameExtension === 'bmp'))) {
				alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
				return true;
			} else {
				return false;
			}
		}
</script>
</head>
<body onload="initUploader();">
	<div class="header">
		<h1>사진 첨부</h1>
	</div>
	<div class="body">
		<dl class=alert>
			<dt>&nbsp;1MB이하 (JPG,GIF,PNG,BMP)</dt>
			<dd>
				<form id=daumOpenEditorForm encType=multipart/form-data method=post action="">
					<!-- 파일첨부 -->
					<div class=file>
						<input disabled class=file-text type = "text"> 
						<label class=file-btn for=uploadInputBox>사진첨부</label> 
						<input id=uploadInputBox style="display: none" type=file name=Filedata>
						<!-- 버튼대체용(안보임) -->
					</div>
					<!-- //파일첨부 -->
				</form>
			</dd>
		</dl>

	</div>
	<div class="footer">
		<ul>
			<li class="submit"><a href="#" title="등록" class="btnlink">등록</a></li>
			<li class="cancel"><a href="#" onclick="closeWindow();"
				title="취소" class="btnlink">취소</a></li>
		</ul>
	</div>
</body>
</html>