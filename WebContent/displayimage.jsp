<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SEARCH CRIMINAL</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="navbar">
        <a href="findcrimnal.jsp" class="home-link"><i class="fa fa-home">HOME</i></a>
    </div>

    <div class="container">
        <header>
            <h1 style="color: brown; margin-top:10px;"><b>CRIMINAL SEARCH BY DETAILS</b></h1>
        </header>
        <img src="images.png" alt="Image" style="margin-left:100px;">
      </div>
  
<hr>

<%
    String imgFileName=(String)request.getAttribute("img");
    String imgId=(String)request.getAttribute("id");
    System.out.println(imgFileName);
%>

<div>
<table border="5px" style="width:600px">
          <tr>
             <th>ID</th>
             <th>First Name</th>
             <th>Last Name</th>
             <th>Father Name</th>
             <th>Mother Name</th>
             <th>PHONE</th>
             <th>Age</th>
             <th>Religion</th>
             <th>Gender</th>
             <th>FIR</th>
             <th>CASE</th>
             <th>Region</th>
             <th>Address</th>
             <th>Picture</th>
         
         <%
             if(imgFileName!="" && imgId!="")
             {
         %>
              <td><img src="images/<%=imgFileName%>" style="width:200px;height:150px"></td>
          </tr>
        <%
             }
        %>  
        
     </table>
</div>

<style>
.container {
    max-width: 600px;
    margin: 0 auto;
    padding: 40px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    background-image: url('facehero.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
}
.container select {
    margin-bottom: px;
   
    padding: 10px 18px;
    background-color: white;
    border: none;
    border-radius: 3px;
}


.navbar {
        background-color: yellow;
        overflow: hidden;
        position: fixed; /* Fixed position to stay at the top */
        width: 100%; /* Make it full width */
        z-index: 1000; /* Higher z-index to keep it above other content */
    }

    .navbar a {
        float: left;
        font-size: 16px;
        color: black;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    .navbar a:hover {
        background-color: rgb(59, 19, 180);
    }

  

        </style>

</body>
</html>