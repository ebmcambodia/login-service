<?php
include('dbConnection.php');
if(isset($_REQUEST['rSignup'])){
  //Checking for empty fields
  if(($_REQUEST['rName'] == "") || ($_REQUEST['rEmail'] == "") || ($_REQUEST['rPassword'] == "")){
  
   $regmsg = '<div class="alert alert-warning mt-2" role="alert"> All fields are Required</div>';
  } else {
//Email already registered
$sql = "SELECT r_email FROM requesterlogin_tb WHERE r_email 
='".$_REQUEST['rEmail']."'";
$result = $conn ->query($sql);
if($result->num_rows==1){
  $regmsg = '<div class="alert alert-warning mt-2" role="alert">Email ID Already Registered</div>';
} else{
  //Assigning users value to variable
$rName = $_REQUEST['rName'];
$rEmail = $_REQUEST['rEmail'];
$rPassword = $_REQUEST['rPassword'];

$sql ="INSERT INTO requesterlogin_tb(r_name,r_email,r_password)VALUES ('$rName', '$rEmail', '$rPassword')";
if($conn->query($sql) == TRUE){

  $regmsg = '<div class="alert alert-success mt-2" role="alert"> Account Successfully Created </div>';
} else {
  $regmsg = '<div class="alert alert-danger mt-2" role="alert"> Unable to Create Account </div>';
         }
      }
    }
  }  
?>


<div class="container pt-5" id="Registration">
<h2 class="text-center">Create an Account</h2>
<div class="row mt-4 mb-4 text-left">
<div class="col-md-6 offset-md-3">
<form action="" class="shadow-lg p-4" method="POST">

            <div class="form-group">
               <i class="fas fa-user"></i><label for="name"
             class="font-weight-bold pl-2">Name</label>
             <input type="text" class="form-control" placeholder="name" name="rName">
            </div>

            
            <div class="form-group">
                <i class="fas fa-user"></i><label for="name"
                 class="font-weight-bold pl-2">E-mail</label>
                 <input type="email" class="form-control" placeholder="email" name="rEmail">
                 <small class="form-text">We'll never share your email with anyone else.</small>
            </div>

            <div class="form-group">
                <i class="fas fa-key"></i><label for="pass"
                 class="font-weight-bold pl-2">New Password</label>
                 <input type="password" class="form-control" placeholder="new password" name="rPassword">
            </div>
            <button type="submit" class="btn btn-danger mt-5 btn-block shadow-sm font-weight-bold" name="rSignup">
            Sign Up</button>
            <em style="font-size:10px;">Note - By clicking sign up,you agree terms and conditions Data policy and cookie policy.</em>
            <?php if(isset($regmsg)){echo $regmsg;}?>
        </form>
        </div>
      </div>
    </div>
