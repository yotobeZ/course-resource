<%@ page contentType="text/html; charset=GBK" import="java.util.*, Model.*, DAO.*,java.util.List,java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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

<body class="easyui-layout">
    
    <div data-options="region:'north',border:false" style="height: 60px; background: #B3DFDA;
        padding: 10px; font-size: xx-large">
        ѧ����Ϣ����ϵͳ��ӭ����
        
        <div style="position: absolute; right: 0px; bottom: 0px;">
            
			<a href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-back'"
                    onclick="loginout()">�˳�ϵͳ</a>
        </div>
    </div>
    <div data-options="region:'west',split:true,title:'�����˵�'" style="width: 160px;" id="westreg">
        <div id="aa" class="easyui-accordion" style="position: absolute; top: 27px; left: 0px; right: 0px; bottom: 0px;">			
            <div title="��Ϣ���"  style="overflow: auto; padding: 10px;">				
                <ul class="easyui-tree">					
                   <li><a href="javascript:addTab('ѧ����Ϣ���','jsp/browerUI.jsp');">ѧ����Ϣ���</a></li>
                   <li><a href="javascript:addTab('ѧԺ��Ϣ���','');">ѧԺ��Ϣ���</a></li>				
                   <li><a href="javascript:addTab('רҵ��Ϣ���','');">רҵ��Ϣ���</a></li>
                </ul>                  			
            </div>			
           
            <div title="����ά��" style="padding: 10px;">				
                <ul class="easyui-tree">
                    <li><a href="javascript:addTab('��ʾ�û��˻�','');">��ʾ�û��˻�</a></li>
                    <li><a href="javascript:addTab('�޸��û�����','');">�޸��û�����</a></li>	
                    <li><a href="javascript:addTab('�޸Ĺ���Ա����','');">�޸Ĺ���Ա����</a> </li>
                    				
                </ul>			
            </div>		
        </div>	 
	</div>
    
	<div data-options="region:'south',border:true,split:false" style="height: 25px; background: #e0ecff;
        text-align: center; line-height: 23px">
        Copyright �Ϸʹ�ҵ��ѧ����ѧԺ
	</div>
		
    <div data-options="region:'center'">
        
        <div class="easyui-tabs"  id="home" fit="true" data-options="tools:'#tab-tools'">
            <div title="��ӭʹ��" >
				<h1>
                    Welcome to using The YJUI!</h1>
                <h1>
                    ��ӭ���м����������ύBUG</h1>
                <h1>
                    ��ϵ��ʽ�� QQ 175022146 Emial��zhf1102@163.com</h1>
                <h1>
                    ���ֽű�������EasyUI��ţ �����л��</h1>
			</div>
        </div>
		
		<div id="tab-tools">
		    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" onclick=""></a>
		    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" onclick=""></a>
	    </div>
       
    </div>
   
</body>
</html>