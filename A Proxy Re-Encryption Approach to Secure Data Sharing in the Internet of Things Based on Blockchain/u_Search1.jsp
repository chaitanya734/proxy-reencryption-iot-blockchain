<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 24px}
.style5 {color: #FFFFFF}
.style6 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
		  <li><a href="client.html">Data Owner </a></li>
		  <strong></strong>
          <li><a href="pcs.html">CSP</a></li>
          <li><a href="proxy.html"><span>Proxy</span></a></li>
          <li><a href="kgc.html"><span>TA</span></a></li>
          <li><a href="enduser.html"><span>Data User </span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style2">A Proxy Re-Encryption Approach to Secure Data <br />
          <br />
        Sharing in the Internet of ThingsBased on Blockchain</a></h1>
      </div>
     
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Searched File Status !!! </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
	  


<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>


          <table width="605" border="1.5" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td width="60" height="29" bgcolor="#FF0000"><div align="center" class="style21 style27 style5"><strong><span class="style28">Id </span></strong></div></td>
                <td width="101" bgcolor="#FF0000"><div align="center" class="style21 style27 style5"><strong><span class="style28">Owner Name </span></strong></div></td>
                <td width="123" bgcolor="#FF0000"><div align="center" class="style21 style27 style5"><strong><span class="style28">File Name </span></strong></div></td>
                <td width="173" bgcolor="#FF0000"><div align="center" class="style21 style27 style5"><strong><span class="style28">Download Data </span></strong></div></td>
                <td width="136" bgcolor="#FF0000"><div align="center" class="style21 style27 style5"><strong><span class="style28">Rank</span></strong></div></td>
				<td width="136" bgcolor="#FF0000"><div align="center" class="style21 style27 style5"><strong><span class="style28">Uploaded Date</span></strong></div></td>
                <%	  
			  
			  
	
try 
  {
  
  			String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
			int i=0,j=0,k=0;
   
            String keyword = request.getParameter("keyword").toLowerCase();
          
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		
      		
		
				int found=0,total=0;
				String query="select * from cloudserver"; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					String oname=rs.getString(2); // fname
					String fname =rs.getString(3); // desc
					String ct=rs.getString(4); 
					String rank=rs.getString(7);
					String dt=rs.getString(8);
			
								
					byte[] keyValue = keys.getBytes();
      				Key key = new SecretKeySpec(keyValue, "AES");
      				Cipher c = Cipher.getInstance("AES");
      				c.init(Cipher.DECRYPT_MODE, key);
      				
					String decryptedValue = new String(Base64.decode(ct.getBytes()));
				
					
					if((decryptedValue.toLowerCase().contains(keyword))||(fname.toLowerCase().contains(keyword)))
					{
						
								%>
              </tr>
              <tr>
                <td height="46"><div align="center" class="style22 style26 style6"><strong><%=i%></strong></div></td>
                <td><div align="center" class="style22 style26 style6"><strong><%=oname%></strong></div></td>
                <td><div align="center" class="style22 style26 style6"><strong><%=fname%></strong></div></td>
                <td><div align="center" class="style22 style26 style6"><strong><a href="Download.jsp?fname=<%=fname%>"> Download </a></strong></div></td>
                <td><div align="center" class="style22 style26 style6"><strong><%=rank%></strong></div></td>
				<td><div align="center" class="style22 style26 style6"><strong><%=dt%></strong></div></td>
              </tr>
              <%
					
					} // end if
											
			  		  } // end while
			 
			connection.close();
				} // end try
			catch(Exception e)
			{
			out.println(e.getMessage());
			}
%>
            </table>
			
			
			<p>&nbsp;</p>
			<p align="center"><a href="EndUserMain.jsp">Back</a></p>
</div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></a></div></body>
</html>
