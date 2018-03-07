<%@ page contentType="text/html; charset=utf-8" import="java.util.*, Model.*, DAO.*,java.util.List,java.util.ArrayList"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <meta http-equiv="content-Type" content="text/html; charset=utf-8">    
</head>
<body>
  <div id="shr" align="center" style="margin-top:50">
    <div style="font-size:24">学生信息录入 </div>
    <form id="myform" action="addStd.action" method="post" >
      <table border="1">
         <tr>
           <td style="width:50"> 姓名</td>
           <td><input type="text" name="std.xming"/></td>
           <td style="width:50"> 性别</td>
           <td>
              <input type="radio" name="std.xbie"  value="男" checked/>男
              <input type="radio" name="std.xbie" value="女" />女
           </td>
        
         </tr>
         <tr>
           <td style="width:50">学院</td>
           <td>
              <select name="std.xyuan">
                 <option value="--------">请选择学院</option>
                 <option value="管理学院">管理学院</option>
                 <option value="机械学院">机械学院</option>
              </select>
           </td>
           <td style="width:50"> 专业</td>
           <td>
              <input type="text" name="std.zhye" />
              
           </td>
        
         </tr>
      </table>
      <p/>
      <table>
        <tr>
          <td> <input type="submit" name="add" value="确认提交信息"> </td>
        </tr>
      </table>
    </form>
 
  </div>
  

</body>
</html>