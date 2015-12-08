<!doctype html>
<%@page import="mvc.ServletPrincipal"%>
<%@page import="mvc.SorteioControle"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Sorteio Online</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<!-- Bootstrap -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
	$(document).ready(
			function() {
				$(document).mousemove(
						function(e) {
							TweenLite.to($('body'), .5, {
								css : {
									backgroundPosition : ""
											+ parseInt(event.pageX / 8) + "px "
											+ parseInt(event.pageY / '12')
											+ "px, "
											+ parseInt(event.pageX / '15')
											+ "px "
											+ parseInt(event.pageY / '15')
											+ "px, "
											+ parseInt(event.pageX / '30')
											+ "px "
											+ parseInt(event.pageY / '30')
											+ "px"
								}
							});
						});
			});
</script>
<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row vertical-offset-100">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2>Sorteio de 1 a 10</h2>
					</div>
					<div class="panel-body">
						<div class="alert alert-success" role="alert">
							<%
							SorteioControle num = (SorteioControle) session.getAttribute("numeros");
							%>
							<h1>
								<%=num.sorteado()%>
							</h1>
						</div>
						<!-- Indicates a successful or positive action -->
						<button type="button" class="btn btn-success btn-lg btn3d"
							type="submit" name="sortear" value="sortear">
							<span class="glyphicon glyphicon-ok"></span> SORTEAR
						</button>

						<button type="button" class="btn btn-danger btn-lg btn3d"
							type="submit" name="reiniciar" value="reiniciar">
							<span class="glyphicon glyphicon-remove"></span> REINICIAR
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>