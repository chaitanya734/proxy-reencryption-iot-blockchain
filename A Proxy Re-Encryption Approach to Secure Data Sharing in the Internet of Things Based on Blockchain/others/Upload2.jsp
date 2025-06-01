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
        
          <p> 
		  
		  
		   <%
	try {
		String file = request.getParameter("t42");
		String cont = request.getParameter("text2");
		String mac = request.getParameter("t4");
		String cloud = request.getParameter("cloud");
		String cname = request.getParameter("cname");
		
		String user=(String)application.getAttribute("onname");
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		String enc="";
		Statement st22 = connection.createStatement();
		
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;

			KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
			Cipher encoder = Cipher.getInstance("RSA");
			KeyPair kp = kg.generateKeyPair();

			Key pubKey = kp.getPublic();

			byte[] pub = pubKey.getEncoded();
			//				System.out.println("PUBLIC KEY" + pub);

			String pk = String.valueOf(pub);
			String rank = "0";
			String 	cmac="null";
			Statement st = connection.createStatement();

            String query="select * from cloudserver where mac='"+mac+"'";
            ResultSet rs=st.executeQuery(query);
			
			if(rs.next()==true)
			{
			
		//	cmac=rs.getString("mac");
			
		//	 if(cmac.equals(mac))
			// {
              out.println("DATA DEDUPLICATION FOUND IN THE CLOUD SERVER !!! FILE EXISTS ALREADY");			
			}
			 else if(rs.next()!=true)
             {
			
			String task = "Upload";

			String ownernam = (String) application.getAttribute("onname");

			String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"
					+ user
					+ "','"
					+ file
					+ "','"
					+ pk
					+ "','" + task + "','" + dt + "')";
					
					
					Statement st21 = connection.createStatement();
					st21.executeUpdate(strQuery2);
					
			
			Statement st2 = connection.createStatement();
			st2
			.executeUpdate("insert into cdstore_server(ownername,fname,ct,mac,sk,dt) values ('"
					+ ownernam
					+ "','"
					+ file
					+ "','"
					+ cont
					+ "','"
					+ mac
					+ "','"
					+ pk
					+ "','"
					+ dt
					+ "')");
			
			
			
			st2
					.executeUpdate("insert into  cloudserver(ownername,fname,ct,mac,sk,rank,dt,cloudname) values ('"
							+ ownernam
							+ "','"
							+ file
							+ "','"
							+ cont
							+ "','"
							+ mac
							+ "','"
							+ pk
							+ "','"
							+ rank
							+ "','"
							+ dt
							+ "','"
							+ cname
							+ "')");
							
							
							st2
					.executeUpdate("insert into  dataowner(ownername,fname,ct,mac,sk,rank,dt,cloudname) values ('"
							+ ownernam
							+ "','"
							+ file
							+ "','"
							+ cont
							+ "','"
							+ mac
							+ "','"
							+ pk
							+ "','"
							+ rank
							+ "','"
							+ dt
							+ "','"
							+ cname
							+ "')");
							
							%>
							  <p><h1 class="style8">Data Uploaded Successfully !!!</h1>
							
					<%
							
						}
%>
		
		  </p><br />
		<p>  <a href="DataOwnerMain.jsp">BACK</a></p>

		  <%
		 // 	}
		  		connection.close();
		  	}

		  	catch (Exception e) {
		  		out.println(e.getMessage());
		  		e.printStackTrace();
		  	}
		  %>
		  
		  </p>
        
          <div class="clr"></div>
        </div>
        
      </div>
    <div class="sidebar">
        <div class="searchform">
         
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
