
<%@page import="java.sql.*" %>
<%@include file="connect.jsp" %>

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
.style4 {font-size: 18px}
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
        <h1 class="style1"><a href="index.html" class="style2">A Proxy Re-Encryption Approach to Secure Data Sharing <br />
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
          <h2>Welcome to End User Main:: <%=application.getAttribute("enduser") %></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div align="justify" class="style3"><form id="form1" name="form1" method="post" action="ReqSk.jsp">
<table width="598" border="1" align="center" cellspacing="0" cellpadding="7">

	<tr>
		<td><strong><span class="style24 style4"><strong>Enter File Name :-</strong></span></strong></td>
		<td><input name="fname" type="text" id="t42"
			size="50" required="required" /></td>
	</tr>
	
	<tr>
		<td><strong><span class="style24 style4"><strong>Enter Owner Name:-</strong></span></strong></td>
		<td><input name="oname" type="text" id="t43"
			size="50" required="required" /></td>
	</tr>

	<tr>
		<td>
		<div align="right"><span class="style9"><span class="style19"><span class="style22"><span class="style25"></span></span></span></span></div>		</td>
		<td><p>
		  <input name="Submit" type="submit" value="Request" />
		</p>
		  <p><a href="EndUserMain.jsp">Back</a> </p></td>
	</tr>
</table>
</form>

</div>
          <div class="clr"></div>
        </div>
        <div>
          
          <div class="clr"></div>
         
         
          <div class="clr"></div>
        </div>
       
      </div>
        
      </body>
</html>


<%

	
	String s1="";
	
      	try 
	{
        String fname=request.getParameter("fname");
		String oname=request.getParameter("oname");
          
      		
      		 String status="Waiting";
      		
      		String query="select * from cloudserver where ownername='"+oname+"' and fname='"+fname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	   {
		
		s1=rs.getString("sk"); 
out.print("SECRET KEY="+s1);

	   }
	  
	  
	  
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
 </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>End User </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="EndUserMain.jsp">Home</a></li>
			<li><a href="ReqSk.jsp">Request Sk</a></li>
			<li><a href="Download.jsp">Download</a></li>
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
