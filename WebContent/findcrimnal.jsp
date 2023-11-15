<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD CRIMINAL</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css">  
</head>
<body>
 <div class="navbar">
            <a href="##" class="home-link"><i class="fa fa-home">HOME</i></a>

            <div class="dropdown">
                <button class="dropbtn"><i class="fa fa-bars"></i>MENU</button>
                <div class="dropdown-content">
                    <a href="crimnaladd.jsp">ADD CRIMINAL</a>
                    <a href="crimnalsearch.jsp">CRIMINAL SEARCH</a>
                     <a href="update.jsp">UPDATE DATA</a>
                   <%-- <a href="Delete.jsp">DELETE DATA</a> --%>  
                       <a href="AllDataRecord.jsp">ALL DATA RECORD</a>
                    <a href="login.jsp">LOG OUT</a> 
                     
                </div>
         </div>       
    </div>

	<div class="container">
        <form action="facedetect"  method="post" enctype="multipart/form-data">
            <p style=" margin-bottom: 40px; text-align: center;  color: brown; font-size: larger"><b>CRIMINAL SEARCH BY IMGAE</b></p>
		<input type="file" id="file" name="picture" accept="image/*" hidden>
		<div class="img-area" data-img="">
			<i class='bx bxs-cloud-upload icon'></i>
			<h3 class="select">CLICK UPLOAD</h3>
			<p>Image size must be less than <span>2MB</span></p>
		</div>
       <button name="picture" class="select-image">SCAN FACE CRIMINAL</button>
    </form>
	</div>

     <style>

        
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
.container {
	max-width: 400px;
	width: 100%;
	background: #fff;
	padding: 30px;
	border-radius: 30px;
	justify-content: center;
	align-items: center;
	background: var(--light-blue);
    margin-top: 50px;
    margin-left: 450px;
}
.img-area {
	position: relative;
	width: 100%;
	height: 240px;
	background: var(--grey);
	margin-bottom: 30px;
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

/* this is home */

body {
    background-image: url(world.jpeg);
    background-size: cover;
    background-repeat: no-repeat;
    font-family: Arial, Helvetica, sans-serif;
    
 }


 .navbar {
    background-color: yellow;
    overflow: hidden;
    margin-top: 0;

 }

.navbar a {
float: left;
font-size: 16px;
color: black;
text-align: center;
padding: 14px 16px;
text-decoration: none;
}

.home-link {
    float: left;
    margin-left: 50px;
   
}
.dropdown  {
  overflow: hidden;
   float: right;
   margin-right: 80px;
   
 
}

.dropdown .dropbtn {
    font-size: 16px;
    border: none;
    outline: none;
    color: black;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {

    background-color: rgb(59, 19, 180);
}


.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 180px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
.dropdown-content a:hover {
    background-color: #ddd;
    
}

.dropdown:hover .dropdown-content {
    display: block;
}


     </style>


<!--jjavascript of selcet image -->

<script>

       const selectImage = document.querySelector('.select');
        const inputFile = document.querySelector('#file');
        const imgArea = document.querySelector('.img-area');

        selectImage.addEventListener('click', function () {
	      inputFile.click();
        })

        inputFile.addEventListener('change', function () {
	    const image = this.files[0]
	    if(image.size < 2000000) {
		    const reader = new FileReader();
		    reader.onload = ()=> {
			const allImg = imgArea.querySelectorAll('img');
			allImg.forEach(item=> item.remove());
			const imgUrl = reader.result;
			const img = document.createElement('img');
			img.src = imgUrl;
			imgArea.appendChild(img);
			imgArea.classList.add('active');
			//imgArea.dataset.img = image.name;
		}
		reader.readAsDataURL(image);
	    } else {
		alert("Image size more than 2MB");
	    }
        })
</script>
</body>
</html>