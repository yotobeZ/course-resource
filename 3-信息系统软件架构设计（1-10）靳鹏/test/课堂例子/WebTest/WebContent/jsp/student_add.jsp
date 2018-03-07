<%@ page contentType="text/html; charset=GBK"  import="java.util.*, Model.*, DAO.* "  %>
<%
    String  xming = new String(request.getParameter("xming").getBytes("iso-8859-1"));
    String  xbie = new String(request.getParameter("xbie").getBytes("iso-8859-1"));
    String xyuan = new String(request.getParameter("xyuan").getBytes("iso-8859-1"));
    String zhye  =new String(request.getParameter("zhye").getBytes("iso-8859-1"));
    Student std;
    StudentDAO dao = new StudentDAO();    
    std = new Student(xming,xbie,xyuan,zhye);
    dao.Add(std);
    response.sendRedirect("..");  
%>