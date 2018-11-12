<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="blueLite.com.util.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>





<%
    if(request.getParameter("delete_id")!=null) 
    {
        int id=Integer.parseInt(request.getParameter("delete_id")); 
      Connection connection = null;
        
        try
        {
        	connection = DBConnection.createConnection();
            
            PreparedStatement pstmt=null; 
            
            pstmt=connection.prepareStatement("delete from bluelite.purchase where InvoiceNumber=? "); 
            pstmt.setInt(1,id);
            pstmt.executeUpdate(); 

            RequestDispatcher rd=request.getRequestDispatcher("2_finance_purchase-information-portal.jsp"); 
            rd.forward(request, response); 
            
            pstmt.close(); 
            
            connection.close();   
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
%>
</body>
</html>