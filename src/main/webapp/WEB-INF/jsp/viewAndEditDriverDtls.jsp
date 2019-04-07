<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <%@ include file="/WEB-INF/include.jsp" %>
<meta charset="ISO-8859-1">

<script type="text/javascript">

	function updateDriverDtls(){
		submit("driverForm","saveDriverDtls.do");
		
	}
</script>
</head>

<body>
	<jsp:include page="header.jsp"/>
	<form:form method="post" modelAttribute="driverForm" name="driverForm" enctype="multipart/form-data">
	
	<form:hidden id="driverMstId" path="driverVo.driverMstId"/>
		<div class="container panel-box clear">
			 <div class="row">
				<div class="col-md-12">
					<h1 class="panel-box-title title col-md-12 marginBottom10"><spring:message code='label.viewDriver' text='View Driver'/></h1>
					
				</div>	
			 </div>	
			 <font color="red">								
				<form:errors path="error"/>					
			</font>
			 <div class="row">
				  <div class="col-md-4 form-group">
					<label class="col-md-3 control-label" for="DriverName"> <span class="required"></span><spring:message code='label.firstNm' text='First Name'/></label>
					<div class="col-md-8 form-group">
						 <form:input type="text"  class="form-control col-md-4" id="firstName" path="driverVo.firstName" placeholder="Driver First Name"/>
						 <div id="driverNmMsg" style="color:red;"></div>
					     <span class="errorRight"><form:errors path="driverVo.firstName" /></span>
				     </div>	
				 </div>
				  <div class="col-md-4 form-group">
					<label class="col-md-3 control-label" for="DriverName"> <span class="required"></span><spring:message code='label.lastNm' text='Last Name'/></label>
					<div class="col-md-8 form-group">
						  <form:input type="text"  class="form-control col-md-4" id="lastName" path="driverVo.lastName" placeholder="Driver Last Name"/>
						 <div id="driverNmMsg" style="color:red;"></div>
					     <span class="errorRight"><form:errors path="driverVo.firstName" /></span>
				     </div>	
				 </div>
				 <div class="col-md-4 form-group">
					<label class="col-md-3 control-label" for="MobileNo"> <span class="required"></span><spring:message code='label.mobileNo' text='Mobile No.'/></label>
					<div class="col-md-8 form-group">
						 <form:input type="text"  class="form-control col-md-8" id="mobileNo" path="driverVo.mobileNo" placeholder="Mobile No."/>
						 <div id="mobileNoMsg" style="color:red;"></div>
					     <span class="errorRight"><form:errors path="driverVo.mobileNo" /></span>
				     </div>	
				 </div>
				 <div class="col-md-4 form-group">
					<label class="col-md-3 control-label" for="gender"> <span class="required"></span><spring:message code='label.gender' text='Gender'/></label>
					<div class="col-md-8 form-group">
						 <form:input type="text"  class="form-control col-md-8" id="gender" path="driverVo.gender" placeholder="Gender"/>
						 <div id="genderMsg" style="color:red;"></div>
					     <span class="errorRight"><form:errors path="driverVo.gender" /></span>
				     </div>	
				 </div>
				 <div class="col-md-4 form-group">
					<label class="col-md-3 control-label" for=address> <span class="required"></span><spring:message code='label.address' text='Address'/></label>
					<div class="col-md-8 form-group">
						 <form:input type="text"  class="form-control col-md-8" id="address" path="driverVo.address" placeholder="Address"/>
						 <div id="genderMsg" style="color:red;"></div>
					     <span class="errorRight"><form:errors path="driverVo.address" /></span>
				     </div>	
				 </div>
				 <div class="col-md-4 form-group">
					<label class="col-md-3 control-label" for="vehicalDtls"> <span class="required"></span><spring:message code='label.vehicalDtls' text='Vehical Details'/></label>
					<div class="col-md-8 form-group">
						 <form:input type="text"  class="form-control col-md-8" id="vehicalDtls" path="driverVo.vehicalDtls" placeholder="Vehical Details"/>
						 <div id="vehicalDtlsMsg" style="color:red;"></div>
					     <span class="errorRight"><form:errors path="driverVo.vehicalDtls" /></span>
			    	 </div>	
				 </div>
				  <div class="col-md-12 padding0 col-md-offset-6 marginTop20">
					 <a class="btn-group btnSave" onclick="updateDriverDtls()">  <spring:message code='button.save' text='Save'/> </a>
					  <a class="btn-group btnBack" onclick="submit('driverForm','loadAddDriver.do');">  <spring:message code='button.back' text='Back'/> </a>
				  </div> 
		     </div>
	    </div>
	</form:form>
	
</body>
</html>