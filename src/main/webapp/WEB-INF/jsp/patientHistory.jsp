<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>Patient History Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="/clinic/css/bootstrap.min.css" rel="stylesheet">
    <link href="/clinic/css/datepicker.css" rel="stylesheet">

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
<script src="/clinic/js/bootstrap-datepicker.js"></script>
<div class="panel panel-info">
  <div class="panel-body">
  	<form method="post" class="form-horizontal" role="form" action="/clinic/updateMedicalHistory">
		<input type="hidden" name="pId" value="${pId}"/>
		<div class="form-group">
			<label class="col-md-2 control-label">Visit Date</label>
			<div class="input-append date" id="dp1" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
  				<input class="span2" size="16" type="text" value="12-02-2012">
  				<span class="add-on"><i class="icon-th"></i></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-2 control-label" >Problem</label>
			<div class="col-md-10">
			<textarea id="problem" name="problem" rows="4" class="form-control"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-2 control-label" >Symptoms</label>
			<div class="col-md-10">
			<textarea id="syptoms" name="symptoms" rows="4" class="form-control"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-2 control-label" >Diagnosis Report</label>
			<div class="col-md-10">
			<textarea id="diagnosisReport" name="diagnosisReport" rows="6" class="form-control"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-2 control-label" >Medicines</label>
			<div class="col-md-10">
			<textarea id="medicines" name="medicines" rows="6" class="form-control"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-2 control-label" >Suggested Tests</label>
			<div class="col-md-10">
			<textarea id="suggestedTests" name="suggestedTests" rows="2" class="form-control"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-2 control-label">Next Visit Date</label>
			<div class="input-append date" id="dp2" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
  				<input class="span2" size="16" type="text" value="12-02-2012">
  				<span class="add-on"><i class="icon-th"></i></span>
			</div>
		</div>
		<input type="button" class="btn btn-primary" value="Save Changes">
    </form>
  </div>
</div>  

<c:forEach items="${medicalRecords}" var="medicalRecord" >
<div class="panel panel-primary">
  <div class="panel-heading row">
  	<div class="col-md-8"><span> <b>Patient ID: ${pId}</b></span></div>
  	<div class="col-md-4"><span>Date: ${medicalRecord.visitDate} </span></div>
  </div>
  <div class="panel-body">
    <div class="row">
  		<div class="col-md-3"><span> <b>Problem:</b></span></div>
  		<div class="col-md-9"><p>${medicalRecord.problem}</p></div>
	</div>
	<div class="row">
  		<div class="col-md-3"><span> <b>Symptoms:</b></span></div>
  		<div class="col-md-9"><p>${medicalRecord.symptoms}</p></div>
	</div>
	<div class="row">
  		<div class="col-md-3"><span> <b>Diagnosis Report:</b></span></div>
  		<div class="col-md-9"><p>${medicalRecord.diagnosisReport}</p></div>
	</div>
	<div class="row">
  		<div class="col-md-3"><span> <b>Medicines:</b></span></div>
  		<div class="col-md-9"><p>${medicalRecord.medicines}</p></div>
	</div>
	<div class="row">
  		<div class="col-md-3"><span> <b>Suggested Tests:</b></span></div>
  		<div class="col-md-9"><p>${medicalRecord.suggestedTests}</p></div>
	</div>
	<div class="row">
  		<div class="col-md-3"><span> <b>Next Visit Date:</b></span></div>
  		<div class="col-md-9"><span> ${medicalRecord.nextVisitDate} </span></div>
	</div>
  </div>
</div>  
</c:forEach>
</body> 
</html>