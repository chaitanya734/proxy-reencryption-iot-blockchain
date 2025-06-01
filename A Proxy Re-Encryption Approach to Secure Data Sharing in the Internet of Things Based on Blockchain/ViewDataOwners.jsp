<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>

<html>
<body>
<table width="924" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#162D3D">
                <tr>
                  <td width="241" height="32" bgcolor="#666666"><div align="center" class="style2 style7"><strong>Owner Image </strong></div></td>
                  <td width="168" bgcolor="#666666"><div align="center" class="style2 style7"><strong>Owner Name </strong></div></td>
                  <td width="154" bgcolor="#666666"><div align="center" class="style2 style7"><strong>E-Mail</strong></div></td>
                  <td width="102" bgcolor="#666666"><div align="center" class="style2 style7"><strong>Mobile</strong></div></td>
                  <td width="102" bgcolor="#666666"><div align="center" class="style2 style7"><strong>Address</strong></div></td>
                  <td width="109" bgcolor="#666666"><div align="center" class="style2 style7"><strong>DOB</strong></div></td>
                  <td width="124" bgcolor="#666666"><div align="center" class="style2 style7"><strong>Location</strong></div></td>
                 
                </tr>
                <%
          String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
      	int i=0,j=0;
      String ii="";
      try{
          Statement st=connection.createStatement();
          
          String sql="SELECT * FROM owner";
          
          ResultSet rs=st.executeQuery(sql);
          while(rs.next())
          {
        	  ii=rs.getString("id");
        		s2=rs.getString("name");
        		s3=rs.getString("email");
        		s4=rs.getString("mobile");
        		s5=rs.getString("addr");
        		s6=rs.getString("dob");
        		s7=rs.getString("location");
        		s9=rs.getString("imagess");
        		s10=rs.getString("status");
        		
        		i=Integer.parseInt(ii);
        %>
                <tr>
                  <td><input  name="image" type="image" class="style6" src="images.jsp?imgid=<%=ii%>" alt="Submit" width="100" height="100" />                  </td>
                  <td><span class="style6"><%=s2%></span></td>
                  <td><span class="style6"><%=s3%></span></td>
                  <td><span class="style6"><%=s4%></span></td>
                  <td><span class="style6"><%=s5%></span></td>
                  <td><span class="style6"><%=s6%></span></td>
                  <td><span class="style6"><%=s7%></span></td>
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
