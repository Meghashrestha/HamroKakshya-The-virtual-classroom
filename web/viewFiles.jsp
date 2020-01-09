<%@ page import="java.io.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    
       <link rel="stylesheet" type="text/css" href="css1.css">
       <style>
           ul {
    background-color: #F1E8E6;
    width: 600px;
    border: 10px #0E0300;
    padding: 20px;
    margin: 25px;
}
body1 {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=button] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=button]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
    
    <body  background="image/asss.jpg">
    <marquee><i>Virtual Classroom</i></marquee>
    <a href="index.html" align="right" style="text-decoration:none; "><b><h3>LOGOUT</h3></b></a>
    
    
    <br>
    <h2><center><u><b>Civil</u></b></center></h2>
    <br>
    <table align="center" border="1" width="90%">
        <tr><th>File Name</th><th>Download File</th></tr>
<%
File f = new File("C:/upload/Computer");
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
%>
        <tr>
            <td><center><%=name%><center></td>
            <td><center><a href="download.jsp?f=<%=path%>">Download File</center></a></td>
        
        </tr>
     <%
        }
%>
</table>
<div>

	

<body1>

    <h3>DISSCUSSION</h3>

<div class="container">
  <form>
    <label for="fname">Name</label>
    <input type="text" id="username" name="username" placeholder="Your name..">

    <label for="lname">email</label>
    <input type="email" id="email" name="email" placeholder="Your email">

    <br>
    <label for="subject">comment</label>
    <textarea id="comment" name="comment" placeholder="Write something.." style="height:200px"></textarea>
<button onclick="loadAjax()">Post</button>
			<p id="print"></p>


  </form>
</div>

</body1>

		<script type="text/javascript">

		function loadAjax(){
			var username= document.getElementById("username").value;
			var comment= document.getElementById("comment").value;
                        var email= document.getElementById("email").value;

			if(username.trim() =="" || email.trim()=="" ||comment.trim()==""){
			alert("All fields are Required");
			return false;
			}

			
			var url="ajaxRequestPage.jsp?username="+username +"&email="+email +"&comment="+comment;



			if(window.XMLHttpRequest){
				
				request = new XMLHttpRequest();
				
			}else if(window.ActiveXObject){
				
				request = new ActiveXObject("Microsoft.XMLHTTP");
			}			
			try{
				request.onreadystatechange=sendInfo;
				request.open("POST",url,true);
				request.send();
				
			}catch(e){
			document.write(e);
			}			
		}

		function sendInfo(){
			var p =		document.getElementById("print");

			if(request.readyState ===1){
				var text = request.responseText;
				p.innerHTML="Please Wait...";
				console.log("1");
			}

			if(request.readyState ===2){
				var text = request.responseText;
				console.log("2");				
			}
			if(request.readyState ===3){
				var text = request.responseText;
				console.log("3");				
			}
			if(request.readyState ===4){
				var text = request.responseText;
				p.innerHTML=text;
			}
		}
		</script>
           
      

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/login"
     user="root"  password=""/>
 
<sql:query dataSource="${snapshot}" sql = "SELECT * from comments" var="result" />


 <c:forEach var="row" items="${result.rows}">
<ul style="list-style: none;">
  <li>NAME:   <c:out value="${row.username}"/>         ID:<c:out value="${row.email}"/></li>
  
  <li>COMMENT:  <c:out value="${row.comment}"/></li>
</ul>
</c:forEach>
     </div>
</body>
</html>