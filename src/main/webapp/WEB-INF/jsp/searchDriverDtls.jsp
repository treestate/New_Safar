<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <%@ include file="/WEB-INF/include.jsp" %>
 
<script type="text/javascript">
var jsonObj= "";
var  body = "";
var checkedVal = "";
function doOnLoad() {
		//setSectionSelected(160);
		 setDataTable();
	}
	
	
	
function setDataTable() {
	body = body.replace($('#driverSerachTable'), '');
          try {
				jsonObj = JSON.parse(document.getElementById('jsonData').value);
          } catch (error) {
				// Even though the response status was 2xx, this is still an error.
				ok = false;
				// The parse error contains the text of the body that failed to parse.
				jsonObj = ({ error: error, text: body });
          }
	var j = 0;
	$(function($) {
			var egmSerachTable = $('#driverSerachTable').dataTable({
				 data: jsonObj,
				   dom: 'TBfrtip',
				   buttons: [
							   {
								   extend: 'copy',
								   exportOptions: {
									   columns: [2,3]
								   }
							   },
							   {
								   extend: 'csv',
								   exportOptions: {
									     columns: [ 2,3 ]
								   }
							   },
							   {
								   extend: 'pdfHtml5',
								   exportOptions: {
										  columns: [ 2,3 ]
								   }
							   },
							   {
								   extend: 'print',
								   exportOptions: {
									    columns: [2,3]
								   }
							   }, 
						   ],			
						   
					tableTools: {
						sRowSelect:   'single',
					},
					columnDefs: [
					{
						targets: 0,
						data: null,
						defaultContent: ""
					},
					{
						targets: 1,
						visible: false,
						searchable: false
					},
				],
				
				columns: [
					{ "data": ""},
					{ "data": "driverMstId"},
					{ "data": "name"},
					{ "data": "gender"},
				],					
				//lengthMenu: [[15]],
			});
			searchGridInput(driverSerachTable);
		});
		checkBoxGridBtn('driverSerachTable');
		getcheckedValue();
		//setBackgroundColor();		
		
	}
	
	//to get value to checked Row
	function getcheckedValue(){
		var table = $('#driverSerachTable ').DataTable();
		$('#driverSerachTable tbody ').on( 'click', 'tr', function () {
			var rowIdx = table.row(this).data();
			if($(this).hasClass('selected')) {
				checkedVal = rowIdx.driverMstId; 
				if(checkedVal != ''){
					document.getElementById('viewBtn').setAttribute("class","btn btnDisableGrid btnEnable");					
					document.getElementById('editBtn').setAttribute("class","btn btnDisableGrid btnEnable");
				} else {
					document.getElementById('viewBtn').setAttribute("class","btn btnDisableGrid btnDisable");
					document.getElementById('editBtn').setAttribute("class","btn btnDisableGrid btnDisable");
				} 
			}
		});
	}
	function viewDriverRequest(){
		document.getElementById('driverMstId').value = checkedVal;
		submit("driverForm","viewDriverDtls.do");
	}
	
	function editDriverRequest(){
		document.getElementById('driverMstId').value = checkedVal;
		submit("driverForm","editDriverDtls.do");
	}
</script>
</head>
<body onload ="doOnLoad()">

<jsp:include page="header.jsp"/>

<form:form method="post" modelAttribute="driverForm" name="driverForm" enctype="multipart/form-data">
	<form:hidden id="driverMstId" path="driverVo.driverMstId"/>
	<form:hidden id="jsonData" path="driverVo.jsonData"/>
	<div class="container clear">
			<div class="row">
				<div class="col-md-12 padding0">
					<div class="col-md-3 hidden-xs">
						<h1 class="title"><spring:message code='label.egmSearch' text='Search Driver'/></h1>
					</div> 
				</div>
			</div>
			<font color="red" class="col-md-3">
				<form:errors path="error"/>
			</font>
			<div class="row">
				<div class="col-md-12 marginTop10">
					<div class="padding0" id="showdiv">
						<a id ="viewBtn" class="btn btnDisableGrid btnDisable "  onclick="viewDriverRequest()" ><i class="fa fa-search"></i><spring:message code='button.view' text='View'/> </a>
						<a id ="editBtn" class="btn btnDisableGrid btnDisable"  onclick="editDriverRequest()" > <i class="fa fa-pencil" title="Edit"></i> <spring:message code='button.edit' text='Edit'/> </a>
					</div>
					<div class="tab-content">
						<a class="btn-group btnSave" onclick="submit('driverForm','addNewDriver.do');"><spring:message code='label.newDriver' text='New Driver'/></a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row content">
				<div class="col-md-12 panel">
					<font color="red">	
						
					</font>
					<div id="DivMsg" style="color:red"></div>
					<div  class="clear gridScrollBar paddingTop10">
						<table id="driverSerachTable" class="table gridCheckButton">
							<thead>
								<tr>
									<th></th>
									<th style="display:none"></th>
									<th><spring:message code='label.DriverName ' text='Driver Name '/></th>
									<th><spring:message code='label.gender' text='Gender'/></th>
								</tr>
							</thead>
							<thead>
								<tr class="border0">
									<th data-label="" style="width: 1% !important"><input type="text" name="search_engine" class="search_init hide"/></th>
									<th data-label="encDriReqId" style="display:none"><input type="text" name="search_engine" class="search_init hide"/></th>
									<th data-label="Driver Name"  style="width:15% !important;"><input type="text" name="search_engine" class="search_init"/></th>
									<th data-label="Gender" style="width:10% !important;;" ><input type="text" name="search_engine" class="search_init"/></th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
			  <div id="gridBtn" class="pull-right marginTop10 marginbBttom10">
			</div>
		</div>
</form:form>
</body>
</html>