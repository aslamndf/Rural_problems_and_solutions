<%@ page import="java.sql.*" %>

<%
String s1,s2;
s1=request.getParameter("l1");
s2=request.getParameter("l2");

  Connection conn;
    Statement stmt;
    String message="eneter the valid user name and passward";

try{
  

  Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
             stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery("select * from login where username='"+s1+"' and passward='"+s2+"' ");

      
      rs.next();
   String s=rs.getString(3);
    if(s.equals("admin")){
    %>
    <jsp:forward page="admin.jsp" />
     <%
          
    }
    else if(s.equals("user")){
   %>
    <jsp:forward page="user.jsp" />
     <%
        
   }
else
{
%>
<script>
alert("type should be case and spelling sencitive")
</script>
<%

    }
}

catch(Exception e){
%>




  <script>
  setTimeout(function() {
    alert("<%= message %>");
    window.location.href = "login.html"; // Replace with your desired forward page
  }, 2000); // Replace 2000 with the desired time delay in milliseconds
</script>
     
     <%
}



%>