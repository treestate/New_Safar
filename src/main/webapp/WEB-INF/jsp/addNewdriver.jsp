<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <%@ include file="/WEB-INF/include.jsp" %>
<meta charset="ISO-8859-1">

<script type="text/javascript">

</script>
</head>

<body>
	<jsp:include page="header.jsp"/>
	<form:form method="post" modelAttribute="driverForm" name="driverForm" enctype="multipart/form-data">
		<div class="container clear">
			 <div class="row">
				<div class="col-md-12">
					<h1 class="panel-box-title title"><spring:message code='label.newDriver' text='New Driver'/></h1>
					<h3 class="panel-box-title marginBottom10"><spring:message code='label.newDriver' text='New Driver'/>
				</div>	
				<div class="row content panel-box" >
					<div class="col-md-12">
						<h3 class="panel-box-title marginBottom10"><spring:message code='label.ShipBillDetls' text='Shipping Bill Details'/>
						</h3> 
					 </div>
				 </div>
			 </div>	
			 <font color="red">								
				<form:errors path="error"/>					
			</font>
			 <div class="row">
				  <div class="col-md-4 form-group">
					<label class="col-md-4 control-label" for="DriverName"> <span class="required"></span><spring:message code='label.driverNm' text='Driver Name'/></label>
					<div class="col-md-4 form-group">
						 <form:input type="text"  class="form-control col-md-8" id="name" path="driverVo.name" placeholder="Driver Name"/>
						 <div id="driverNmMsg" style="color:red;"></div>
					     <span class="errorRight"><form:errors path="driverVo.name" /></span>
				     </div>	
				 </div>
				  
				  <div class="col-md-12 padding0 col-md-offset-6 marginTop20">
					 <a class="btn-group btnSave" onclick="submitEmgRequest()">  <spring:message code='button.save' text='Save'/> </a>
				  </div> 
		     </div>
	    </div>
	</form:form>
	
</body>
</html>