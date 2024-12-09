<%@ page import="java.sql.*" %>

<%
String npas,cpas,un;
un=request.getParameter("n1");
npas=request.getParameter("n2");
cpas=request.getParameter("n3");

String message="passward updated succesfully";
if(npas.equals(cpas))
{
    Connection conn;
Statement stmt;
try{
     Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
             stmt=conn.createStatement();
             int k=stmt.executeUpdate("update villagers set passward='"+npas+"' where username ='"+un+"';");
            int r=stmt.executeUpdate("update login set passward='"+npas+"' where username ='"+un+"';");
            conn.close();
%>


    <script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "login.html"; // Replace with your desired forward page
  }, 2000); // Replace 2000 with the desired time delay in milliseconds
</script>

<%


}
catch(Exception e)
{out.println(e);}
}
else{
%>
 <script>
  alert("enter the both password field with same passward")
  </script>
 
<%
}
   

%>