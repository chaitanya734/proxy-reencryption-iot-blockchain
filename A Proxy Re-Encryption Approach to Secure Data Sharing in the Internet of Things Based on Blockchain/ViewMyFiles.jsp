<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
          <p><table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
   <td width="178" bgcolor="#00FFFF"><div align="center" class="style2 style10"><strong>Owner  Name</strong></div></td>
   <td width="140" height="30" bgcolor="#00FFFF"><div align="center" class="style2 style10"><strong>FileName</strong></div></td>
      <td width="293" bgcolor="#00FFFF"><div align="center" class="style2 style10"><strong>Hash</strong></div></td>
   
    <td width="115" bgcolor="#00FFFF"><div align="center" class="style2 style10"><strong>Secret Key</strong></div></td>
	  <td width="115" bgcolor="#00FFFF"><div align="center" class="style2 style10"><strong>Date</strong></div></td>
  </tr>

<%
String onname=(String)application.getAttribute("onname");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from dataowner where ownername='"+onname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		%>

  <tr>
    <td height="29"><div align="center" class="style11"><%=s2%></div></td>
    <td><div align="center" class="style11"><%=s3%></div></td>
    <td><div align="center" class="style11"><%=s5%></div></td>
	  <td><div align="center" class="style11"><%=s6%></div></td>
	  <td><div align="center" class="style11"><%=s8%></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
 </body>
</html>
