<!DOCTYPE html>
<html lang="en">
#parse("content/base/back/common/head.vm")
<body style='overflow:scroll;overflow-x:hidden'>
	<div class="container bs-docs-container" style="width:100%;">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
				<button type="button" class="btn btn-default" id="formReturn" data-dismiss="modal" onclick="doUrl('$!{basePath}/${bussPackage}/back/${lowerName}/list.do')"><span class="glyphicon glyphicon-circle-arrow-left"></span> 返回</button>
				</div>
				  	<div class="panel-body">
				   		<form class="form-horizontal" role="form">
							  <fieldset disabled>
							  			<#list columnDatas as item>
										  	<#if item.domainPropertyName != 'id'>
										  	<#if item.columnName?lower_case != 'del_stat' 
											    && item.columnName?lower_case != 'create_by'
												&& item.columnName?lower_case != 'create_name' 
												&& item.columnName?lower_case != 'create_date' 
												&& item.columnName?lower_case != 'update_by'
												&& item.columnName?lower_case != 'update_name' 
												&& item.columnName?lower_case != 'update_date' 
												&& item.columnName?lower_case != 'creator'
												&& item.columnName?lower_case != 'editor' 
												&& item.columnName?lower_case != 'create_dt' 
												&& item.columnName?lower_case != 'edit_dt' 
												&& item.columnName?lower_case != 'last_edit_dt' 
												&& item.columnName?lower_case != 'record_version'>
												<#if item.columnType == "datetime" ||item.columnType == "date" || item.columnType == "timestamp">
													  <div class="form-group mno">
													    <label for="inputEmail3" class="col-sm-1 control-label" style="text-align:left;">${item.columnComment}</label>
													    <div class="col-sm-2">
													      <input type="text" value="$!dateTool.format("yyyy-MM-dd",$!{${lowerName}.${item.domainPropertyName}})" name="${item.domainPropertyName}" id="${item.domainPropertyName}" class="form-control" />
													    </div>
													  </div>
												<#else>
													 <div class="form-group mno">
													    <label for="inputEmail3" class="col-sm-1 control-label" style="text-align:left;">${item.columnComment}</label>
													    <div class="col-sm-2">
													      <input type="text" value="$!{${lowerName}.${item.domainPropertyName}}" name="${item.domainPropertyName}" id="${item.domainPropertyName}" class="form-control" />
													    </div>
													  </div>
												</#if>
											</#if>
											</#if>
										</#list> 
							  </fieldset>
						</form>
					</div>
			</div>
		</div>
	</div>
</body>
</html>