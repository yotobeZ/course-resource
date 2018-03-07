<%@ page language="java" pageEncoding="utf-8" isELIgnored="false"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<%  
    String path = request.getContextPath();  
    
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html" />
    <title>用户登录</title>
    <link rel="stylesheet" type="text/css"   href="<%=path%>/javascript/themes/default/easyui.css" />  
    <!-- 引入easyUi小图标 -->  
    <link rel="stylesheet" type="text/css"   href="<%=path%>/javascript/themes/icon.css" />  
    <!-- 引入Jquery -->  
    <script type="text/javascript"   src="<%=path%>/javascript/jquery.min.js" charset="utf-8"></script>  
    <!-- 引入Jquery_easyui -->  
    <script type="text/javascript"   src="<%=path%>/javascript/jquery.easyui.min.js" charset="utf-8"></script>  
    <!-- 引入easyUi国际化--中文 -->  
    <script type="text/javascript"   src="<%=path%>/javascript/locale/easyui-lang-zh_CN.js" charset="utf-8"></script>  
    <script type="text/javascript"   src="<%=path%>/javascript/jquery.easyui.patch.js" charset="utf-8"></script>
     
    <script type="text/javascript">
        function cleardata(){
            $('#loginForm').form('clear');
        }
        function login(){
            if($("input[name='login']").val()=="" || $("input[name='password']").val()==""){
                $("#showMsg").html("用户名或密码为空，请输入");
                $("input[name='login']").focus();
            }else{
            //ajax异步提交  
                $.ajax({            
                    type:"POST",   //post提交方式默认是get
                    url:"login.action", 
                    data:$("#loginForm").serialize(),   //序列化               
                    error:function(request) {      // 设置表单提交出错                 
                        $("#showMsg").html(request);  //登录错误提示信息
                    },
                    success:function(data) {
                      document.location = "index.action";
                    }            
                });       
            } 
        }
    </script>
 
</head>
<body>
  <div id="loginWin" class="easyui-window" title="登录" style="width:350px;height:188px;padding:5px;"
   minimizable="false" maximizable="false" resizable="false" collapsible="false">
    <div class="easyui-layout" fit="true">
            <div region="center" border="false" style="padding:5px;background:#fff;border:1px solid #ccc;">
        <form id="loginForm" method="post">
            <div style="padding:5px 0;">
                <label for="login">帐号:</label>
                <input type="text" name="login" style="width:260px;"></input>
            </div>
            <div style="padding:5px 0;">
                <label for="password">密码:</label>
                <input type="password" name="password" style="width:260px;"></input>
            </div>
             <div style="padding:5px 0;text-align: center;color: red;" id="showMsg"></div>
        </form>
            </div>
            <div region="south" border="false" style="text-align:right;padding:5px 0;">
                <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="login()">登录</a>
                <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="cleardata()">重置</a>
            </div>
    </div>
  </div>
</body>
</html>