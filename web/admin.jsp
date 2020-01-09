

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify</title>
        <link rel="stylesheet" type="text/css" href="css1.css">
    </head>
    <body background="image/asss.jpg">
        <marquee><i>Virtual Classroom</i></marquee>
<br><a href="index.html" align="right" style="text-decoration:none; "><b><h3>LOGOUT</h3></b></a>
<table  width='100%' border='0' cellpadding='0' cellspacing='4' bgcolor='#f2ffff'>
        <tr>
            <td align='center' style='word-spacing:180px;font-size:150%;padding-right:30px;color:#888888;white-space:nowrap;'> 
                    <a href='admin.jsp'style="text-decoration:none"> Modify </a>
                    <a href='studentdetails.jsp'style="text-decoration:none"> Student-Details </a>
                    <a href='teacherdetails.jsp'style="text-decoration:none"> Faculty-Details </a> 
                   
            </td>
        </tr>
    </table>
        
    <center>
        <H2>MODIFY : INSERT OR DELETE USERS</h2>
        <h3>
        <form action="modify.jsp" method="post">
            <table border="1" bgcolor="#ecf0f1">
                <tr>
                    <td>USER TYPE</td>
                    <td>
                <center>
                    <input type="radio" name="user" value="teacher">Teacher<br>
                    <input type="radio" name="user" value="student">Student
                </center>
                    </td>
                </tr>
                <tr>
                    <td>USER ID</td>
                    <td><input type="text" name="usr" /></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td><input type="password" name="pwd" /></td>
                </tr>
                <tr>
                    <td>NAME</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>COURSE</td>
                    
                           <td>
                <center>
                    <input type="radio" name="course" value="Civil">Computer<br>
                    <input type="radio" name="course" value="Computer">Civil<br>
                     <input type="radio" name="course" value="Electronics">Electronics 
                </center>
                    
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                    <input type="email" name="email"><br>
                    </td>
                </tr>
                
                <tr>
                    <td>ACTION</td>
                    <td>
                <center>
                    <input type="radio" name="mod" value="insert">Insert<br>
                    <input type="radio" name="mod" value="delete">Delete*
                </center>
                    </td>
                </tr>
                <tr>
                    <td>DONE</td>
                    <td><center><input type="submit" /></center></td>
                </tr>
            </table>
        </form>
        </h3>
    </center>
<h4>   * For Deletion You Can Enter Only 'User-Id' Of The User. </h4>
    </body>
</html>
