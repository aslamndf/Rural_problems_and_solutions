<%@ page import="java.sql.*" %>

<%
String s1,s2,s3,s4,s5,s6;
s2=request.getParameter("d2");
s1=request.getParameter("d1");
s3=request.getParameter("d3");
s4=request.getParameter("d4");
s5=request.getParameter("d5");
s6=request.getParameter("d6");

try{
     Connection con;
     Statement stm;
     Class.forName("com.mysql.cj.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
       stm=con.createStatement();
             int k=stm.executeUpdate("insert into donars values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
            con.close();
   %>
  <script>
    alert("enter the both password field with same passward")
  </script>

  <jsp:forward page="admin.jsp" />
    <%
     
}
catch(Exception e){}
      
    %>