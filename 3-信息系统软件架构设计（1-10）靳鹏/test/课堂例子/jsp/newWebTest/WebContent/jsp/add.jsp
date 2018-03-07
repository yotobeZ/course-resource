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
		
		/* 提交结果，执行ajax */
			
		$(document).ready(function(){
		    
            $("#btn").click(function(){	
				$.ajax({
					type:'post',
					url:'../addStudent.action',//需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
					data:{
					    xming:$("input[name=xming]").val(),
						xbie:$("input[name=xbie]").val(),
						xyuan:$("#xyuan").combobox("getValue"),
						zhye:$("input[name=zhye]").val()
						},
					dataType:'json',//设置需要返回的数据类型					
					success:function(json){
						$("#s_xming").text(json[0]);
						$("#s_xbie").text(json[1]);
						$("#s_xyuan").text(json[2]);
						$("#s_zhye").text(json[3]);
						
						$("#xming").textbox('setValue','');  
						$("input[name='xbie'][value=0]").attr("checked",true); 
						$('#xyuan').combobox('setValue', '请选择学院');
						$("#zhye").textbox('setValue','');  ;
						
					},
					error:function(){
						alert("系统异常，请稍后重试！");
					}//这里不要加","
				});
			});
		})
		
		 //页面加载完成，绑定事件 
		$(document).ready(function(){			
			btn();//点击提交，执行ajax
		});
	</script>  


</head>
<body>
  <div  style="margin-top:100px">
    <form id="myform" action="" method="post" >
      <table border="1" class="easyui-table">
         <tr>
           <td style="width:50px;font-size:24px"> 姓名</td>
           <td><input type="text" name="xming" id="xming" class="easyui-textbox" style="font-size:24px"/></td>
           <td style="width:50; fons-ize:24px" /> 性别</td>
           <td>
              <input type="radio" style="font-size:24px" class="easyui-textbox" name="xbie"  value="男" checked/>男
              <input type="radio" style="font-size:24px" class="easyui-textbox" name="xbie" value="女" />女
           </td>
        
         </tr>
         <tr>
           <td style="width:50; fons-ize:24px">学院</td>
           <td>
              <select id="xyuan" class="easyui-combobox" style="font-size:24px">
                 <option value="--------" style="font-size:24px">请选择学院</option>
                 <option value="管理学院" style="font-size:24px">管理学院</option>
                 <option value="机械学院" style="font-size:24px">机械学院</option>
              </select>
           </td>
           <td style="width:50; fons-ize:24px"> 专业</td>
           <td>
              <input type="text" style="font-size:24px;" name="zhye" id="zhye" class="easyui-textbox"/>            
           </td>
        
         </tr>
      </table>
      <table>
            <tr> <td> <input type = "button"  id="btn" value="提交数据" /></td></tr>
      </table>
    </form>      
    <br/>      
    <H1>显示结果</H1>
    <br/>
	<ul>
	  <li>姓名：<span id="s_xming" style="font-sizt:24px">暂无数据</span></li>
	  <li>性别：<span id="s_xbie" style="font-sizt:24px">暂无数据</span></li>
	  <li>学院：<span id="s_xyuan" style="font-sizt:24px">暂无数据</span></li>
	  <li>专业：<span id="s_zhye" style="font-sizt:24px">暂无数据</span></li>
	</ul>
      
  </div>
</body>
<html>