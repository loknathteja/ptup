<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>Update Patient Page</title>
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
<div style="width:500px; ">
<form method="post" class="form-horizontal" role="form" action="/clinic/updatePatient">
<input type="hidden" name="pId" value="${patient.pId}"/>
<div class="form-group">
	<label class="col-md-2 control-label">First Name</label>
	<div class="col-md-10">
	<input id="firstName" name="firstName" type="text" class="form-control required" value="${patient.firstName}"/>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label" >Middle Name</label>
	<div class="col-md-10">
	<input id="middleName" name="middleName" type="text" class="form-control" value="${patient.middleName}"/>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label">Last Name</label>
	<div class="col-md-10">
	<input id="lastName" name="lastName" type="text" class="form-control required" value="${patient.lastName}"/>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label">Age</label>
	<div class="col-md-10">
	<input id="age" name="age" type="number" class="form-control required" min="1" max="100" step="1" value="${patient.age}"/>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label">Gender</label>
	<div class="col-md-10">
	<c:choose>
    <c:when test="${patient.male == true}">
	<span><input id="male" name="male" type="checkbox" class="form-control required" checked="checked"/></span>
	</c:when>
	<c:otherwise>
	<span><input id="male" name="male" type="checkbox" class="form-control required"/></span>
	</c:otherwise>
	</c:choose>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label">Is Married?</label>
	<div class="col-md-10">
	<c:choose>
    <c:when test="${patient.married == true}">
		<span><input id="married" name="married" type="checkbox" class="form-control required" checked="checked"/></span>
    </c:when>
    <c:otherwise>
        <span><input id="married" name="married" type="checkbox" class="form-control required" /></span>
    </c:otherwise>
	</c:choose>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label">Address</label>
	<div class="col-md-10">
	<input id="address" name="address" type="text" class="form-control required" value="${patient.address}"/>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label" >Reference</label>
	<div class="col-md-10">
	<input id="reference" name="reference" class="form-control" type="text" value="${patient.reference}"/>
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label" >Mobile</label>
	<div class="col-md-10">
	<input id="mobile" name="mobile" type="tel" class="form-control required" value="${patient.mobile}">
	</div>
</div>
<div class="form-group">
	<label class="col-md-2 control-label">Email</label>
	<div class="col-md-10">
	<input id="email" name="email" type="email" class="form-control required" value="${patient.email}">
	</div>
</div>
<div class="form-group col-md-2">
<input type="submit" class="btn btn-default" value="Save Changes">
</div>
</form>
</div>
</body>
</html>