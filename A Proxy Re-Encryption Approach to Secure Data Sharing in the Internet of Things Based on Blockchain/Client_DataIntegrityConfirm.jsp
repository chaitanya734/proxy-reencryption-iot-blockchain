<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>

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
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style5 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
}
-->
</style>
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
        <h1 class="style1"><a href="index.html" class="style2">A Proxy Re-Encryption Approach to Secure Data<br />
          <br /> 
        Sharing in the Internet of ThingsBased on Blockchain</a></h1>
      </div>
      
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Remote Data Integrity Checking Results </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <p align="justify" class="style5"> 
		  
		   <%
	 	
	 	String csmac=null, ownermac=null,ocon=null,csname=null;
		
			
				String omac="";

	 	try {
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
		
		
			
	 		String file = request.getParameter("fname");
	
	 		Statement st = connection.createStatement();

	 		String on=(String)application.getAttribute("onname");


	 		String strQuery2 = "select * from cloudserver where fname='"
	 				+ file + "' and ownername='" + on + "'";
	 	

	 		ResultSet rs = st.executeQuery(strQuery2);
	 		if (rs.next()) {
	 			
	 			csmac = rs.getString("mac");//mac
					 			
	 			}
				
				
				else if (rs.next()!=true) {
								%>
<p>
<h2><%=file %>  is Not Found in the Cloud Server !!!</h2>
</p>
<%				
					 		}
        
					String strQuery3 = "Select * FROM dataowner where fname='"
									+ file + "' and ownername='" + on + "' ";

							ResultSet rss = st.executeQuery(strQuery3);
							if (rss.next()) {
								
								ownermac = rss.getString("mac");//mac
								
								}

							
					
							if(csmac.equals(ownermac) )
							{
							%>
<p>
<h1><%=file %>  is Secured !!!</h1>
</p>

<%
							}	
							else {
							
							
							String strQuery22 = "select * from dataowner where fname='"
	 				+ file + "' and ownername='" + on + "'";
	 		

	 		ResultSet rs1 = st.executeQuery(strQuery22);
	 		if (rs1.next()) {
				
	 			ocon = rs1.getString("ct");//contents
				omac=rs1.getString("mac");
	 			
	 			}
				
				String strQuery222 = "update  cloudserver set ct='"+ocon+"', mac='" + omac + "' where fname='" + file + "'  and ownername='"+on+"'";
				connection.createStatement().executeUpdate(strQuery222);
				
			
				
				
				
							
								%>
<p>
<h2><%=file %>  is Attacked by Attacker !!! </h2>  <br />
<Br>
<h2> and Data Recoverd from Data Owner Server</h2>
</p>
<p>
  <%				


					 		}
							
							
							
						 						
		  	connection.close();

		  	}catch (Exception e) {
		  		out.println(e.getMessage());
		  		e.printStackTrace();
		  	} %>
  
  
  
  
  </p>
</p>
<p>&nbsp;</p>
<p><a href="ClientMain.jsp">Back</a></p>
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
