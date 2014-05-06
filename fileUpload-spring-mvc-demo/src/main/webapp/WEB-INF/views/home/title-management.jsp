<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="ico/favicon.ico">

  <title>Rideo - Title Management</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/dashboard.css" rel="stylesheet">

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
          <p>
            <button type="button" class="btn btn-sm btn-primary">Add Videos ...</button>
            <button type="button" class="btn btn-sm btn-danger">Cancel Upload</button>
          </p>
          <div class="panel panel-default">
            <!-- Default panel contents -->
            <!--<div class="panel-heading">Panel heading</div>-->

            <!-- Table -->
            <table class="table">
          <!--<thead>
            <tr>
              <th>#</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Username</th>
            </tr>
          </thead>-->
          <tbody>
            <tr>
              <td style="width:5%"><input type="checkbox"></td>
              <td style="width:10%">1. Inception</td>
              <td style="width:50%"><div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">20%</div>
              </div></td>
              <td><button type="button" class="btn btn-sm btn-danger">Cancel</button></td>
              <td><div class="input-group input-group-sm">
                <span class="input-group-addon">Title</span>
                <input type="text" class="form-control" placeholder="Title">
              </div></td>
              <td><button type="button" class="btn btn-sm btn-success">Save</button></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>2. Matrix</td>
              <td><div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">40%</div>
              </div></td><td><button type="button" class="btn btn-sm btn-danger">Cancel</button></td>
              <td><div class="input-group input-group-sm">
                <span class="input-group-addon">Title</span>
                <input type="text" class="form-control" placeholder="Title">
              </div></td>
              <td><button type="button" class="btn btn-sm btn-success">Save</button></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>3. Brave</td>
              <td><div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">60%</div>
              </div></td><td><button type="button" class="btn btn-sm btn-danger">Cancel</button></td>
              <td><div class="input-group input-group-sm">
                <span class="input-group-addon">Title</span>
                <input type="text" class="form-control" placeholder="Title">
              </div></td>
              <td><button type="button" class="btn btn-sm btn-success">Save</button></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>4. Avatar</td>
              <td><div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">90%</div>
              </div></td><td><button type="button" class="btn btn-sm btn-danger">Cancel</button></td>
              <td><div class="input-group input-group-sm">
                <span class="input-group-addon">Title</span>
                <input type="text" class="form-control" placeholder="Title">
              </div></td>
              <td><button type="button" class="btn btn-sm btn-success">Save</button></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="subPage" id="pageVideoManagement">
      <div class="page-header">
        <h1>Video Management</h1>
      </div>
      <p>
        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addToTitleModel">Add to Title ...</button>
        <button type="button" class="btn btn-sm btn-danger">Delete</button>
      </p>
      <div class="panel panel-default">
        <!-- Default panel contents -->
        <!--<div class="panel-heading">Panel heading</div>-->

        <!-- Table -->
        <table class="table">
          <thead>
            <tr>
              <th style="width:5%"></th>
              <th style="width:5%">#</th>
              <th style="width:30%">Video</th>
              <th style="width:15%">Title</th>
              <th style="width:15%">Uploaded By</th>
              <th style="width:15%">Status</th>
              <th>Operations</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox"></td>
              <td>1</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Inception</td>
              <td>yaru</td>
              <td><span class="badge">Publishing</span></td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editVideoModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>2</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Matrix</td>
              <td>yaru</td>
              <td><span class="badge">Publishing</span></td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editVideoModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>3</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Brave</td>
              <td>yaru</td>
              <td><span class="badge">Publishing</span></td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editVideoModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>4</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Avatar</td>
              <td>yaru</td>
              <td><span class="badge">Publishing</span></td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editVideoModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="subPage" id="pageTitleManagement">
      <div class="page-header">
        <h1>Title Management</h1>
      </div>
      <p>
        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#editTitleModel">Create Title ...</button>
        <button type="button" class="btn btn-sm btn-danger">Delete</button>
      </p>
      <div class="panel panel-default">
        <!-- Default panel contents -->
        <!--<div class="panel-heading">Panel heading</div>-->

        <!-- Table -->
        <table class="table">
          <thead>
            <tr>
              <th style="width:3%"></th>
              <th style="width:2%">#</th>
              <th style="width:25%">Poster</th>
              <th style="width:18%">Title</th>
              <th style="width:10%">Video Count</th>
              <th style="width:20%">Created Time</th>
              <th>Operations</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><input type="checkbox"></td>
              <td>1</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Lost</td>
              <td>52</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>2</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Friends</td>
              <td>26</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>3</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Alias</td>
              <td>30</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>4</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Big Bang Theory</td>
              <td>56</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>5</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Lost</td>
              <td>52</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>6</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Friends</td>
              <td>26</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>7</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Alias</td>
              <td>30</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
            <tr>
              <td><input type="checkbox"></td>
              <td>8</td>
              <td><img class="img-thumbnail" data-src="holder.js/200x100" alt="..."></td>
              <td>Big Bang Theory</td>
              <td>56</td>
              <td>12:00 PM 4-3-2014</td>
              <td><div class="btn-group"><button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addVideoModel">Add Video...</button><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#editTitleModel">Edit...</button><button type="button" class="btn btn-sm btn-danger">Delete</button></div></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="subPage" id="pageDlgTest">
      <div class="page-header">
        <h1>Dialogs</h1>
      </div>
      <!-- Button trigger modal -->
      <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editVideoModel">
        Edit Video...
      </button>

      <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addVideoModel">
        Add Video...
      </button>

      <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addToTitleModel">
        Add Video to Title...
      </button>

      <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editTitleModel">
        Edit Title...
      </button>
    </div>




    <div id="editVideoModel" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Edit Video</h4>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label for="inputTitle" class="col-sm-2 control-label">Title</label>
                <div class="col-sm-10">
                  <input class="form-control" id="inputTitle" placeholder="Title">
                </div>
              </div>
              <div class="form-group">
                <label for="inputDesc" class="col-sm-2 control-label">Description</label>
                <div class="col-sm-10">
                  <textarea class="form-control" id="inputDesc" rows="3"></textarea>
                </div>
              </div>
              <div class="form-group">
                <label for="imgSnapshot" class="col-sm-2 control-label">Snapshot</label>
                <div class="col-sm-offset-3 col-sm-10">
                  <img id="imgSnapshot" data-src="holder.js/300x200" alt="..." class="img-thumbnail">
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div id="addVideoModel" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Add Video</h4>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <div class="col-sm-4">
                  <select multiple class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                  </select>
                </div>
                <div class="col-sm-2">
                  <div class="btn-group-vertical">
                    <button id="btnAdd" type="button" class="btn btn-success">Add >></button>
                    <button id="btnRemove" type="button" class="btn btn-danger">Remove <<</button>
                  </div>
                </div>
                <div class="col-sm-offset-1 col-sm-4">
                  <select multiple class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                  </select>
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">Confirm</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div id="addToTitleModel" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Add Video</h4>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label for="lstVideo" class="col-sm-4 control-label">Videos you selected</label>
                <div class="col-sm-8">
                  <ul id="lstVideo" class="list-group">
                    <li class="list-group-item">
                      <span class="badge">P</span>
                      Lost 01
                    </li>
                    <li class="list-group-item">
                      <span class="badge">T</span>
                      Lost 02
                    </li>
                    <li class="list-group-item">
                      <span class="badge">P</span>
                      Lost 03
                    </li>
                    <li class="list-group-item">
                      <span class="badge">P</span>
                      Lost 04
                    </li>
                  </ul> 
                </div>
              </div>
              <div class="form-group">
                <label for="btnTitle" class="col-sm-4 control-label">Choose Title</label>
                <div class="col-sm-8">
                  <div class="btn-group">
                    <button id="btnTitle" type="button" class="btn btn-default">Choose</button>
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                      <span class="caret"></span>
                      <span class="sr-only">Toggle Dropdown</span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#">Title 01</a></li>
                      <li><a href="#">Title 02</a></li>
                      <li><a href="#">Title 03</a></li>
                      <li class="divider"></li>
                      <li><a href="#">Title 04</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">Add</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div id="editVideoModel" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Edit Video</h4>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label for="inputTitle" class="col-sm-2 control-label">Title</label>
                <div class="col-sm-10">
                  <input class="form-control" id="inputTitle" placeholder="Title">
                </div>
              </div>
              <div class="form-group">
                <label for="inputDesc" class="col-sm-2 control-label">Description</label>
                <div class="col-sm-10">
                  <textarea class="form-control" id="inputDesc" rows="3"></textarea>
                </div>
              </div>
              <div class="form-group">
                <label for="imgSnapshot" class="col-sm-2 control-label">Snapshot</label>
                <div class="col-sm-offset-3 col-sm-10">
                  <img id="imgSnapshot" data-src="holder.js/300x200" alt="..." class="img-thumbnail">
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div id="editTitleModel" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Edit Title</h4>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label for="inputTitle" class="col-sm-2 control-label">Title</label>
                <div class="col-sm-10">
                  <input class="form-control" id="inputTitle" placeholder="Title">
                </div>
              </div>
              <div class="form-group">
                <label for="inputDirector" class="col-sm-2 control-label">Director</label>
                <div class="col-sm-10">
                  <input class="form-control" id="inputDirector" placeholder="Director">
                </div>
              </div>
              <div class="form-group">
                <label for="inputActors" class="col-sm-2 control-label">Actors</label>
                <div class="col-sm-10">
                  <input class="form-control" id="inputActors" placeholder="Actors">
                </div>
              </div>
              <div class="form-group">
                <label for="inputRating" class="col-sm-2 control-label">Rating</label>
                <div class="col-sm-10">
                  <input class="form-control" id="inputRating" placeholder="Rating">
                </div>
              </div>
              <div class="form-group">
                <label for="inputIntro" class="col-sm-2 control-label">Intro</label>
                <div class="col-sm-10">
                  <textarea class="form-control" id="inputIntro" rows="3"></textarea>
                </div>
              </div>
              <div class="form-group">
                <label for="btnUpload" class="col-sm-2 control-label">Poster</label>
                <div class="col-sm-10">
                  <button id="btnUpload" type="button" class="btn btn-success">Upload Poster...</button>
                </div>
              </div>
              <div class="form-group">
                <label for="imgPoster" class="col-sm-2 control-label"></label>

                <div class="col-sm-offset-0 col-sm-10">
                  <img id="imgPoster" data-src="holder.js/300x200" alt="..." class="img-thumbnail">
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    


