<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<center>&nbsp;</center>
<br><br><br>
  <%
  		   int uid = Integer.parseInt(request.getParameter("usid"));
		  
          
  
  
   try {
	   
		
		
     	String str="Yes";
       Statement st1 = connection.createStatement();
       String query1 ="update proxy_pkc set auth='"+str+"' where id='"+uid+"' ";
	   st1.executeUpdate (query1);
	
           
	   connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
   
   
   response.sendRedirect("proxy_keyauth.jsp");
		 
		  
		  
%>



</body></html>