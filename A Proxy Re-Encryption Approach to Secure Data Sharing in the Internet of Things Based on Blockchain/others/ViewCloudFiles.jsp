<%@page import="org.bouncycastle.util.encoders.Base64" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>


          <p>
		  
		  <table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
   <td width="178" bgcolor="#999999"><div align="center" class="style5">Owner  Name</div></td>
    
   <td width="140" height="32" bgcolor="#999999"><div align="center" class="style5">FileName</div></td>
      <td width="293" bgcolor="#999999"><div align="center" class="style5">Hash</div></td>
   
    <td width="115" bgcolor="#999999"><div align="center" class="style5">Secret Key</div></td>
	  <td width="115" bgcolor="#999999"><div align="center" class="style5">Rank</div></td>
	  <td width="115" bgcolor="#999999"><div align="center" class="style5">Date</div></td>
  </tr>
		  
		  
		  <%
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
      
      		
      		String query="select * from cloudserver"; 
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
    <td height="29"><div align="center" class="style6"><%=s2%></div></td>
   
    <td><div align="center" class="style6"><%=s3%></div></td>
	  <td><div align="center" class="style6"><%=s5%></div></td>
	  <td><div align="center" class="style6"><%=s6%></div></td>
	  <td><div align="center" class="style6"><%=s7%></div></td>
	  <td><div align="center" class="style6"><%=s8%></div></td>
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
