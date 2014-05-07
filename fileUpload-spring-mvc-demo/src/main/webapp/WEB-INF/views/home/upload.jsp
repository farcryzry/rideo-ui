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

  <meta name="description" content="File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery. Supports cross-domain, chunked and resumable file uploads and client-side image resizing. Works with any server-side platform (PHP, Python, Ruby on Rails, Java, Node.js, Go etc.) that supports standard HTML form file uploads.">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/dashboard.css" rel="stylesheet">

  <!-- Generic page styles -->
  <link rel="stylesheet" href="css/style.css">
  <!-- blueimp Gallery styles -->
  <link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
  <!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
  <link rel="stylesheet" href="css/jquery.fileupload.css">
  <link rel="stylesheet" href="css/jquery.fileupload-ui.css">
  <!-- CSS adjustments for browsers with JavaScript disabled -->
  <noscript><link rel="stylesheet" href="css/jquery.fileupload-noscript.css"></noscript>
  <noscript><link rel="stylesheet" href="css/jquery.fileupload-ui-noscript.css"></noscript>

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
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
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
          <li><a href="/"><span class="glyphicon glyphicon-star" lang-key="nav-overview"> Overview</span></a></li>
          <li class="active"><a href="#" data-toggle="collapse" data-target=".nav-collapse"><span class="glyphicon glyphicon-wrench" lang-key="nav-management"> Management</span><b class="caret"></b></a><div class="nav-collapse collapse well">
            <ul class="nav">
              <li><a href="upload"><span class="glyphicon glyphicon-cloud-upload" lang-key="nav-upload-video"> Upload Video</span></a></li>
              <li><a href="title-management"><span class="glyphicon glyphicon-th-list"lang-key="nav-title-management"> Title Management</span></a></li>
              <li><a href="video-management"><span class="glyphicon glyphicon-film" lang-key="nav-video-management"> Video Management</span></a></li>
            </ul>
          </div></li>
          <li><a href="gallery"><span class="glyphicon glyphicon-th-large" lang-key="nav-gallery"> Videos</span></a></li>
          <li><a href="workflow"><span class="glyphicon glyphicon-tasks" lang-key="nav-workflow"> Workflow</span></a></li>
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

            <div class="container" style="padding-left:0px">

              <!-- The file upload form used as target for the file upload widget -->
              <form id="fileupload" action='<s:url value="/image/upload"/>' method="POST" enctype="multipart/form-data">
                  <!-- Redirect browsers with JavaScript disabled to the origin page -->
                  <noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/"></noscript>
                  <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
                  <div class="row fileupload-buttonbar">
                      <div class="col-lg-7">
                          <!-- The fileinput-button span is used to style the file input field as button -->
                          <span class="btn btn-success fileinput-button">
                              <i class="glyphicon glyphicon-plus"></i>
                              <span>Add files...</span>
                              <input type="file" name="files[]" multiple>
                          </span>
                          <button type="submit" class="btn btn-primary start">
                              <i class="glyphicon glyphicon-upload"></i>
                              <span>Start upload</span>
                          </button>
                          <button type="reset" class="btn btn-warning cancel">
                              <i class="glyphicon glyphicon-ban-circle"></i>
                              <span>Cancel upload</span>
                          </button>
                          <button type="button" class="btn btn-danger delete">
                              <i class="glyphicon glyphicon-trash"></i>
                              <span>Delete</span>
                          </button>
                          <input type="checkbox" class="toggle">
                          <!-- The global file processing state -->
                          <span class="fileupload-process"></span>
                      </div>
                      <!-- The global progress state -->
                      <div class="col-lg-5 fileupload-progress fade">
                          <!-- The global progress bar -->
                          <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                              <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                          </div>
                          <!-- The extended global progress state -->
                          <div class="progress-extended">&nbsp;</div>
                      </div>
                  </div>
                  <!-- The table listing the files available for upload/download -->
                  <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
              </form>
          </div>
      
          <!-- The blueimp Gallery widget -->
          <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
              <div class="slides"></div>
              <h3 class="title"></h3>
              <a class="prev">‹</a>
              <a class="next">›</a>
              <a class="close">×</a>
              <a class="play-pause"></a>
              <ol class="indicator"></ol>
          </div>
    </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/docs.min.js"></script>
  <script src="js/lang.js"></script>
  <script type="text/javascript">
  $(function(){
    $('.subPage').hide();
    $('#pageUpload').show();
  });
  </script>

  <!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="js/vendor/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<!-- blueimp Gallery script -->
<script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="js/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="js/jquery.fileupload-ui.js"></script>
<!-- The main application script -->
<script src="js/main.js"></script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="js/cors/jquery.xdr-transport.js"></script>
<![endif]-->
</body>
</html>