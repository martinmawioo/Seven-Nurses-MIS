<?php
session_start();
  include("./inc/connect.php") ;
 // echo "string"; exit();
if(isset($_POST['submit']))
{
$username=$_POST['username'];
//$password=$_POST['password'];
//$passwordenc=md5($_POST['password']);
//echo$password; exit();
if($username)
{
  $query=mysql_query("SELECT * FROM login WHERE username='$username' ")or die (mysql_error($db_connect));
  $numrows=mysql_num_rows($query);
  //echo $numrows;
  if ($numrows!=0)
  {
    while($row=mysql_fetch_assoc($query))
    {
      $dbusername=$row['username'];
      //$dbpassword=$row['password'];
      //echo $dbpassword; exit();
    } 
  
    if($username==$dbusername)
    {
        //echo"You are in !. ";
      //$_SESSION['userid'] =$row['id'];
      $_SESSION['username']=$username;
       header("location: changepassword.php");
    
    }
    else
      echo " <script>alert('Incorrect Email Id...');</script>";
  }
  else
  //die("That user does't exist!");
echo " <script>alert('That email does't exist!...');</script>";

}
                                                                                                                                                                                                                                                                                                         
  else
  //die("Please enter a username and password");
echo " <script>alert('Please enter Valid email...');</script>";
}

?>

<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title> Email</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel=stylesheet>
<link rel=stylesheet href=//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css>
<meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<div class="container">
  <div class="row">
    <form  method="POST" class="col-xs-12 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3">
      <div class="row">
        <h1><i class="fa fa-lock"></i> Please Enter Email</h1>
        <div class="form-group">
          <label class="col-sm-1 control-label" for="e-mail"><i class="fa fa-envelope-o"></i></label>
          <div class="col-sm-11">
            <input class="form-control" id="e-mail" name="username" type="email" placeholder="E-mail"/>
          </div>
        </div>
      
        <button type="submit"  class="btn btn-primary btn-lg" name="submit">Submit</button>
       
      </div>
    </form>
  </div>
</div>
  
  

</body>

</html>