<!--
      <div class="page-header">
        <h1>Buttons</h1>
      </div>
      <p>
        <button type="button" class="btn btn-lg btn-default">Default</button>
        <button type="button" class="btn btn-lg btn-primary">Primary</button>
        <button type="button" class="btn btn-lg btn-success">Success</button>
        <button type="button" class="btn btn-lg btn-info">Info</button>
        <button type="button" class="btn btn-lg btn-warning">Warning</button>
        <button type="button" class="btn btn-lg btn-danger">Danger</button>
        <button type="button" class="btn btn-lg btn-link">Link</button>
      </p>
      <p>
        <button type="button" class="btn btn-default">Default</button>
        <button type="button" class="btn btn-primary">Primary</button>
        <button type="button" class="btn btn-success">Success</button>
        <button type="button" class="btn btn-info">Info</button>
        <button type="button" class="btn btn-warning">Warning</button>
        <button type="button" class="btn btn-danger">Danger</button>
        <button type="button" class="btn btn-link">Link</button>
      </p>
      <p>
        <button type="button" class="btn btn-sm btn-default">Default</button>
        <button type="button" class="btn btn-sm btn-primary">Primary</button>
        <button type="button" class="btn btn-sm btn-success">Success</button>
        <button type="button" class="btn btn-sm btn-info">Info</button>
        <button type="button" class="btn btn-sm btn-warning">Warning</button>
        <button type="button" class="btn btn-sm btn-danger">Danger</button>
        <button type="button" class="btn btn-sm btn-link">Link</button>
      </p>
      <p>
        <button type="button" class="btn btn-xs btn-default">Default</button>
        <button type="button" class="btn btn-xs btn-primary">Primary</button>
        <button type="button" class="btn btn-xs btn-success">Success</button>
        <button type="button" class="btn btn-xs btn-info">Info</button>
        <button type="button" class="btn btn-xs btn-warning">Warning</button>
        <button type="button" class="btn btn-xs btn-danger">Danger</button>
        <button type="button" class="btn btn-xs btn-link">Link</button>
      </p>

    -->

