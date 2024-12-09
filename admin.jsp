<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin page</title>
    <style>
    table{
      
       font-size:25px; 
       background-color:lightyellow;
}
#add{
   margin-top:270px;
}

table  td,table th{
   padding:10px;
}
nav li a{
    color:white;
     text-decoration: none;
     padding-left:31px;
     font-size: 25px;
     font-weight: bold;
}


</style>
</head>
<body style="background-image:url(https://pbs.twimg.com/media/ELzgv-4U4AAqe3j.jpg:large);background-attachment:fixed;">
    

    <nav style="font-size: 30px; ">
        <img src="images-removebg-preview.png" alt="" style="float: left; width:200px;height:100px;margin-right:14%">
       
        <li><a href="#add">View Problems</a></li>
          <li><a href="addsolution.html">Add Solution</a></li>
          <li><a href="donar.html">Add Donar</a></li>
            <li><a href="feedback.jsp"> View feedback</a></li>
          <li><a href="index.html">Log Out</a></li>
        </nav> <br><br><br><br>
        <marquee behavior="" direction="up" style="float:left;">        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; color:white; text-align:left; margin-left:50px; font-size:50px;">Admin page</h1>
        </marquee>
          <marquee behavior="" direction="up" style="float:left;">        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; color:white; text-align:left; margin-left:50px; font-size:50px;">View Problems</h1>
        </marquee>
     

 <div id="add" >
            
<%@page import="java.sql.*" %>

<center> <h1> View problems </h1>

<table border=2  style="border-collapse: collapse; width= 500px; positions:static; padding:2px; ">
<tr> 
<th> Problem Id  </th>
<th> Village Name </th>
<th> Distric </th>
<th> Taluk </th>
<th> Details </th>
<th> Givan  By</th>
</tr>

<%

  Connection con;
  Statement stmt;

   try
  {
    Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
  stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from problems");

  while(rs.next())
  {
  out.println("<tr>");
 out.println("<td>");
 out.println(rs.getString(1));
 out.println("</td><td>");
 out.println(rs.getString(2));
 out.println("</td><td>");
 out.println(rs.getString(3));
 out.println("</td><td>");
 out.println(rs.getString(4));
 out.println("</td><td>");
 out.println(rs.getString(5));
 out.println("</td><td>");
 out.println(rs.getString(6));
 out.println("</td><td>");


 out.println("</tr>");

  }

 

  }
catch(Exception e)
 {
   out.println(e);
 }

%>

</div>











</body>

</html>
