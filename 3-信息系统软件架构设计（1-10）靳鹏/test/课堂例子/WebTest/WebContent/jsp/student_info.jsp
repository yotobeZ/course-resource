<%@ page contentType="text/html; charset=GBK" import="java.util.*, Model.*, DAO.*,java.util.List,java.util.ArrayList"%>

<html>
<head>
    <%
        Student std;
        StudentDAO dao = new StudentDAO();
        List lst = new ArrayList();        
        dao.Init();
        lst = dao.Select();
    %>
</head>
<body>
  <div id="shr" align="center" style="margin-top:50">
    <div style="font-size:24"> 输入学生信息 </div>
    <form id="myform" action="jsp/student_add.jsp" method="post" >
      <table border="1">
         <tr>
           <td style="width:50"> 姓名：</td>
           <td><input type="text" name="xming"/></td>
           <td style="width:50"> 性别：</td>
           <td>
              <input type="radio" name="xbie"  value="男" checked/>男
              <input type="radio" name="xbie" value="女" />女
           </td>
        
         </tr>
         <tr>
           <td style="width:50"> 学院：</td>
           <td>
              <select name="xyuan">
                 <option value="--------">请选择学院</option>
                 <option value="管理学院">管理学院</option>
                 <option value="机械学院">机械学院</option>
              </select>
           </td>
           <td style="width:50"> 专业：</td>
           <td>
              <input type="text" name="zhye" />
              
           </td>
        
         </tr>
      </table>
      <p/>
      <table>
        <tr>
          <td> <input type="submit" name="add" value="添加学生信息"> </td>
        </tr>
      </table>
    </form>
 
  </div>

  <div id="llan" align="center">
    <div style="font-size:24"> 学生信息浏览 </div>
    <table border="1">
      <tr align="center">
        <td style="width:100">姓名</td>
        <td style="width:100">性别</td>
        <td style="width:100">学院</td>
        <td style="width:100">专业</td>
      </tr>
      <%
          for(int i=0;i<lst.size(); i++){ 
               std = (Student)lst.get(i);
               
      %>
      <tr>
        <td ><%=std.getXming() %></td>
        <td ><%=std.getXbie() %></td>
        <td ><%=std.getXyuan() %></td>
        <td ><%=std.getZhye() %></td>
      </tr>
      <%
          }
       %>
       
       <% 
           lst=dao.Select();
       %>
    </table>
  </div>

</body>
</html>