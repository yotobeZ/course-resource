<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>  

  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<html>
<head>
    
    <link rel="stylesheet" type="text/css"   href="../js/jquery-easyui-1.4/themes/default/easyui.css" />  
    <!-- ����easyUiСͼ�� -->  
    <link rel="stylesheet" type="text/css"   href="../js/jquery-easyui-1.4/themes/icon.css" />  
    <!-- ����Jquery -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.min.js" charset="utf-8"></script>  
    <!-- ����Jquery_easyui -->  
    <script type="text/javascript"   src="../js/jquery-easyui-1.4/jquery.easyui.min.js" charset="utf-8"></script>  
    <!-- ����easyUi���ʻ�--���� -->  
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
            pageSize : 20,//Ĭ��ѡ��ķ�ҳ��ÿҳ5������  
            pageList : [ 20, 30, 40, 50 ],//����ѡ��ķ�ҳ����  
            //nowrap : true,//����Ϊtrue�������ݳ��ȳ����п�ʱ�����Զ���ȡ  
            striped : true,//����Ϊtrue��������ʾ�б�����  
            collapsible : true,//��ʾ���۵���ť  
            allowHeaderWrap:true,
            allowCellWrap:true,
            toolbar:"#tb",//����� ����ɾ�����޸Ĳ����İ�ťҪ�õ����             
            url:'select',//url����Action����  
            loadMsg : '����װ����......',  
            singleSelect:false,//Ϊtrueʱֻ��ѡ����  
            checkbox:true,
            fitColumns:false,//�������Զ����ţ�����Ӧ������  
            //sortName : 'xh',//�����ݱ���ʼ��ʱ����һ��������  
            //sortOrder : 'desc',//��������˳�򣬿�����'asc'����'desc'��������ߵ��򣩡�  
            remoteSort : false, 
            
            frozenColumns : [ [ {  
                field : 'ck',  
                checkbox : true  
            } ] ],
            
            pagination : true,//��ҳ  
            rownumbers : true,//����  
            
            toolbar: [
                {
                    id: 'btnadd',
                    text: 'ָ�꿼��ͳ��',
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
	<table class="easyui-datagrid" title="ѧ��������Ϣ���" style="width:700px;height:250px"
			data-options="rownumbers:true,singleSelect:true,url:'datagrid_data1.json',method:'get',toolbar:toolbar">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:100">����</th>
				<th data-options="field:'productid',width:100">�Ա�</th>
				<th data-options="field:'listprice',width:100">ѧԺ</th>
				<th data-options="field:'unitcost',width:100">רҵ</th>
				
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var toolbar = [{
			text:'����',
			iconCls:'icon-add',
			handler:function(){alert('add')}
		},{
			text:'�޸�',
			iconCls:'icon-cut',
			handler:function(){alert('cut')}
		},'-',{
			text:'ɾ��',
			iconCls:'icon-cancel',
			handler:function(){alert('save')}
		}];
	</script> 
</body>
</html>