<!--
      <div class="page-header">
        <h1>Thumbnails</h1>
      </div>
      <img data-src="holder.js/200x200" class="img-thumbnail" alt="A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera">



      <div class="page-header">
        <h1>Dropdown menus</h1>
      </div>
      <div class="dropdown theme-dropdown clearfix">
        <a id="dropdownMenu1" href="#" role="button" class="sr-only dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
          <li class="active" role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
          <li role="presentation" class="divider"></li>
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
        </ul>
      </div>
    -->


<!--
      <div class="page-header">
        <h1>Navbars</h1>
      </div>

      <div class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="navbar navbar-inverse">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>

    -->

<!--
      <div class="page-header">
        <h1>Alerts</h1>
      </div>
      <div class="alert alert-success">
        <strong>Well done!</strong> You successfully read this important alert message.
      </div>
      <div class="alert alert-info">
        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
      </div>
      <div class="alert alert-warning">
        <strong>Warning!</strong> Best check yo self, you're not looking too good.
      </div>
      <div class="alert alert-danger">
        <strong>Oh snap!</strong> Change a few things up and try submitting again.
      </div>



      <div class="page-header">
        <h1>Progress bars</h1>
      </div>
      <div class="progress">
        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"><span class="sr-only">60% Complete</span></div>
      </div>
      <div class="progress">
        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"><span class="sr-only">40% Complete (success)</span></div>
      </div>
      <div class="progress">
        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"><span class="sr-only">20% Complete</span></div>
      </div>
      <div class="progress">
        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"><span class="sr-only">60% Complete (warning)</span></div>
      </div>
      <div class="progress">
        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"><span class="sr-only">80% Complete (danger)</span></div>
      </div>
      <div class="progress">
        <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
        <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
        <div class="progress-bar progress-bar-danger" style="width: 10%"><span class='sr-only'>10% Complete (danger)</span></div>
      </div>

    -->

