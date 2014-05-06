<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/favicon.ico">

    <title>Rideo - Gallary</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet" />

    <style type="text/css">
      legend {
        text-align: center; 
        overflow: hidden;  
        text-overflow: ellipsis;
      }
    </style>

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
                    <li><a href="#" data-toggle="collapse" data-target=".nav-collapse"><span class="glyphicon glyphicon-wrench" lang-key="nav-management"> Management</span><b class="caret"></b></a><div class="nav-collapse collapse well">
                        <ul class="nav">
                            <li><a href="upload"><span class="glyphicon glyphicon-cloud-upload" lang-key="nav-upload-video"> Upload Video</span></a></li>
                            <li><a href="title-management"><span class="glyphicon glyphicon-th-list"lang-key="nav-title-management"> Title Management</span></a></li>
                            <li><a href="video-management"><span class="glyphicon glyphicon-film" lang-key="nav-video-management"> Video Management</span></a></li>
                        </ul>
                    </div></li>
                    <li class="active"><a href="gallery"><span class="glyphicon glyphicon-th-large" lang-key="nav-gallery"> Videos</span></a></li>
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


    <div id="titleDetailModel" class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">View Title Detail</h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" role="form">
                <div class="form-group">
                  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img data-src="holder.js/900x500/auto/#777:#555/text:First video" alt="First video" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzc3NyI+PC9yZWN0Pjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojNTU1O2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+Rmlyc3Qgc2xpZGU8L3RleHQ+PC9zdmc+">
        </div>
        <div class="item">
          <img data-src="holder.js/900x500/auto/#666:#444/text:Second video" alt="Second video" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzY2NiI+PC9yZWN0Pjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojNDQ0O2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+U2Vjb25kIHNsaWRlPC90ZXh0Pjwvc3ZnPg==">
        </div>
        <div class="item">
          <img data-src="holder.js/900x500/auto/#555:#333/text:Third video" alt="Third video" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iOTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzU1NSI+PC9yZWN0Pjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjQ1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojMzMzO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjU2cHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+VGhpcmQgc2xpZGU8L3RleHQ+PC9zdmc+">
        </div>
      </div>
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->


      <div class="page-header">
        <h1>Gallary</h1>
      </div>
      <ul class="nav nav-pills">
        <li class="active"><a href="#">All</a></li>
        <li><a href="#">Movie</a></li>
        <li><a href="#">Serial</a></li>
        <li><a href="#">Show</a></li>
        <li><a href="#">Clip</a></li>
      </ul>
      <div id="myTabContent" class="tab-content">
      <div class="tab-pane fade active in" id="home">
        <div class="panel panel-default">
          <div class="panel-body">
            <div class="row">
              <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="img/captain-america-2-poster-full.jpg" alt="...">
                  <legend><small>Captain America 2</small></legend>
                </a>
              </div>
                <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="http://images.christianpost.com/full/69038/noah-poster.jpg" alt="...">
                  <legend><small>Noah</small></legend>
                </a>
              </div>
                <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="img/tumblr_mw67sjX4ER1ssodxpo1_1280.jpg" alt="...">
                  <legend><small>Divergent</small></legend>
                </a>
              </div>
              <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="img/muppets_most_wanted.jpg" alt="...">
                  <legend><small>Muppets Most Wanted</small></legend>
                </a>
              </div>
              <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="img/MV5BMTA5MzAzNTcyNjZeQTJeQWpwZ15BbWU3MDUyMzE1MTk@._V1_SY800_SX542_.jpg" alt="...">
                  <legend><small>How I Met Your Mother</small></legend>
                </a>
              </div>
              <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="img/walking_dead_one_sheet_poster.jpg" alt="...">
                  <legend><small>The Walking Dead</small></legend>
                </a>
              </div>
              
              <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="img/MV5BMTQyMzExMzAzMl5BMl5BanBnXkFtZTcwMDEzNzk1OQ@@._V1_SY500_SX340_.jpg" alt="...">
                  <legend><small>Criminal Minds</small></legend>
                </a>
              </div>
              <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail" data-toggle="modal" data-target="#titleDetailModel">
                  <img src="img/e92301986892.jpg" alt="...">
                  <legend><small>The Big Bang Theory</small></legend>
                </a>
              </div>
              

              <!--<div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail">
                  <img data-src="holder.js/100%x180" alt="...">
                  <legend><small>Arrow</small></legend>
                </a>
              </div>-->
            </div>
          </div>
        </div>
      </div>
      <div class="tab-pane fade" id="profile">
        <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
      </div>
      <div class="tab-pane fade" id="dropdown1">
        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
      </div>
      <div class="tab-pane fade" id="dropdown2">
        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
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
  </body>
</html>
