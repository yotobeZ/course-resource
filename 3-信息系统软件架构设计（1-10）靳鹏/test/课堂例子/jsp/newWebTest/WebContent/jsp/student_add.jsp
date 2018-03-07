<%@ page contentType="text/html; charset=GBK"  import="java.util.*, Model.*, DAO.* "  %>
<%
    //String  xming = new String(request.getParameter("xming").getBytes("GBK"));
    //String  xbie = new String(request.getParameter("xbie").getBytes("GBK"));
    //String xyuan = new String(request.getParameter("xyuan").getBytes("GBK"));
    //String zhye  =new String(request.getParameter("zhye").getBytes("GBK"));
    String  xming = new String(request.getParameter("xming").getBytes("ISO8859-1"),"ISO8859-1");
    String  xbie = new String(request.getParameter("xbie").getBytes("ISO8859-1"),"ISO8859-1");
    String xyuan = new String(request.getParameter("xyuan").getBytes("ISO8859-1"),"ISO8859-1");
    String zhye  =new String(request.getParameter("zhye").getBytes("ISO8859-1"),"ISO8859-1");
   
    Student std;
    StdDAO dao = new StdDAO();    
    std = new Student(xming,xbie,xyuan,zhye);
    dao.Add(std);
    response.sendRedirect("..");  
%>