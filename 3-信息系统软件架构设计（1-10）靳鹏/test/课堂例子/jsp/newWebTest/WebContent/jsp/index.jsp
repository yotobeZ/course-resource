<%@ page language="java" pageEncoding="utf-8" isELIgnored="false"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    
    <link rel="stylesheet" type="text/css"   href="js/jquery-easyui-1.4/themes/default/easyui.css" />  
    <!-- 引入easyUi小图标 -->  
    <link rel="stylesheet" type="text/css"   href="js/jquery-easyui-1.4/themes/icon.css" />  
    <!-- 引入Jquery -->  
    <script type="text/javascript"   src="js/jquery-easyui-1.4/jquery.min.js" charset="utf-8"></script>  
    <!-- 引入Jquery_easyui -->  
    <script type="text/javascript"   src="js/jquery-easyui-1.4/jquery.easyui.min.js" charset="utf-8"></script>  
    <!-- 引入easyUi国际化--中文 -->  
    <script type="text/javascript"   src="js/jquery-easyui-1.4/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>  
    <script type="text/javascript"   src="js/jquery-easyui-1.4/jquery.easyui.patch.js" charset="utf-8"></script> 
    
    <script type="text/javascript">
        function addTab(title, url) {
            if ($('#tt').tabs('exists', title)) {
                $('#tt').tabs('select', title);
            } else {
                var content = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
                $('#tt').tabs('add', {
                    title: title,
                    content: content,
                    closable: true
                });
            }
        }
        
        function refreshTab() {
            var index = $('#tt').tabs('getTabIndex', $('#tt').tabs('getSelected'));
            $('#tt').tabs('getTab', index).panel('refresh');
            alert(index);
        }

        function closeTab() {
            var index = $('#tt').tabs('getTabIndex', $('#tt').tabs('getSelected'));
            $('#tt').tabs('close', index);
        }

        function loginout() {
            $.messager.confirm('提示！', '确定退出系统？', function () {
                window.location.href = "login.htm";
            })
        }

	</script>

</head>

<body class="easyui-layout">
    
    <div data-options="region:'north',border:false" style="height: 60px; background: #B3DFDA;
        padding: 10px; font-size: xx-large">
        学生信息管理系统欢迎您！
        
        <div style="position: absolute; right: 0px; bottom: 0px;">
            
			<a href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-back'"
                    onclick="loginout()">退出系统</a>
        </div>
    </div>
    <div data-options="region:'west',split:true,title:'导航菜单'" style="width: 160px;" id="westreg">
        <div id="aa" class="easyui-accordion" style="position: absolute; top: 27px; left: 0px; right: 0px; bottom: 0px;">			
            <div title="信息浏览"  style="overflow: auto; padding: 10px;">				
                <ul class="easyui-tree">					
                   <li><a href="javascript:addTab('学生信息浏览','jsp/browerUI.jsp');">学生信息浏览</a></li>
                   <li><a href="javascript:addTab('学院信息浏览','jsp/brow.jsp');">学院信息浏览</a></li>				
                   <li><a href="javascript:addTab('专业信息浏览','');">专业信息浏览</a></li>
                </ul>                  			
            </div>			
           
            <div title="数据维护" style="padding: 10px;">				
                <ul class="easyui-tree">
                    <li><a href="javascript:addTab('显示用户账户','');">显示用户账户</a></li>
                    <li><a href="javascript:addTab('修改用户密码','');">修改用户密码</a></li>	
                    <li><a href="javascript:addTab('修改管理员密码','');">修改管理员密码</a> </li>
                    				
                </ul>			
            </div>		
        </div>	 
	</div>
    
	<div data-options="region:'south',border:true,split:false" style="height: 25px; background: #e0ecff;
        text-align: center; line-height: 23px">
        Copyright 合肥工业大学管理学院
	</div>
		
    <div data-options="region:'center'">
        
        <div class="easyui-tabs"  id="tt" fit="true" data-options="tools:'#tab-tools'">
            <div title="欢迎使用" >
				<h1>
                    Welcome to using The jQuery EasyUI!</h1>
                <h1>
                    Welcome to using Ajax</h1>
                <h1>
                    Welcome to using Json</h1>
                <h1>
                    所有程序都不难，难就难在不动手！</h1>
			</div>
        </div>
		
		<div id="tab-tools">
		    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" onclick="refreshTab()"></a>
		    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'" onclick="closeTab()"></a>
	    </div>
    </div>
   
</body>
</html>
