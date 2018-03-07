<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>  

  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<html>
<head>
    
    <link rel="stylesheet" type="text/css"   href="../js/jquery-easyui-1.4/themes/default/easyui.css" />  
    <!-- 引入easyUi小图标 -->  
    <link rel="stylesheet" type="text/css"   href="../js/jquery-easyui-1.4/themes/icon.css" />  
    <!-- 引入Jquery -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.min.js" charset="utf-8"></script>  
    <!-- 引入Jquery_easyui -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.easyui.min.js" charset="utf-8"></script>  
    <!-- 引入easyUi国际化--中文 -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.easyui.patch.js" charset="utf-8"></script> 
</head>
  
  <script type="text/javascript" >  
    /*
    $(function() {  
        $('#mydatagrid').datagrid({  
            title : '',  
            iconCls : 'icon-ok', 
            iconCls: 'icon-save', 
            //width : 1200,  
            pageSize : 20,//默认选择的分页是每页5行数据  
            pageList : [ 20, 30, 40, 50 ],//可以选择的分页集合  
            //nowrap : true,//设置为true，当数据长度超出列宽时将会自动截取  
            striped : true,//设置为true将交替显示行背景。  
            collapsible : true,//显示可折叠按钮  
            allowHeaderWrap:true,
            allowCellWrap:true,
            toolbar:"#tb",//在添加 增添、删除、修改操作的按钮要用到这个             
            url:'select',//url调用Action方法  
            loadMsg : '数据装载中......',  
            singleSelect:false,//为true时只能选择单行  
            checkbox:true,
            fitColumns:false,//允许表格自动缩放，以适应父容器  
            //sortName : 'xh',//当数据表格初始化时以哪一列来排序  
            //sortOrder : 'desc',//定义排序顺序，可以是'asc'或者'desc'（正序或者倒序）。  
            remoteSort : false, 
            
            frozenColumns : [ [ {  
                field : 'ck',  
                checkbox : true  
            } ] ],
            
            pagination : true,//分页  
            rownumbers : true,//行数  
            
            toolbar: [
                {
                    id: 'btnadd',
                    text: '指标考核统计',
                    iconCls: 'icon-search',
                    handler: function () {                        
                        var mch = [];
                        var rows = $('#mydatagrid').datagrid('getSelections');
                        for(var i=0; i<rows.length; i++){
                            mch.push(rows[i].xhao);
                        }                        
                        //window.location.href='../staticsAction.action?zhxSet='+encodeURI(mch);
                        window.location.href='../staticsAction.action?zhxSet='+mch;
                    }
                    //onclick:'getChanges()'
                }],
               
        });
        $('#mydatagrid').datagrid('hideColumn','xhao'); 
    });  */
  </script>   
  
</head>
  
<body>
  
	<div style="margin:20px 0;"></div>
	<table class="easyui-datagrid" title="学生基本信息浏览" style="width:700px;height:250px"
			data-options="rownumbers:true,singleSelect:true,url:'datagrid_data1.json',method:'get',toolbar:toolbar">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:100">姓名</th>
				<th data-options="field:'productid',width:100">性别</th>
				<th data-options="field:'listprice',width:100">学院</th>
				<th data-options="field:'unitcost',width:100">专业</th>
				
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var toolbar = [{
			text:'增加',
			iconCls:'icon-add',
			handler:function(){alert('add')}
		},{
			text:'修改',
			iconCls:'icon-cut',
			handler:function(){alert('cut')}
		},'-',{
			text:'删除',
			iconCls:'icon-cancel',
			handler:function(){alert('save')}
		}];
	</script> 
</body>
</html>