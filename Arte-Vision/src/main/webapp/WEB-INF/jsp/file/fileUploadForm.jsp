<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>

<style type="text/css">
.img_wrap {
	width: 300px;
	margin-top: 50px
}

.img_wrap img {
	max-width: 100%;
}

.form-control {
	display: inline;
	width: 20%
}
</style>
<script type="text/javascript">

$('[name="attachFile1"]').ezdz({
    text: '이미지를 올려주세요',
    validators: {
    },
    reject: function(file, errors) {
        if (errors.mimeType) {
            alert(file.name + ' must be an image.');
        }

        if (errors.maxWidth) {
            alert(file.name + ' must be width:600px max.');
        }

        if (errors.maxHeight) {
            alert(file.name + ' must be height:400px max.');
        }
    }
});

	/*  var sel_file;
	$(document).ready(function() {
		$("#input_img").on("change", handleImgFileSelect);
	});

	/*function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}  */
	$('#text12345').slideDown();
	 $('#fileUploadForm12345').slideUp();
	 $('#text54321').slideUp();
	function imgUpload(){
		$('#text12345').slideUp(500);
		$('#fileUploadForm12345').slideDown(500);
		$('#text54321').slideDown(500);
	}
</script>

<form method="post" enctype="multipart/form-data" id="fileInputForm">
	<input type="hidden" name="api" value="web" /> <br> <br />
	<div id = "text12345" align="center">
		<h2><strong>- 이미지 검색 - </strong></h2><br/>
		<h3 style = "margin-top: 0; margin-bottom : 0;">아래 드래그 박스에 이미지를 드래그 하시거나 클릭 해주세요</h3>
		<h3 style = "margin-top: 0; margin-bottom : 0;">원하시는 이미지 정보를 추출해 드립니다</h3>
		<br/>
		이미지가 남아있을시 사진을 <b style="color : red">재업로드</b> 해주시기 바랍니다.<br/>
		<br/>
		작가,작품 이름 검색 / LOGO / 텍스트 추출,번역 / 랜드마크 위치 검색  
	</div>
	<br/>
	<div align="center">
		<input type="file" id="input_img" onchange = "imgUpload()" name="attachFile1" accept="image/png, image/jpeg">
	</div>
	<br />
	<!--    <input type="radio"  name="api" value="web"/>web<br> -->
	<br/>
	<!-- <input type="radio" name="api" value="labels"/>labels<br>
   <input type="radio" name="api" value="text"/>text<br> -->
	<input type="button" id = "fileUploadForm12345" class="btn btn-default" style="margin-left:47%;"
		onclick="fileUploadForm(event);" value="업로드" /> <br />
	<div id="text54321" align="center">
		<br/>
		<h3 style = "margin-top: 0; margin-bottom : 0;"><strong> 업로드시 <b style="color : red;">몇초</b>간 시간이 소요됩니다. </strong><br/>
		<strong> 잠시만 기다려주시기 바랍니다. </strong></h3>
	</div>
</form>
