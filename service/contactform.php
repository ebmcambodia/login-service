<?php
// The contact Us Form wont work with Local Host but it will work on Live Server
if(isset($_REQUEST['submit'])) {
 // Checking for Empty Fields
 if(($_REQUEST['name'] == "") || ($_REQUEST['subject'] == "") || ($_REQUEST['email'] == "") || ($_REQUEST['message'] == "")){
  // msg displayed if required field missing

  $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert"> Fill All Fileds </div>';
  
 } else {
 $name = $_REQUEST['name'];
 $subject = $_REQUEST['subject'];
 $email = $_REQUEST['email'];
 $message = $_REQUEST['message'];

 $mailTo = "ybachhav135@gmail.com";
 $headers = "From: ". $email;
 $txt = "You have received an email from ". $name. ".\n\n".$message;
 mail($mailTo, $subject, $txt, $headers);
 $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert"> Sent Successfully </div>';

}
}
?>



<div class="container" id="Contact">
    <h2 class="text-center mb-4">Contact Us</h2>
    <div class="row">
    <div class="col-md-8"><!--Start first Column -->
    <form action="" method="POST">
        <input type="text" class="form-control" name="name" placeholder="Name"><br>
        <input type="text" class="form-control" name="subject" placeholder="Subject"><br>
        <input type="text" class="form-control" name="email" placeholder="E-mail"><br>
        <textarea class="form-control" name="message" placeholder="How can we help you?" style="height:150px;"></textarea><br>
        <input type="submit" class="btn btn-primary" value="send" name="Submit"><br><br>
    </form>
    </div> <!--End of First Column -->
    <div class="col-md-4 text-center"><!-- Start Second Column -->
<strong>Headquarter:</strong><br>
        EBM Co.Ltd,<br>
        Beoung KengKang I, Phnom Penh.<br>
        No. 151, St. 376 Phnom Penh Phnom Penh, 12302.<br>
        Phone:012-992-556/010-888-310.<br>
       
<a href="#" target="_blank">www.ebmcambodia.com</a><br>
<br><br>

<strong>Branch:</strong><br>
        EBM Co.Ltd,<br>
        Beoung KengKang I, Phnom Penh.<br>
        No. 151, St. 376 Phnom Penh Phnom Penh, 12302.<br>
        Phone:012-992-556/010-888-310.<br>
        
<a href="#" target="_blank"></a><br>
<br><br>

</div> <!--End second column-->
</div>
</div>
