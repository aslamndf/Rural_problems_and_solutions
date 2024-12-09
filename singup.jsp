<%@ page import="java.sql.*" %>
<%
String name,uname,npass,cpass,phno,email,type;
name=request.getParameter("fn");
uname=request.getParameter("ln");
npass=request.getParameter("npass");
cpass=request.getParameter("cpass");
phno=request.getParameter("mo");
email=request.getParameter("em");
type="user";
if(npass.equals(cpass)){
Connection conn;
Statement stmt;
String message="sign up succesfull";
try{
     Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
             stmt=conn.createStatement();
             int k=stmt.executeUpdate("insert into villagers values('"+name+"','"+uname+"','"+email+"','"+phno+"','"+npass+"','"+type+"')");
            int r=stmt.executeUpdate("insert into login values('"+uname+"','"+cpass+"','"+type+"')");
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