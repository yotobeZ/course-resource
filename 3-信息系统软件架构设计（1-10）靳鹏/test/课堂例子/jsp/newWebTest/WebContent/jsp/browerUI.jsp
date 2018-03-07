<%@ page language="java" pageEncoding="utf-8" isELIgnored="false"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" type="text/css"   href="../js/jquery-easyui-1.4/themes/default/easyui.css" />  
    <!-- 引入easyUi小图标 -->  
    <link rel="stylesheet" type="text/css"   href="../js/jquery-easyui-1.4/themes/icon.css" />  
    <!-- 引入Jquery -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.min.js" charset="utf-8"></script>  
    <!-- 引入Jquery_easyui -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.easyui.min.js" charset="utf-8"></script>  
    <!-- 引入easyUi国际化--中文 -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.easyui.patch.js" ></script> 
    
    <script type="text/javascript">
        /*
        $(function(){
            $("#dg_user").datagrid({                
                
                url:'../select.action',
                fit: true, 
                fitColumns: true, 
                singleSelect: false,
                rownumbers: true, 
                nowrap: false, 
                pagination: true, 
                pageSize: 10,
                frozenColumns: [[{
                    field: 'ck',
                    checkbox: true
                }]],
                pageList: [10, 20, 30, 40, 50]   
            
               
            pagination : true,//分页  
            rownumbers : true//行数              
                
            })
            
        })*/
        /*
        function adduser() {
            $("<div/>").dialog({
                id : 'newDialog',
                href: "add.jsp",
                title: "添加用户",
                height: 200,
                width: 580,
                modal: true,
                iconCls: "icon-add",
                buttons: [
                         {
                             text: '确定添加',
                             iconCls: 'icon-add',
                             handler: function () {
                                 $("#myform").form("submit", {
                                     url: "../addStudent.action",
                                     onSubmit: function () {
                                         return $(this).form('validate');
                                     },
                                     success: function (result) {
                                         
                                         if (result == 'ok') {
                                             $("#newDialog").dialog('destroy');
                                             $.messager.alert("操作提示", "用户数据添加成功！", "info");
                                             $("#dg_user").datagrid("reload");
                                         }
                                         else {
                                             $.$.messager.alert("错误", result);
                                         }

                                     }
                                 });
                             }
                         },
                         {
                             text: '取消添加',
                             iconCls: 'icon-cancel',
                             handler: function () { $("#newDialog").dialog('destroy');}
                         }
                ],
                onClose: function () {
                    $(this).dialog('destroy');
                }
            });
        }
        /*
        function edituser() {
            
            
            var r = $("#dg_user").datagrid("getChecked");
           
            if (r.length < 1) {
                $.messager.alert("错误提示", "请选择一个要修改的用户！", "error"); 
                return; 
            }
            if (r.length > 1) {
                $.messager.alert("错误提示", "一次只能修改一位用户的信息！", "error"); 
                $("#dg_user").datagrid('clearSelections').datagrid('clearChecked');
                return;

            }
       
            $("<div/>").dialog({
                id: 'newDialog',
                href: "ui_user_edit.htm",
                title: "修改用户",
                height: 300,
                width: 800,
                modal: true,
                iconCls: "icon-edit",
                buttons: [
                   {
                        text: '确定修改',
                        iconCls: 'icon-edit',
                        handler: function () {
                            var d = $(this).closest('.window-body');
                            $("#f_user_edit").form("submit", {
                                url: "../ashx_ui/ui_user.ashx",
                                onSubmit: function (param) {
                                    param.action = 'edit';
                                    param.id = r[0].id;
                                    return $(this).form('validate');
                                },
                                success: function (result) {
                                    $("#newDialog").dialog('destroy');
                                    $.messager.alert("操作提示", "用户数据修改成功！", "info");
                                    $("#dg_user").datagrid("reload");
                                }
                            });
                        }
                    },
                    {
                        text: '取消修改',
                        iconCls: 'icon-cancel',
                        handler: function () { $("#newDialog").dialog('destroy'); }
                    }
                    ],
                onClose: function () {
                    $(this).dialog('destroy');
                }
            });

        }
        
        function deleteuser() {
            var rows = $("#dg_user").datagrid("getChecked");
            if (rows.length < 1) {                
                $.messager.alert("错误提示", "请选择要删除的用户！", "error");  
                return; 
            }
            $.messager.confirm('提示！', '确定删除这' + rows.length + '个用户?', function (r) {

                if (r) {
                    para = {};
                    para.action = "dele";
                    para.timespan = new Date().getTime();
                    para.id = "";
                    $.each(rows, function (i, row) {
                        para.id = para.id + "'" + row.id + "',";
                    });
                    
                    
                    $.ajax({
                        url: "../ashx_ui/ui_user.ashx",
                        data: para,
                        type: "POST",
                        dataType: "text",
                        success: function (result) {
                           $.messager.alert("操作提示", "用户数据删除成功！", "info");
                           $("#dg_user").datagrid("reload").datagrid('clearSelections').datagrid('clearChecked');                            
                        }
                    });
                }
            });
        }*/
        
    </script>
</head>
<body>
  <div region="center" style="position: absolute; top: 0px; left: 0px; right: 0px; bottom: 0px; ">
 
	<table  id="dg_user" class="easyui-datagrid" title="用户基本信息浏览" data-options="toolbar:toolbar">
		<thead>
			<tr>
                <th data-options="field:'xming',width:100">姓名</th>
				<th data-options="field:'xbie',width:100">性别</th>
				<th data-options="field:'xyuan',width:100">学院</th>
				<th data-options="field:'zhye',width:100">专业</th>
			</tr>
		</thead>
	</table>
  </div>
	<script type="text/javascript">
	    
        var toolbar = [{
	        text: '添加用户',
	        iconCls: 'icon-add',
	        handler: function () {adduser() }
	    }, {
	        text: '修改用户',
	        iconCls: 'icon-cut',
	        handler: function () { edituser()}
	    }, '-', {
	        text: '删除用户',
	        iconCls: 'icon-cancel',
	        handler: function () { deleteuser() }
	    }];
	</script> 

</body>
</html>
