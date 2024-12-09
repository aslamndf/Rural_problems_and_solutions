<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user page</title>
    <style>
    table{
      
       font-size:25px; 
       background-color:lightyellow;
}
#add{
   margin-top:145px;
}

table  td,table th{
   padding:5px;
}

</style>
</head>
<body style="background-image: url(https://media.istockphoto.com/id/508194578/photo/indian-village-life.jpg?s=612x612&w=0&k=20&c=4BA2BcJEdb0ZLd-pdAHaYeA__Ksz-OfT0lqUy5ab8KU=);background-attachment:fixed;">
    <nav>
        <img src="images-removebg-preview.png" alt="" style="float: left; width:200px;height:100px;margin-right:14%">
       
        <li><a href="#add">View Solution</a></li>
        <li><a href="addfeed.html">Add Feedback</a></li>
          <li><a href="addprob.html">Add Problems</a></li>
           <li><a href="viewdonar.jsp">View Donars</a></li>
          <li><a href="index.html">Log Out</a></li>
        </nav> 

        <br><br><br><br>
        <marquee behavior="" direction="up">        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; color:white; text-align:left; margin-left:50px; font-size:50px">User page</h1>
        </marquee>
            <marquee behavior="" direction="up">        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; color:white; text-align:left; margin-left:50px; font-size:50px">View Solution</h1>
        </marquee>
<div id="add" >
            
<%@page import="java.sql.*" %>

<center> <h1> View Solution </h1>

<table border=2  style="border-collapse: collapse; width= 500px; positions:static; padding:2px;">
<tr> 
   
<th> Problem Id  </th>
<th> Solution</th>
<th> Given By </th>
<th> Date </th>
</tr>

<%

  Connection con;
  Statement stmt;

   try
  {
    Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
  stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from solution");

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