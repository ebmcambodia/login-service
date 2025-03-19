
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="css/all.min.css">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    

    <title>EBM Co.LTD</title>
</head>
<body>
    <!--Start Navigation -->
    <nav>
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top">
        <a href="index.php" class="navbar-brand">Ebm co. ltd</a>
        <span class="navbar-text">One Stop Service for Investor</span>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu">
            <span class="navbar-toggler-icon"></span>

        </button>
        <div class="collapse navbar-collapse" id="myMenu">
        <ul class="navbar-nav pl-5 custom-nav">
        <li class="nav-item"><a href="index.php" class="nav-link">Registration</a></li>
        <li class="nav-item"><a href="#Services" class="nav-link">Services</a></li>
        <!-- <li class="nav-item"><a href="#Registration" class="nav-link">Registration</a></li> -->
        <li class="nav-item"><a href="Requester/RequesterLogin.php" class="nav-link">Login</a></li>
        <li class="nav-item"><a href="#Contact" class="nav-link">Contact</a></li>
        </ul>
    </div>
</div>

    
</nav>
<!-- Language Dropdown in Navigation -->

<!-- End Navigation -->

 
<!-- Start header Jumbotron -->

<header class="jumbotron back-image" style="background-image: url('images/');">
<?php include("UserRegistration.php")?>


        <!-- <div class="container text-center mainHeading">
            <h1 class="text-uppercase text-danger font-weight-bold">Welcome to EBM</h1>
            <p class="font-italic">One Stop Service for Investors</p>
            <a href="Requester/RequesterLogin.php" class="btn btn-success mr-4">Login</a>
            <a href="#Registration" class="btn btn-success">Sign Up</a>
        </div> -->
    </header>

    

    
    


<!-- form section Start here -->
<?php include("contactform.php") ?>
 <!-- form section ends here -->

 
   http://localhost/service/admin/login.php

Email: admin@osms.com
Password: admin123




<!-- JavaScript -->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/all.min.js"></script>

</body>
</html>