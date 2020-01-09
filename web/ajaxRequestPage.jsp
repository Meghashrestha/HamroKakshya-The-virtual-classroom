<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" 
        import ="java.sql.*"
 %>
<%
                                String username =request.getParameter("username");
                                String comment =request.getParameter("comment");
                                String email =request.getParameter("email");
                                        try {			
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");	
                                                PreparedStatement ps = con.prepareStatement("INSERT INTO comments VALUES(?,?,?)");
                                                ps.setString(1, username);
                                                ps.setString(2, comment);
                                                ps.setString(3, email);
                                                ps.executeUpdate();
						
                                                out.println("Comment Posted sucessfully !");
                                                
                                                con.close();
                                        }catch (Exception e) {
                                                   e.printStackTrace();
                                                   out.println("Error Posting Comments!");
  
                                        }
%>
