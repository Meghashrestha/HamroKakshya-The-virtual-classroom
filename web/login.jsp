
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>virtual classroom login</title>
</head>
<body  background="image/asss.jpg">
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<% 
  
 String userid=request.getParameter("usr"); 

String pwd=request.getParameter("pwd"); 

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root",""); 
Statement st= con.createStatement(); 
  
    
if (request.getParameter("user").equals("admin")){
    if(userid.equals("minor"))
    {
        if(pwd.equals("project"))
        {
            out.println("<br><h2><marquee behavior='alternate' direction='right'>### Welcome Admin ###</marquee></h2>"); 
            out.println("<a href='index.html' align='right' style='text-decoration:none; '><b><h3>LOGOUT</h3></b></a>");
            out.print("<table align='center' border='0'><tr><td><img src='image/a1.jpg' width='240px' height='200px'></td>");
            out.print("<td><center><h2>Insert Or Delete Users<br> <a href='admin.jsp'>Modify</a></h2></center></td></tr>");
            out.print("<tr><td><center><h2>Details Of Student Login<br> <a href='studentdetails.jsp'>Student Details</a></h2></center></td>");
            out.print("<td><image src='image/a2.jpg' width='240px' height='200px'></td></tr>");
            out.print("<tr><td><image src='image/a3.jpg' width='240px' height='200px'></td>");
            out.print("<td><center><h2>Details Of Teacher Login<br> <a href='teacherdetails.jsp'>Teacher Details</a></h2></center></td></tr></table>");
 
        }
        else 
        { 
            out.println("<h3>Invalid Password Try Again</h3>"); 
            out.println("<a href='index.html' align='center' style='text-decoration:none; '><b><h2> GO BACK </h2></b></a>");
        }
    }
    else 
    { 
        out.println("<h3>Invalid Password Try Again</h3>"); 
         out.println("<a href='index.html' align='center' style='text-decoration:none; '><b><h2> GO BACK </h2></b></a>");
    }
}
else if(request.getParameter("user").equals("student")){
    //user name set to session tyo lagera get user name in session uta halne
ResultSet rs=st.executeQuery("select * from student where username='"+userid+"' and password='"+pwd+"'"); 
if(rs.next()) 
{ 
out.println("<h2><marquee>*** Welcome "+userid+" ***</marquee></h2>"); 
out.println("<a href='index.html' align='right' style='text-decoration:none; '><b><h3>LOGOUT</h3></b></a>");
out.println("<table  width='100%' border='0' cellpadding='0' cellspacing='6' bgcolor='#f2ffff'><tr><td><center><img src='image/back.jpg' width='100%'height='350px' ></center></td></tr><tr><td align='center' style='word-spacing:180px;font-size:150%;padding-right:30px;color:#888888;white-space:nowrap;'> "
        + "<tr><td><a href='viewFiles.jsp'style=text-decoration:none;><center>Computer</center></a></td></tr>"
        + "<tr><td><a href='viewFiles2.jsp'style=text-decoration:none;><center>Civil</center></a></td></tr>"
        + "<tr><td><a href='viewFiles3.jsp'style=text-decoration:none;><center>Electronics</center></a></td></tr>"
        + "<tr><td> <a href='viewFiles4.jsp'style=text-decoration:none;><center>Subject-4</center></a></td></tr>"
        + "<tr><td><a href='viewFiles5.jsp'style=text-decoration:none;><center>Subject-5</center></a></td></tr></table>");
out.print("<table align='center' border='0'><tr><td><img src='image/123.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2> UPLOAD STUDY MATERIALS </h2> <a href='studentupload.jsp' style=text-decoration:none;>UPLOAD</a></center></td></tr><tr><td><center>");
out.println("<h3>To Generate New Id-Password Please Contect To Administrator(Admin) </h3>");
out.println("<h4><i>Virtual Classroom</i></h4>");
} 
else 
{ 
out.println("<h3>Invalid Password Try Again</h3><"); 
            out.println("<a href='index.html' align='center' style='text-decoration:none; '><b><h2> GO BACK </h2></b></a>");
} }
else
{
    ResultSet rs=st.executeQuery("select * from teacher where username='"+userid+"' and password='"+pwd+"'"); 
if(rs.next()) 
{ 
    String subject = rs.getString("course");
out.println("<h2><marquee>*** Welcome "+userid+" ***</marquee></h2>"); 
out.println("<a href='index.html' align='right' style='text-decoration:none; '><b><h3>LOGOUT</h3></b></a>");
if(subject.equals("Computer"))
{
out.print("<table align='center' border='0'><tr><td><img src='image/123.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2> UPLOAD STUDY MATERIALS </h2> <a href='teacher.jsp' style=text-decoration:none;>UPLOAD</a></center></td></tr><tr><td><center>");
out.print("<h2>VIEW STUDY MATERIALS</h2><a href='viewFiles.jsp'style=text-decoration:none;> VIEW </a>");
out.print("</center></td><td><img src='image/1233.png' width='400px' height='300px'></td></tr></table>");
out.print("<tr><td><img src='image/ss.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2>ASSIGNMENT SUBMITTED BY STUDENTS </h2> <a href='viewstudentupload.jsp' style=text-decoration:none;>VIEW ASSIGNMENTS</a></center></td></tr><tr><td><center>");
out.println("<h3>To Generate New Id-Password Please Contect To Administrator(Admin) </h3>");
out.println("<h4><i>Virtual Classroom</i></h4>");

}
else if(subject.equals("Civil"))
{
out.print("<table align='center' border='0'><tr><td><img src='image/123.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2> UPLOAD STUDY MATERIALS </h2> <a href='teacher2.jsp' style=text-decoration:none;>UPLOAD</a></center></td></tr><tr><td><center>");
out.print("<h2>VIEW STUDY MATERIALS</h2><a href='viewFiles2.jsp'style=text-decoration:none;> VIEW </a>");
out.print("</center></td><td><img src='image/1233.png' width='400px' height='300px'></td></tr></table>");
out.print("<tr><td><img src='image/ss.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2>ASSIGNMENT SUBMITTED BY STUDENTS </h2> <a href='viewstudentupload.jsp' style=text-decoration:none;>VIEW ASSIGNMENTS</a></center></td></tr><tr><td><center>");
out.println("<h3>To Generate New Id-Password Please Contect To Administrator(Admin) </h3>");
out.println("<h4><i>Virtual Classroom</i></h4>");

}
else if(subject.equals("Electronics"))
{
out.print("<table align='center' border='0'><tr><td><img src='image/123.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2> UPLOAD STUDY MATERIALS </h2> <a href='teacher3.jsp' style=text-decoration:none;>UPLOAD</a></center></td></tr><tr><td><center>");
out.print("<h2>VIEW STUDY MATERIALS</h2><a href='viewFiles3.jsp'style=text-decoration:none;> VIEW </a>");
out.print("</center></td><td><img src='image/1233.png' width='400px' height='300px'></td></tr></table>");
out.print("<tr><td><img src='image/ss.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2>ASSIGNMENT SUBMITTED BY STUDENTS </h2> <a href='viewstudentupload.jsp' style=text-decoration:none;>VIEW ASSIGNMENTS</a></center></td></tr><tr><td><center>");
out.println("<h3>To Generate New Id-Password Please Contect To Administrator(Admin) </h3>");
out.println("<h4><i>Virtual Classroom</i></h4>");
}
else if(subject.equals("sub4"))
{
out.print("<table align='center' border='0'><tr><td><img src='image/123.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2> UPLOAD STUDY MATERIALS </h2> <a href='teacher4.jsp' style=text-decoration:none;>UPLOAD</a></center></td></tr><tr><td><center>");
out.print("<h2>VIEW STUDY MATERIALS</h2><a href='viewFiles4.jsp'style=text-decoration:none;> VIEW </a>");
out.print("</center></td><td><img src='image/1233.png' width='400px' height='300px'></td></tr></table>");
out.print("<table align='center' border='0'><tr><td><img src='image/ss.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2>ASSIGNMENT SUBMITTED BY STUDENTS</h2> <a href='studentupload.jsp' style=text-decoration:none;>VIEW</a></center></td></tr><tr><td><center>");
out.print("<tr><td><img src='image/ss.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2>ASSIGNMENT SUBMITTED BY STUDENTS </h2> <a href='viewstudentupload.jsp' style=text-decoration:none;>VIEW ASSIGNMENTS</a></center></td></tr><tr><td><center>");
out.println("<h3>To Generate New Id-Password Please Contect To Administrator(Admin) </h3>");
out.println("<h4><i>Virtual Classroom</i></h4>");
}
else if(subject.equals("sub5"))
{
out.print("<table align='center' border='0'><tr><td><img src='image/123.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2> UPLOAD STUDY MATERIALS </h2> <a href='teacher5.jsp' style=text-decoration:none;>UPLOAD</a></center></td></tr><tr><td><center>");
out.print("<h2>VIEW STUDY MATERIALS</h2><a href='viewFiles5.jsp'style=text-decoration:none;> VIEW </a>");
out.print("</center></td><td><img src='image/1233.png' width='400px' height='300px'></td></tr></table>");
out.print("<tr><td><img src='image/ss.jpg' width='400px' height='300px'></td><td><center>");
out.print("<h2>ASSIGNMENT SUBMITTED BY STUDENTS </h2> <a href='viewstudentupload.jsp' style=text-decoration:none;>VIEW ASSIGNMENTS</a></center></td></tr><tr><td><center>");

out.println("<h3>To Generate New Id-Password Please Contect To Administrator(Admin) </h3>");
out.println("<h4><i>Virtual Classroom</i></h4>");

}
} 
else 
{ 
out.println("<h3>Invalid Password Try Again</h3>"); 
out.println("<a href='index.html' align='center' style='text-decoration:none; '><b><h2> GO BACK </h2></b></a>");
}
}

%>