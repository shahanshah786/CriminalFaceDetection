<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADDCRIMINAL</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css"> 
    <link rel="stylesheet" href="file.jsp">
</head>
<body>
<div class="navbar">
        <a href="findcrimnal.jsp" class="home-link"><i class="fa fa-home">HOME</i></a>
    </div>
    <div class="container">
        <header>
            <h1 style="color: brown; margin-top:10px;"><b>UPDATE DATA</b></h1>
        </header>
        <img src="images.png" alt="Image">
       <form action="DataUpdate" method="post">
      			 <label for="id" style="color:yellow;">ID:</label>
    			<input type="text" name="id" id="id" required>
    			
  	 		 <label for="firstname"  style="color:yellow;">FIRST NAME:</label>
   			 <input type="text" name="firstname" id="firstname" required>
   			 
   			 <label for="lastname" style="color:yellow;">LAST NAME:</label>
   			 <input type="text" name="lastname" id="lastname" required>
   			 
   			
   			  <label for="phone" style="color:yellow;">PHONE UPDATE:</label>
   			 <input type="tel" name="phone" id="phone" required>
   			 
   			  <label for="age" style="color:yellow;">DOB UPDATE:</label>
   			 <input type="date" name="age" id="age" required>
   			   
   			     <label for="fir_date" style="color:yellow;">FIR UPDATE:</label>
   			 <input type="date" name="fir_date" id="fir_date" required>
   			 
   			   <label for="cases" style="color: yellow;">CASE</label>
            <select id="cases" name="cases" required>
 						<option style="color:blue;"  value="active">ACTIVE </option>
  						<option style="color:Red;" value="close">CLOSE </option>		
			</select>

			 <label for="reasion" style="color: yellow;">REGION UPDATE</label>
            <textarea id="reasion" name="region"2000words required></textarea>
            
             <label for="address" style="color: yellow;">ADDRESS UPDATE</label>
            <textarea id="address" name="address" 2000words required ></textarea>
            
            
            
   
  			 <button type="submit"> UPDATE</button>
	</form>
         <style>
 /*
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0 ;
    background-image: url('world.jpeg'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center center;
    
}

*/

.sign {

}
@media screen and (max-width:600px) {
    .sign{
        text-align: center;
        
    }
    
}
.age {
    padding: 10px 10px;
    margin-bottom: 20px;
}
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
    margin-bottom: 30px;
    padding: 10px 18px;
    background-color: white;
    border: none;
    border-radius: 3px;
}



header {
    text-align: center;
    margin-bottom: 30px;
}

h2 {
    font-size: 30px;
    margin: 0;
    
}

@media screen and (max-width:600px) {
    h2 {
        font-size: 20px;
    }
    
}


img {
    width: 100%;
    height: auto;
    margin-bottom: 30px;
}


form {
    display: flex;
    flex-direction: column;
}

label {
    font-weight: bold;
    margin-bottom: 8px;
}

input[type="text"],
input[type="tel"],
input[type="date"],
input[type="email"],
textarea {
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    background-color: #007bff;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 8px;
}

button:hover {
    background-color: #a8e618;
}


/*

.navbar {
    background-color: yellow;
    overflow: hidden;
    margin: 0;
    padding: 0;

 }
 .navbar a {
    float: left;
    font-size: 16px;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    }

    .navbar a:hover{

        background-color: rgb(59, 19, 180);
    } 



*/


    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');


* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

:root {
	--blue: #0071FF;
	--light-blue: #B6DBF6;
	--dark-blue: #005DD1;
	--grey: #f2f2f2;
}
.container2 {
	max-width: 350px;
	height: 200px;
	background: #fff;
	padding: 30px;
	border-radius: 20px;
	justify-content: center;
	align-items: center;
	background: var(--light-blue);
    margin-top: 20px;
    margin-left: 100px;
    margin-bottom: 20px;
}
.img-area {
	position: relative;
	width: 300px;
	height: 150px;
	background: var(--grey);
	margin-bottom: 20px;
	border-radius: 15px;
	overflow: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}
.img-area .icon {
	font-size: 100px;
}
.img-area h3 {
	font-size: 20px;
	font-weight: 500;
	margin-bottom: 6px;
}
.img-area p {
	color: #999;
}
.img-area p span {
	font-weight: 600;
}
.img-area img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
	z-index: 100;
}
.img-area::before {
	content: attr(data-img);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .5);
	color: #fff;
	font-weight: 500;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
	pointer-events: none;
	opacity: 0;
	transition: all .3s ease;
	z-index: 200;
}
.img-area.active:hover::before {
	opacity: 1;
}
.select-image {
	display: block;
	width: 100%;
	padding: 16px 0;
	border-radius: 15px;
	background: var(--blue);
	color: #fff;
	font-weight: 500;
	font-size: 16px;
	border: none;
	cursor: pointer;
	transition: all .3s ease;
}
.select-image:hover {
	background: var(--dark-blue);
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

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('world.jpeg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center center;
         /* Adjust the margin to make content start below the navbar */
    }



    </style>

</body>
</html>