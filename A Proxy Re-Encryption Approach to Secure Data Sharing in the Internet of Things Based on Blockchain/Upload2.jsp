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
.style6 {color: #FF0000}
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
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="ClientMain.jsp"><span>Home Page</span></a></li>
		  <li><a href="client.html">Data Owner </a></li>
		  <strong></strong>
          <li><a href="pcs.html">CSP</a></li>
          <li><a href="proxy.html"><span>Proxy</span></a></li>
          <li><a href="kgc.html"><span>TA</span></a></li>
          <li><a href="enduser.html"><span>Data User </span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style2">A Proxy Re-Encryption Approach to Secure Data Sharing<br />
          <br /> 
        in the Internet of ThingsBased on Blockchain</a></h1>
      </div>
     
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Confirm Upload Data </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
           <p> <p> 
		  
		  
		   <%
	try {
	
	
		long stime=System.currentTimeMillis();
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

			
			String pk="No Key";
			
			String rank = "0";
			String 	cmac="null";
			Statement st = connection.createStatement();
			Statement st2 = connection.createStatement();

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
					
			
			
			
			
			st2
					.executeUpdate("insert into  cloudserver(ownername,fname,ct,mac,sk,rank,dt) values ('"
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
							+ "')");
							
							
							st2
					.executeUpdate("insert into  dataowner(ownername,fname,ct,mac,sk,rank,dt) values ('"
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
							+ "')");
							
							
					long etime=System.currentTimeMillis();
					long ttime = etime-stime;
					long tpt=((cont.length())/ttime)*1024;
					
					Statement st1=connection.createStatement();
					st1.executeUpdate("insert into  results values ('"+file+"','"+ttime+"','"+tpt+"')"); 
					
							
							
							
							%>
							  <h1 class="style8 style6">Data Uploaded Successfully !!!</h1>
							
					<%
							
						}
%>
		
		  </p><br />
		<p>  <a href="ClientMain.jsp">BACK</a></p>

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
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Clinet</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ClientMain.jsp">Home</a></li>
			<li><a href="index.html">Log out </a></li>
          </ul>
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
