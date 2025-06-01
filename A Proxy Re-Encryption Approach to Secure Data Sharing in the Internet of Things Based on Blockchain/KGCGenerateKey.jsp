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
	   
		 KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
		 Cipher encoder = Cipher.getInstance("RSA"); 
		 KeyPair kp = kg.generateKeyPair(); 
		 PublicKey pubKey = kp.getPublic(); 
		 
		 // RSA produces 1024 bits Key
		 
		byte[] pub = pubKey.getEncoded();
		String s = pub.toString();
		
     	String str="Yes";
       Statement st1 = connection.createStatement();
       String query1 ="update cloudserver set sk='"+s+"' where id='"+uid+"' ";
	   st1.executeUpdate (query1);
	  
	  Statement st11 = connection.createStatement();
       String query11 ="update dataowner set sk='"+s+"' where id='"+uid+"' ";
	   st11.executeUpdate (query11);
	  
	   
           
	   connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
   
   
   response.sendRedirect("KGCKeyGenerator.jsp");
		 
		  
		  
%>



</body></html>