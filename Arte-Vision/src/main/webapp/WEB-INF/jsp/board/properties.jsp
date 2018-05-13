<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://univerousstorage.blob.core.windows.net/web-service/desktop/css/default.css">
<link
	href="http://univerousstorage.blob.core.windows.net/web-service/desktop/css/tools/default.css"
	rel="stylesheet">

<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://pagead2.googlesyndication.com/pub-config/r20160913/ca-pub-8319241381094318.js"></script>
<script
	src="http://univerousstorage.blob.core.windows.net/web-service/desktop/js/default.js"></script>
<script
	src="http://univerousstorage.blob.core.windows.net/web-service/desktop/js/tools/base.js"></script>


<script>
	var _appTitle = '이미지 색상 추출기';
	var _appName = 'ImageColorExtractor';
	var _appId = '28';
</script>

<link rel="prefetch"
	href="https://securepubads.g.doubleclick.net/static/3p_cookie.html">
<link
	href="//univerousstorage.blob.core.windows.net/web-service/desktop/css/tools/imageColorExtractor.css"
	rel="stylesheet">
<script
	src="//univerousstorage.blob.core.windows.net/web-service/desktop/js/tools/imageColorExtractor.js"></script>
<style>
<!--
p{
	margin : 0 0 0 0;
}
-->
</style>
<article class="uk-article" ng-cloak="">
	<section>
		<div class="box-info ui-widget-content" id="propertiesAll">

			<div class="box-header with-border" id="propertiesTitle"
				style="background: rgb(173, 173, 173);">
				<h3 class="box-title" style="color: rgba(255, 255, 255, 0.9);">이미지
					색상 추출</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" id="propertiesHide"
						data-widget="collapse">
						<i id="propertiesButton" class="fa fa-minus"
							style="color: rgb(255, 255, 255);"></i>
					</button>
					<button type="button" class="btn btn-box-tool"
						id="propertiesRemove" data-widget="remove">
						<i class="fa fa-times" style="color: rgb(255, 255, 255);"></i>
					</button>
				</div>
			</div>
			<div class="box-body" id="propertiesBody">
				<div class="table-responsive">
					<div>

						<div>
							<div>
								<div class="uk-margin-small-bottom">
									<div uk-form-custom="" class="uk-form-custom">
										<input type="file" id="FileInput" accept="image/*">
										<button class="uk-button uk-button-default" type="button"
											tabindex="-1">이미지 선택</button>
									</div>
								</div>
								<img id="LoadedImage" style="display: none" src="#">
								<div id="canvasWrapper" class="uk-text-center uk-text-middle"
									style="width: 100%; height: 400px; border: 1px solid #e5e5e5; cursor: crosshair;">
									<canvas id="ImageCanvas" height="400" width="600"></canvas>
								</div>
							</div>
							<div id="ColorSetList">
								<span id="ColorSet1" data-index="1" data-editable-status="true"
									class="colorSet active" style="background-color: rgb(0, 0, 0);"></span>
								<span id="ColorSet2" data-index="2" data-editable-status="false"
									class="colorSet"></span> <span id="ColorSet3" data-index="3"
									data-editable-status="false" class="colorSet"></span> <span
									id="ColorSet4" data-index="4" data-editable-status="false"
									class="colorSet"></span> <span id="ColorSet5" data-index="5"
									data-editable-status="false" class="colorSet"></span> <span
									id="ColorSet6" data-index="6" data-editable-status="false"
									class="colorSet"></span> <span id="ColorSet7" data-index="7"
									data-editable-status="false" class="colorSet"></span> <span
									id="ColorSet8" data-index="8" data-editable-status="false"
									class="colorSet"></span> <span id="ColorSet9" data-index="9"
									data-editable-status="false" class="colorSet"></span> <span
									id="ColorSet10" data-index="10" data-editable-status="false"
									class="colorSet"></span>
							</div>
							<table id="ColorInfo"
								class="uk-table uk-table-small uk-table-striped">
								<colgroup>
									<col style="width: 100px">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th>구분</th>
										<th>추출값</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="uk-text-middle">RGB</td>
										<td>R <input type="text" class="uk-input uk-form-small"
											id="RGB-R" max="255" maxlength="3" readonly="">&nbsp;&nbsp;G
											<input type="text" class="uk-input uk-form-small" id="RGB-G"
											max="255" maxlength="3" readonly="">&nbsp;&nbsp;B <input
											type="text" class="uk-input uk-form-small" id="RGB-B"
											max="255" maxlength="3" readonly=""></td>
									</tr>
									<tr>
										<td class="uk-text-middle">HEX</td>
										<td># <input type="text" class="uk-input uk-form-small"
											id="Hex" readonly=""></td>
									</tr>
								</tbody>
							</table>
							<div id="status"></div>
						</div>
					</div>
				</div>
				<!-- /.table-responsive -->
			</div>
		</div>
	</section>
</article>
