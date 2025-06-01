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
.style5 {
	font-size: 18px;
	font-family: "Times New Roman", Times, serif;
	color: #FF0000;
}
.style8 {color: #FFFF00; font-weight: bold; font-size: 16px; }
.style9 {font-size: 16px}
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
          <h2>Upload Data </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <p align="justify" class="style5"> <p> <form id="form1" name="form1" method="post" action="Upload1.jsp">
          <table width="598" border="1" align="center" cellspacing="0" cellpadding="10">
            <tr>
              <td width="286" bgcolor="#FF0000"><div align="center" class="style8"><span class="style4 style10 style11 style12">Select File :- </span></div></td>
              <td width="356"><input name="t42" type="file" id="file"  onchange="loadFileAsText()" required="required" /></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000" class="style4 style10 style11 style12"><div align="center" class="style8">File Name :- </div></td>
            <td><input name="tt" type="text" id="tt" size="50"/></td>
              </tr>
            <tr>
              <td bgcolor="#FF0000"><div align="center"><span class="style9"></span></div></td>
              <td><span class="style13">
                <textarea name="text" id="textarea" cols="50" rows="15"></textarea>
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><div align="center" class="style8"><span class="style4 style10 style11 style12">Digital Sign :- </span></div></td>
              <td><input name="t4" type="text" id="t4" value="" size="50" readonly="readonly" /></td>
            </tr>
			
            <tr>
              <td><div align="center"><span class="style10"><span class="style11"><span class="style12"></span></span></span></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
            </tr>
          </table>
          </form></p>
          <p>&nbsp;</p>
          <a href="ClientMain.jsp">
          </p>
          Back</a>
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
          <h2 class="star"><span>Owner</span> Menu</h2>
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
