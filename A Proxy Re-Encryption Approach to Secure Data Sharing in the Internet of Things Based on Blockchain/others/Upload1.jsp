<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CD Store:: Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
.style5 {color: #FF0000}
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>

</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="support.html"><span>Data User </span></a></li>
          <li><a href="about.html"><span>Cloud Servers </span></a></li>
          <li><a href="blog.html"><span>END users </span></a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="#">CDStore</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> 
          <p><a href="#"><img src="images/slide1.jpg" width="920" height="320" alt="" /><span><big>Sed CDStore: Toward Reliable, Secure, and Cost-Efficient Cloud Storage via Convergent Dispersal</big></span></a> <a href="#"><img src="images/slide2.jpg" width="920" height="320" alt="" /></a><a href="#"><span><big>The system presents the design of CDStore, and in particular, describe how it combines convergent dispersal with two-stage deduplication to achieve both bandwidth and storage savings and also be robust against sidechanne attacks that can be launched by a malicious user on the client side. We demonstrate via cost analysis that CDStore<br />
            achieves significant monetary cost savings over baseline cloud storage solutions.</big></span></a> <a href="#"><img src="images/slide3.jpg" width="920" height="320" alt="" /><span><big>The system presents CDStore, a unified multi-cloud storage solution for users to outsource backup data with reliability, security, and cost efficiency guarantees. CDStore builds on an augmented secret sharing scheme called convergent dispersal, which supports deduplication by using deterministic contentderived hashes as inputs to secret sharing.</big></span></a> </p>
          </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Upload Your Data</h2>
          <p> <% try 
	{
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
      		String keys = "";
      		String h1="";
      		String filename="filename.txt";
      		//to get Enc Key
      		
      		
      		//now key var consist of enc key
      		String cname=(String)application.getAttribute("ownercloud");
			keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
      		//D:/Workspace Jayam/SelCSp/WebContent
      		
      		PrintStream p = new PrintStream(new FileOutputStream("E:/cdstore/"+filename));
			p.print(new String(cont));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream("E:/cdstore/"+filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
			
      		Statement st=connection.createStatement();
      		String sql="select * from cloudserver where fname='"+file+"'";
      		ResultSet rs=st.executeQuery(sql);
			if(!(rs.next())){
	
%>

<form action="Upload2.jsp" method="post">
<table width="598" border="1" align="center" cellpadding="10" cellspacing="0">

	<tr>
		<td width="286"><div align="center"><span class="style11 style10 style8 style1"><strong>File Name :- </strong></span></div></td>
		<td width="356"><input name="t42" type="text" id="t42" size="50"
			value="<%= file %>" readonly="readonly" /></td>
	</tr>
	<tr>
		<td width="286"><div align="center"><span class="style5 style8 style10 style11"><strong><strong>Enc Content :- </strong></strong></span></div></td>
		<td><textarea name="text1" cols="50" rows="15" readonly><%= cont %></textarea></td>
	</tr>
	<tr>
		<td width="286"><div align="center"><span class="style5 style8 style10 style11"><strong><strong>Dec Content :- </strong></strong></span></div></td>
		<td><textarea name="text2" cols="50" rows="15" readonly><%= encryptedValue %></textarea></td>
	</tr>
	<tr>
		<td><div align="center"><span class="style5 style8 style10 style11"><strong><strong>Hash: </strong></strong></span></div></td>
		<td><input name="t4" type="text" id="t4" size="50"
			value="<%= h1 %>" readonly="readonly" /></td>
	</tr>
	
	
	<tr>
		<td><div align="center" class="style1">Select Cloud Server </div></td>
		<td><select name="cname">
		  <option>cs1</option>
		  <option>cs2</option>
		  <option>cs3</option>
		    </select>
		  </td>
	</tr>
	<tr>
		<td>
		  <div align="center"></div></td>
		<td><input type="submit" name="Submit2" value="Upload" /></td>
	</tr>
</table>
</form>
<%

	   
			}else
			{
				%>
				<h2>File already Uploaded </h2>
				<%
			}
         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%></p>
        
          <div class="clr"></div>
        </div>
        
      </div>
    <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form></p>
          <p>&nbsp;</p>
          
          <h2><a href="#" class="com"><span>1</span></a></h2>
          <div class="clr"></div>
          <div class="post_content"><div class="post_content"><p align="justify" class="style1">&nbsp;</p>
            </div>
            <p class="spec"><a href="#" class="rm">Read more &raquo;</a></p>
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Owner  </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="DataOwnerMain.jsp">Home</a></li>
            <li><a href="index.html">Logout</a><a href="#"></a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Concepts</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
		  </li>
            Secret sharing,<br /> 
            Deduplication,<br /> 
            Cloud storage
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Secret sharing</span></h2>
        <p align="justify">Secret sharing is one form of redundancy that provides both reliability and security guarantees, and it has been realized in multi-cloud storage. Given the configuration parameters r, k, and n (where r &lt; k &lt; n), it transforms a data input (called secret) into n coded outputs (called shares), such that the secret can be recovered with any k out of n shares and the secret cannot be inferred if only r shares are available. Secret sharing often comes with high redundancy. For example, Shamir�s scheme has the same storage overhead as replication. However, it is plausible to reduce the redundancy of secret sharing to be slightly higher than that of erasure coding, while preserving security in the computational sense\</p>
      </div>
      <div class="col c3">
        <h2><span>Deduplication</span></h2>
        <p align="justify">Multi-cloud storage coalesces multiple public cloud storage services, operated by independent vendors, into a single storage pool. By dispersing data with some form of redundancy across multiple clouds, multi-cloud storage provides a plausible way to realize reliable and secure outsourced storage. By reliable, we mean that the stored data remains available even in the presence of cloud failures; by secure, we mean that the stored data is protected with the guarantees of confidentiality (i.e., the data is kept secret from unauthorized parties) and integrity (i.e., the data remains uncorrupted).</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>

</html>
