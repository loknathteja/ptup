<html>
  <head>
    <title>Search Patient Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="/clinic/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
<script src="/clinic/js/jquery-1.10.2.min.js"></script>
<script src="/clinic/js/bootstrap.min.js"></script>
<div>
<form method="post" class="form-inline" role="form" action="/clinic/editPatient">
    <div class="form-group">
	<label class="sr-only">Patient ID:</label>
	<input type="text" class="form-control" name="pId" id="pId" placeholder="Patient ID">
	</div>
	<div class="form-group">
	<input type="submit" class="btn btn-primary" value="Search">
	</div>
</form>
</div>
</body>
</html>