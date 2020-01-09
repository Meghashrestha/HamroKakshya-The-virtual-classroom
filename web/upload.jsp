<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.annotation.MultipartConfig"%>
<%@ page import = "java.security.Security" %>
<%@ page import = "java.util.*"  %>
<%@ page import = "javax.mail.*"%>
<%@ page import = "javax.mail.internet.*"%>
<%@ page import = "javax.mail.internet.MimeMessage"%>
<%@ page import= "javax.servlet.*"%>




<%! 
	public void sendEmail(String to, String messageString )  {
		// TODO Auto-generated method stub

		

	}

%>

<!DOCTYPE html>
    <head>
        <title>
            UploadFile
        </title>
    </head>
    <body  background="image/asss.jpg">
        <marquee><i>Virtual Classroom</i></marquee>
<br><a href="index.html" align="right" style="text-decoration:none; "><b><h3>LOGOUT</h3></b></a>
<%
      //String subject = request.getParameter("sub");
      //String subject = "sub1";
      String saveFile = "";
      String contentType = request.getContentType();
      if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
            DataInputStream in = new DataInputStream(request.getInputStream());
            int formDataLength = request.getContentLength();
            byte dataBytes[] = new byte[formDataLength];
            int byteRead = 0;
            int totalBytesRead = 0;
            while (totalBytesRead < formDataLength) {
                  byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                  totalBytesRead += byteRead;
            }
            String file = new String(dataBytes);
            saveFile = file.substring(file.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            //String fipath = saveFile;
            saveFile = "C:/upload/Computer/" + saveFile;
            
            File ff = new File(saveFile);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(dataBytes, startPos, (endPos - startPos));
                           
            fileOut.flush();
            fileOut.close();
            
            
            out.println("*****You have successfully upload the file by the name of**:");

           //Send Email 
           String messageString = "New file has been uploaded.";
           //list of emails
           //loop in array to send email
           String to = "sanamadhikari98@gmail.com";
            String to1 = "meghashrestha30@gmail.com";

           //sendEmail(to1 , message);
           
//String to = request.getParameter("email");
		final String from = "meghastha123456@gmail.com";
		final String pass = "999formulae";


		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		final String ssl_factory = "javax.net.ssl.SSLSocketFactory";

		Properties prop = new Properties();
		prop.setProperty("proxySet", "true");
		prop.setProperty("socksProxyHost","172.31.1.4");
		prop.setProperty("socksProxyPort","8080");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.setProperty("mail.smtp.socketFactory.class", ssl_factory);
		prop.setProperty("mail.smtp.socketFactory.fallback", "false");
		prop.setProperty("mail.smtp.port", "465");
		prop.setProperty("mail.smtp.socketFactory.port", "465");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.debug", "true");
		prop.put("mail.store.protocol", "pop3");
		prop.put("mail.transport.protocol", "smtp");

                Session mailSession = Session
		.getInstance(prop, new javax.mail.Authenticator(){

			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(from,pass);
			}
		});

		try{

			Message message = new MimeMessage(mailSession);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to1));
			message.setSubject("Notice of new materials upload");
			message.setText(messageString);
			Transport.send(message);

			System.out.println("Message sent.");


		}catch(Exception e){
			e.printStackTrace();
		}
    
%><br/>
<table border="2">
      <tr>
            <td><b>  </b>
            <%
                  out.println(saveFile);
                  }
            %>
            </td>
      </tr>
</table>
</body>
</html>
