<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="blueLite.com.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
		        	connection = (Connection) DBConnection.createConnection();
		            
		            PreparedStatement pstmt=null; 
		            
		            pstmt=(PreparedStatement) connection.prepareStatement("delete from bluelite.employee where id = ? "); 
		            pstmt.setInt(1,id);
		            pstmt.executeUpdate(); 

		            RequestDispatcher rd=request.getRequestDispatcher("1_HR_EmployeeInformationPortal.jsp"); 
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