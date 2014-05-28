<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="ico/favicon.ico">

<title>Rideo - Upload</title>

<meta name="description"
	content="File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery. Supports cross-domain, chunked and resumable file uploads and client-side image resizing. Works with any server-side platform (PHP, Python, Ruby on Rails, Java, Node.js, Go etc.) that supports standard HTML form file uploads.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/css/dashboard.css" rel="stylesheet">

<!-- Generic page styles -->
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/jquery.fileupload.css">
<link rel="stylesheet" href="/css/fineuploader-4.4.0.min.css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/css/alertify.core.css">
<link rel="stylesheet" href="/css/alertify.default.css">
<link rel="stylesheet" href="/css/alertify.bootstrap.css">

<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img src="img/logo2.png"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" lang-key="nav-logout">Logout</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
				<div class="navbar-text navbar-right">yaru</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="/"><span class="glyphicon glyphicon-star"
							lang-key="nav-overview"> Overview</span></a></li>
					<li class="active"><a href="#" data-toggle="collapse"
						data-target=".nav-collapse"><span
							class="glyphicon glyphicon-wrench" lang-key="nav-management">
								Management</span><b class="caret"></b></a>
						<div class="nav-collapse collapse well">
							<ul class="nav">
								<li><a href="upload"><span
										class="glyphicon glyphicon-cloud-upload"
										lang-key="nav-upload-video"> Upload Video</span></a></li>
								<li><a href="title-management"><span
										class="glyphicon glyphicon-th-list"
										lang-key="nav-title-management"> Title Management</span></a></li>
								<li><a href="video-management"><span
										class="glyphicon glyphicon-film"
										lang-key="nav-video-management"> Video Management</span></a></li>
							</ul>
						</div></li>
					<li><a href="gallery"><span
							class="glyphicon glyphicon-th-large" lang-key="nav-gallery">
								Videos</span></a></li>
					<li><a href="workflow"><span
							class="glyphicon glyphicon-tasks" lang-key="nav-workflow">
								Workflow</span></a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="">rKnow</a></li>
					<li><a href="">rShop</a></li>
					<li><a href="">rKit</a></li>
					<li><a href="">Preview</a></li>
				</ul>
			</div>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

				<div class="subPage" id="pageUpload">
					<div class="page-header">
						<h1>Upload Videos</h1>
					</div>

					<div class="container" style="padding-left: 0px; width: auto;">
						<div id="fineuploader-S3"></div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="/js/vendor/jquery.ui.widget.js"></script>
	<script src="/js/jquery.iframe-transport.js"></script>
	<script src="/js/jquery.fileupload.js"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="/js/all.fineuploader-4.4.0.min.js"></script>
	<script src="/js/alertify.min.js"></script>

	<!-- Fine Uploader template
	====================================================================== -->
	<script type="text/template" id="video-uplod-template">
  <div class="qq-uploader-selector qq-uploader span12">
    <div class="qq-upload-drop-area-selector qq-upload-drop-area span12" qq-hide-dropzone>
      <span>Drop files here to upload</span>
    </div>
	<div class="col-lg-7">
    	<span class="qq-upload-button-selector qq-upload-button btn btn-success" style="display:inline-block">
      		<i class="fa fa-file-video-o"></i> Add Videos
    	</span>
		<span class="qq-upload-button-selector upload-button btn btn-primary">
      		<i class="fa fa-cloud-upload"></i> Start Upload
    	</span>
	</div>
    <span class="qq-drop-processing-selector qq-drop-processing">
      <span>Processing dropped files...</span>
      <span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner"></span>
    </span>

	<div class="col-lg-7" style="margin-top:20px">
    <ul class="qq-upload-list-selector qq-upload-list">
      <li>
        <div class="qq-progress-bar-container-selector">
          <div class="qq-progress-bar-selector qq-progress-bar"></div>
        </div>
        <span class="qq-upload-spinner-selector qq-upload-spinner"></span>
        <span class="qq-edit-filename-icon-selector qq-edit-filename-icon fa fa-pencil"></span>
        <span class="qq-upload-file-selector qq-upload-file"></span>
        <input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">
        <span class="qq-upload-size-selector qq-upload-size"></span>
        <a class="qq-upload-cancel-selector qq-upload-cancel btn btn-warning cancel" href="#"><i class="fa fa-ban"></i>&nbsp;Cancel</a>
        <a class="qq-upload-retry-selector qq-upload-retry btn btn-primary start" href="#"><i class="fa fa-repeat"></i>&nbsp;Retry</a>
        <a class="qq-upload-delete-selector qq-upload-delete btn btn-danger delete" href="#"><i class="fa fa-times"></i>&nbsp;Delete</a>
        <span class="qq-upload-status-text-selector qq-upload-status-text"></span>
      </li>
    </ul>
	</div>

  </div>
	</script>

	<script>
		$(function() {
			var uploader = $('#fineuploader-S3').fineUploaderS3(
					{
						request : {
							endpoint : "https://rstudio.s3.amazonaws.com",
							accessKey : "AKIAJF3V7JAT42EXP6NA"
						},
						template : "video-uplod-template",
						signature : {
							endpoint : "/video/s3/signture"
						},
						uploadSuccess : {
							endpoint : "success.html"
						},
						objectProperties : {
							key : function(fileId) {
								var keyRetrieval = new qq.Promise();
								var filename = $('#fineuploader-S3')
										.fineUploader("getName", fileId);

								var pos = filename.lastIndexOf(".");
								var suffix = filename.substring(pos,
										filename.length);
								var file = "original" + suffix;
								var uuid = $('#fineuploader-S3').fineUploader(
										"getUuid", fileId);
								keyRetrieval = uuid + "/" + "video" + "/"
										+ file;
								return keyRetrieval;
							}
						},
						autoUpload : false,
						chunking : {
							enabled : true,
							partSize : 16000000
						},
						retry : {
							enableAuto : true,
							maxAutoAttempts : 20,
							showButton : true
						},
						resume : {
							enabled : true
						},
						validation : {
							itemLimit : 5,
							sizeLimit : 2000000000,
							allowedExtensions : [ "avi", "rmvb", "rm", "asf",
									"divx", "mpg", "mpeg", "mpe", "wmv", "mp4",
									"mkv", "vob", "flv" ],
						},
						classes : {
							success : 'alert alert-success',
							fail : 'alert alert-error'
						},
						showMessage : function(message) {
						},
						showConfirm : function(message) {
						},
						showPrompt : function(message, defaultValue) {
						}
					}).on(
					'complete',
					function(event, id, fileName, response) {
						if (response.success) {
							var uuid = $(this).fineUploader("getUuid", id);
							alertify.success("Successfully uploaded: "
									+ fileName + " " + uuid, "", 0);
						}
					}).on('error',
					function(event, id, fileName, reason, maybeXhr) {
						alertify.error("Error: " + reason);
					});

			$('.upload-button').click(function() {
				uploader.fineUploaderS3('uploadStoredFiles');
			});
		});
	</script>
</body>
</html>
