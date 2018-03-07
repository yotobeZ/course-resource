<%@ page contentType="text/html; charset=utf-8" import="java.util.*, Model.*, DAO.*,java.util.List,java.util.ArrayList"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
    <meta http-equiv="content-Type" content="text/html; charset=utf-8">
</head>
<body>
    <div id="llan" align="center">
    <div style="font-size:24"> 学生信息浏览 </div>
    <table border="1">
      <tr align="center">
        <td style="width:100">姓名</td>
        <td style="width:100">性别</td>
        <td style="width:100">学院</td>
        <td style="width:100">专业</td>
      </tr>
      
      <tr align="center">
        <td style="width:100"> <input type="text" name="std.xming" value="<s:property value='std.xming'/>" /> </td>
        <td style="width:100"><input type="text" name="std.xbie" value="<s:property value='std.xbie'/>" /></td>
        <td style="width:100"><input type="text" name="std.xyuan" value="<s:property value='std.xyuan'/>" /></td>
        <td style="width:100"><input type="text" name="std.zhye" value="<s:property value='std.zhye'/>" /></td>
      </tr>
      
    </table>
  </div>

</body>
</html>