<!--
      <div class="page-header">
        <h1>List groups</h1>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <ul class="list-group">
            <li class="list-group-item">Cras justo odio</li>
            <li class="list-group-item">Dapibus ac facilisis in</li>
            <li class="list-group-item">Morbi leo risus</li>
            <li class="list-group-item">Porta ac consectetur ac</li>
            <li class="list-group-item">Vestibulum at eros</li>
          </ul>
        </div>
        <div class="col-sm-4">
          <div class="list-group">
            <a href="#" class="list-group-item active">
              Cras justo odio
            </a>
            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
            <a href="#" class="list-group-item">Morbi leo risus</a>
            <a href="#" class="list-group-item">Porta ac consectetur ac</a>
            <a href="#" class="list-group-item">Vestibulum at eros</a>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="list-group">
            <a href="#" class="list-group-item active">
              <h4 class="list-group-item-heading">List group item heading</h4>
              <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
            </a>
            <a href="#" class="list-group-item">
              <h4 class="list-group-item-heading">List group item heading</h4>
              <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
            </a>
            <a href="#" class="list-group-item">
              <h4 class="list-group-item-heading">List group item heading</h4>
              <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
            </a>
          </div>
        </div>
      </div>



      <div class="page-header">
        <h1>Panels</h1>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">Panel title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Panel title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="panel panel-success">
            <div class="panel-heading">
              <h3 class="panel-title">Panel title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Panel title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="panel panel-warning">
            <div class="panel-heading">
              <h3 class="panel-title">Panel title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
          <div class="panel panel-danger">
            <div class="panel-heading">
              <h3 class="panel-title">Panel title</h3>
            </div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
        </div>
      </div>



      <div class="page-header">
        <h1>Wells</h1>
      </div>
      <div class="well">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur.</p>
      </div>
    -->
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

    $('#pageTitleManagement').show();
  });
  </script>
</body>
</html>
