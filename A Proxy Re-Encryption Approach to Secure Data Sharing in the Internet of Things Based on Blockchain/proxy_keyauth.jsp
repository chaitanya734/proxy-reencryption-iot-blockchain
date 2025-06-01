<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@ include file="connect.jsp" %>

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
.style5 {color: #FFFF00; font-weight: bold; }
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
          <h2>Authorize Public Key to Encrypt the Data </h2>
          <p align="justify" class="infopost style3">&nbsp;</p>
          <div class="clr style3"></div>
          <div class="img style3"></div>
         <table width="625" border="1" align="center">
              <tr>
                <td width="132" height="30" bgcolor="#FF0000"><div align="center" class="style5"><span class="style11">Req Client ID </span></div></td>
                <td width="115" bgcolor="#FF0000"><div align="center" class="style5"><span class="style11">Client Name </span></div></td>
				<td width="189" bgcolor="#FF0000"><div align="center" class="style5"><span class="style11">File Name </span></div></td>
                <td width="161" bgcolor="#FF0000"><div align="center" class="style5"><span class="style11">Authorization</span></div></td>
                
                <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        	
      		String query="select * from proxy_pkc"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		
		
		%>
              </tr>
              <tr>
                <td height="28"><div align="center" class="style6"><%=i%></div></td>
                <td><div align="center" class="style6"><%=s2%></div></td>
                <td><div align="center" class="style6"><%=s3%></div></td>
			
                <%	
			if(s4.equalsIgnoreCase("No"))
			{
			
		%>
                <td><div class="style6">
                  <div align="center"><a href="GenerateKey1.jsp?usid=<%=i%>"><%=s4%></a></div>
                </div></td>
              </tr>
              <%
		
			}else
			{
		%>  <td><div><div align="center"><%=s4%></div>
                </div></td>
              </tr>
			  
			  <%
			  }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
          <p><a href="PROXYMain.jsp">Back</a></p>
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
          <h2 class="star"><span>Proxy</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="PROXYMain.jsp">Home</a></li>
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
