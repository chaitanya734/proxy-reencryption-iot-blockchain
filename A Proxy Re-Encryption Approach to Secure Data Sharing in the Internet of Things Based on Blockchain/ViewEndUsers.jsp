<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>

<body>
<html>


		  <table width="924" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#162D3D">
  	   <tr>
   		 <td width="241" height="32" bgcolor="#D4DEDE"><div align="center" class="style6">Owner Image </div></td>
    	 <td width="168" bgcolor="#D4DEDE"><div align="center" class="style7"><b>Owner Name </b></div></td>
         <td width="154" bgcolor="#D4DEDE"><div align="center" class="style7"><b>E-Mail</b></div></td>
         <td width="102" bgcolor="#D4DEDE"><div align="center" class="style7"><b>Mobile</b></div></td>
         <td width="102" bgcolor="#D4DEDE"><div align="center" class="style7"><b>Address</b></div></td>
	     <td width="109" bgcolor="#D4DEDE"><div align="center" class="style7"><b>DOB</b></div></td>
    	 <td width="124" bgcolor="#D4DEDE"><div align="center" class="style7"><b>Location</b></div></td>
	     <td width="102" bgcolor="#D4DEDE"><div align="center" class="style7"><b>Status</b></div></td>
  </tr>
          <%
          String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
      	int i=0,j=0;
      String ii="";
      try{
          Statement st=connection.createStatement();
          
          String sql="SELECT * FROM user";
          
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
                <td><div align="center" class="style10">
                    <input  name="image" type="image" src="images1.jsp?imgid=<%=ii%>" width="100" height="100" alt="Submit" />
                </div></td>
                <td><div align="center" class="style10"><%=s2%></div></td>
                <td><div align="center" class="style10"><%=s3%></div></td>
                <td><div align="center" class="style10"><%=s4%></div></td>
                <td><div align="center" class="style10"><%=s5%></div></td>
                <td><div align="center" class="style10"><%=s6%></div></td>
                <td><div align="center" class="style10"><%=s7%></div></td>
                <%if(s10.equalsIgnoreCase("Waiting")){
          	 %>
                <td><div align="center" class="style10"><a href="CAS_Uautorize.jsp?id=<%=i%>&st=<%=s10%>">Waiting</a></div></td>
                <%
               }
           if(s10.equalsIgnoreCase("Authorized"))
           {
          	 %>
                <td><div align="center" class="style11"><a href="CAS_Uautorize.jsp?id=<%=i%>&st=<%=s10%>">Authorized</a></div></td>
                <%
          	 
           }
           
           %>
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
