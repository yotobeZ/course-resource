<%@ page language="java" pageEncoding="utf-8" isELIgnored="false"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
 
</head>
<body>
  <center>
      <form name = "myform" method="get" action="loginaction">
          <table>
            <tr>
              <td><label style="font-size:24px"> 账户</label></td>
              <td><input type="text" name="std.name" value="" style="width:150px;font-size:20px"></td >
            </tr>
            <tr>
              <td><label style="font-size:24px"> 密码</label></td>
              <td><input type="password" name="std.pwd" value="" style="width:150px;font-size:20px"></td >
            </tr>
          </table>
          <table>
            <tr>
              <td><input type="submit" name="button" value="提交" style="width:150px;font-size:20px"></td>
            </tr>
          </table>
          
      </form>
  </center>
</body>
</html>