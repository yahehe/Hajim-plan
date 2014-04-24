<!DOCTYPE html>
<html lang="en" ng-app="scheduleApp">
<head>
	  	
  	<title>ScheduleUR</title>
 	<meta charset="utf-8">
  	<meta name="author" content="SqlThePrql">
	<meta name="description" content="A schedule for Hajim students.">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 

	<!-- css -->
	<link href="layoutit/src/css/bootstrap.css" rel="stylesheet">	
	<link href="layoutit/src/css/bootstrap.min.css" rel="stylesheet">
	<link href="layoutit/src/css/style.css" rel="stylesheet">


	<!-- icons -->
	<link href="img/favicon.ico" rel="icon" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="layoutit/src/img/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="layoutit/src/img/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="layoutit/src/img/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="layoutit/src/img/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="layoutit/src/img/favicon.png">
	  
	<!-- javascript -->
	<script type="text/javascript" src="layoutit/src/js/jquery.min.js"></script>
	<script type="text/javascript" src="layoutit/src/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layoutit/src/js/scripts.js"></script>

  	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  	<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  	<![endif]-->
	<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
	<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
	<!--script src="js/less-1.3.3.min.js"></script-->
	<!--append ‘#!watch’ to the browser URL, then refresh the page. -->

<script>
function allowDrop(ev)
{
ev.preventDefault();
}

function drag(ev)
{
ev.dataTransfer.setData("Text",ev.target.id);
}

function drop(ev)
{
ev.preventDefault();
var data=ev.dataTransfer.getData("Text");
ev.target.appendChild(document.getElementById(data));
}
</script>

<?php
	$class_list = array("CSC 171","CSC 172","CSC 173");
?>

</head>

<body>
<div class="container">
	<div class="row clearfix">
	    <div id="leftchunk">
		<div class="col-md-4 column" id="color1">
			<h2>
				My Major
			</h2>
			<div class="dropdown">
				<a href="#" data-toggle="dropdown" class="dropdown-toggle">Classes<b class="caret"></b></a>
					<ul class="dropdown-menu">
					<li><a href="#">Item 1</a></li>
					</ul>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<ul>
						<li>
							<?php echo $class_list[0];?>
						</li>
						<li>
							<?php echo $class_list[1];?>
						</li>
						<li>
							<?php echo $class_list[2];?>
						</li>
						<li>
							And so on...
						</li>
					</ul>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
					<img class="thumbnail" id="drag1" src="http://placehold.it/110x70&text=<?php echo $class_list[0];?>" draggable="true" ondragstart="drag(event)">
				</div>
                                <div class="col-md-4 column">
                                        <img class="thumbnail" id="drag2" src="http://placehold.it/110x70/777&text=<?php echo $class_list[1];?>" draggable="true" ondragstart="drag(event)">
                                </div>
                                <div class="col-md-4 column">
                                        <img class="thumbnail" id="drag3" src="http://placehold.it/110x70/EEE&text=<?php echo $class_list[2];?>" draggable="true" ondragstart="drag(event)">
                                </div>
			</div>
			                        <div class="row clearfix">
                                <div class="col-md-4 column">
                                        <a title="Image 1" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/777"></a>
                                </div>
                                <div class="col-md-4 column">
                                        <a title="Image 2" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/EEE"></a>
                                </div>
                                <div class="col-md-4 column">
                                        <a title="Image 2" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/DDD"></a>
                                </div>
                        </div>
		</div>
	    </div>
		<div class="col-md-8 column">
			<h3>
				Freshman
			</h3>
			<div class="row clearfix">
				<div class="col-md-6 column">
					<div class="col-md-4 column" ondrop="drop(event)" ondragover="allowDrop(event)">
					Here
					</div>
                                        <div class="col-md-4 column" ondrop="drop(event)" ondragover="allowDrop(event)">
					Here
                                        </div>
                                        <div class="col-md-4 column" ondrop="drop(event)" ondragover="allowDrop(event)">
					Here
                                        </div>
				</div>
				<div class="col-md-6 column" ondrop="drop(event)" ondragover="allowDrop(event)">
				</br></br></br></br>
				</div>
			</div>
			<h3>
				Sophomore
			</h3>
			<div class="row clearfix">
				<div class="col-md-6 column" ondrop="drop(event)" ondragover="allowDrop(event)">
				Some stuff here
				</div>
				<div class="col-md-6 column" ondrop="drop(event)" ondragover="allowDrop(event)">
				Some stuff here
				</div>
			</div>
			<h3>
				Junior
			</h3>
			<div class="row clearfix">
				<div class="col-md-6 column" ondrop="drop(event)" ondragover="allowDrop(event)">
				Some stuff here
				</div>
				<div class="col-md-6 column" ondrop="drop(event)" ondragover="allowDrop(event)">
				Some stuff here
				</div>
			</div>
			<h3>
				Senior
			</h3>
			<div class="row clearfix">
				<div class="col-md-6 column" ondrop="drop(event)" ondragover="allowDrop(event)">
				Some stuff here
				</div>
				<div class="col-md-6 column" ondrop="drop(event)" ondragover="allowDrop(event)">
				Some stuff here
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>