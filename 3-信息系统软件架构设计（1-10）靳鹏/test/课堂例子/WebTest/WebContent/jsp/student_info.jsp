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
    <div style="font-size:24"> ����ѧ����Ϣ </div>
    <form id="myform" action="jsp/student_add.jsp" method="post" >
      <table border="1">
         <tr>
           <td style="width:50"> ������</td>
           <td><input type="text" name="xming"/></td>
           <td style="width:50"> �Ա�</td>
           <td>
              <input type="radio" name="xbie"  value="��" checked/>��
              <input type="radio" name="xbie" value="Ů" />Ů
           </td>
        
         </tr>
         <tr>
           <td style="width:50"> ѧԺ��</td>
           <td>
              <select name="xyuan">
                 <option value="--------">��ѡ��ѧԺ</option>
                 <option value="����ѧԺ">����ѧԺ</option>
                 <option value="��еѧԺ">��еѧԺ</option>
              </select>
           </td>
           <td style="width:50"> רҵ��</td>
           <td>
              <input type="text" name="zhye" />
              
           </td>
        
         </tr>
      </table>
      <p/>
      <table>
        <tr>
          <td> <input type="submit" name="add" value="���ѧ����Ϣ"> </td>
        </tr>
      </table>
    </form>
 
  </div>

  <div id="llan" align="center">
    <div style="font-size:24"> ѧ����Ϣ��� </div>
    <table border="1">
      <tr align="center">
        <td style="width:100">����</td>
        <td style="width:100">�Ա�</td>
        <td style="width:100">ѧԺ</td>
        <td style="width:100">רҵ</td>
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