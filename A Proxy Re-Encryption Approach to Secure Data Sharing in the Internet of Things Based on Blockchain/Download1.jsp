<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
          <h2>Download File </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div align="justify" class="style3"><%
	try 
	{
	String file = request.getParameter("t1");
	String owner = request.getParameter("t22");

	String user=(String)application.getAttribute("enduser");

	String status="Authorized";
	String strQ = "select * from user where status='"+status+"' and  name='"+user+"' ";
	ResultSet rs54 = connection.createStatement().executeQuery(strQ);
	if(rs54.next()== true)
	{
	
				String mac="";
				String sk="";
				String oon="";
				String strQuery = "select * from cloudserver where fname='"+file+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
				{
					if(rs.next()==true)
					{
						oon=rs.getString(2);
						mac=rs.getString(5);
						sk=rs.getString(6);
						
					SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

					Date now = new Date();

					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;	
					String task="Downloaded";
					String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"+user+"','"+file+"','"+sk+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
			%>
			
			<form action="Download2.jsp" method="post" name="form1" id="form1">
            <table width="478" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#333333">
              <tr>
                <td width="223" bgcolor="#A6EDFF"><span class="style10 style9 style8 style1"><strong>Enter File Name :-</strong></span></td>
                <td width="245"><span class="style11">
                  <label>
                  <input required name="t1" type="text" value="<%=file%>" size="40" readonly="readonly"/>
                  </label>
                </span></td>
              </tr>
				<tr>
		<td width="223" bgcolor="#A6EDFF"><span class="style10 style9 style8 style1"><strong>Enter Owner Name :-</strong></span></td>
		<td width="245"><span class="style11">
		  <label> 
		  <input required name="t12"
			type="text"  size="40" value="<%=oon%>" readonly="readonly"/> 
		  </label>
		</span></td>
	</tr>
			  
              <tr>
                <td bgcolor="#A6EDFF"><span class="style10 style9 style8 style1"><strong>Secret Key :-</strong></span></td>
                <td><input name="t13" type="text"  size="40" /></td>
              </tr>
              <tr>
                <td bgcolor="#A6EDFF">&nbsp;</td>
                <td><span class="style11"></span></td>
              </tr>
              <tr>
                <td bgcolor="#A6EDFF"><div align="right"></div></td>
                <td><span class="style11">
                  <label>
                  <input type="submit" name="Submit2" value="Decrypt & Download" />
                  </label>
                </span></td>
              </tr>
            </table>
          </form>		
			
			<%	
					}
					else
					{
		
						out.println("File Doesn't Exist !!!");
			%>
						<p>&nbsp;</p>
						<p><a href="Download.jsp">Back</a></p>
						<%
					}
				}
	}
	else{
		%>
		<h1> You are not Authorized!!<br/> Please Contact Proxy Server!!!</h1>
		<p><a href="Download.jsp">Back</a></p>
		<%
	}
           connection.close();
         
	 
	 }
  catch(Exception e)
  {
    out.println(e.getMessage());
    e.printStackTrace();
  }
%></div>
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
