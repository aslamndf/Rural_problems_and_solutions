<%@ page import="java.sql.*" %>

<%
String s1,s2,s3,s4,s5,s6;
s2=request.getParameter("p2");
s1=request.getParameter("p1");
s3=request.getParameter("p3");
s4=request.getParameter("p4");
s5=request.getParameter("p5");
s6=request.getParameter("p6");
String message="problems added succesfully";

try{
     Connection con;
     Statement stm;
     Class.forName("com.mysql.cj.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
       stm=con.createStatement();
           int k=stm.executeUpdate("insert into problems  values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
            con.close();
%>
<script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "addprob.html"; // Replace with your desired forward page
  }, 2000); // Replace 2000 with the desired time delay in milliseconds
</script>

 <%
     
}
catch(Exception e){
  out.println(e.getMessage());
}
%>