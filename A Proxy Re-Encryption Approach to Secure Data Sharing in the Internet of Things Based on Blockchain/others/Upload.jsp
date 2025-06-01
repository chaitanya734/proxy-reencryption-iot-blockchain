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
.style2 {
	color: #0000FF;
	font-weight: bold;
}
.style3 {color: #0000FF; font-weight: bold; font-style: italic; }
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
          <p> <form id="form1" name="form1" method="post" action="Upload1.jsp">
          <table width="598" border="1" align="center" cellspacing="0" cellpadding="10">
            <tr>
              <td width="286"><div align="center" class="style3"><span class="style4 style10 style11 style12">Select File :- </span></div></td>
              <td width="356"><input name="t42" type="file" id="file"  onchange="loadFileAsText()" required="required" /></td>
            </tr>
            <tr>
              <td class="style4 style10 style11 style12"><div align="center" class="style3">File Name :- </div></td>
            <td><input name="tt" type="text" id="tt" size="50"/></td>
              </tr>
            <tr>
              <td><div align="center"><span class="style12"></span></div></td>
              <td><span class="style13">
                <textarea name="text" id="textarea" cols="50" rows="15"></textarea>
              </span></td>
            </tr>
            <tr>
              <td><div align="center"><span class="style4 style10 style11 style12"><span class="style2">Hash Code</span>  :- </span></div></td>
              <td><input name="t4" type="text" id="t4" value="" size="50" readonly="readonly" /></td>
            </tr>
			
            <tr>
              <td><div align="center"><span class="style10"><span class="style11"><span class="style12"></span></span></span></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
            </tr>
          </table>
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
