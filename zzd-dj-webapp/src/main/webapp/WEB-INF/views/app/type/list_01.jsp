 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    
    <jsp:include page="/WEB-INF/views/system/common.jsp"></jsp:include>
    <style type="text/css">
        #index {
            padding: 15px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            opacity: 0;
            font-size: 12px;
        }
        .index-l {
            padding: 10px;
            width: 48%;
            overflow: auto;
        }
    </style>
</head>

<body>
<div id="index">
    <!--表格-->
    <div class="index-l">
    
		     <div class="form-item" style="margin-top: 0.5%">
			       <label for="" style=" padding-left: 20%;" class="label-top" >标题：</label>
			       <input type="text" class="easyui-textbox" id="type_title" data-options="min:0,precision:2"/>

		      		<a id="type_search" href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true">搜索</a>
		      </div>
	      <div style="margin-top: 0.5%">
	      	 <a href="javascript:void(0)" onclick="addWin('/app/type/add_01',850,500)" data-options="iconCls:'fa fa-area-chart'" id="uadd" class="easyui-linkbutton primary" style="height: 32px;border-left-width: 1px;margin-left: 29px;">新增</a>
       		  <a href="javascript:void(0)" onclick="editWin('type_grid','/app/type/edit_01',850,500)" id="uedit" class="easyui-linkbutton error" data-options="iconCls:'fa fa-gears'">修改</a>
       		  <a href="javascript:void(0)" onclick="refresh('type_grid')" id="ubreak" class="easyui-linkbutton success" data-options="iconCls:'fa fa-desktop'">刷新</a>
	      </div>
	      </div>
	    <div class="index-1" style="opacity: 1;width:100%;height:620px;margin-top: 0.5%">
	        <table id="type_grid" class="easyui-datagrid" data-options="${dataGrid }"></table>
    	</div>

<div id="uWin" style="display: none;"></div></div>
<script type="text/javascript">
$('#type_search').click(function() {
	  var title = $('#type_title').val();
	  console.log(title)
	  $('#type_grid').datagrid('load', {    
		  title: title
		});  
	});
	
</script>
</body>

</html>