<?php
	//Start session
	session_start();
	
	//Unset the variables stored in session
	unset($_SESSION['SESS_MEMBER_ID']);
	unset($_SESSION['SESS_FIRST_NAME']);
	unset($_SESSION['SESS_LAST_NAME']);
	unset($_SESSION['SESS_STUDENT_ID']);
?>
<html>
<head>
<title>
Student Record Management System
</title>
    <!-- <link rel="shortcut icon" href="main/images/pos.jpg"> -->
	
	<link rel="stylesheet" href="main/css/font-awesome.min.css">

	<link href="main/css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="main/css/DT_bootstrap.css">
  
  
    <style type="text/css">
      body {
		background-color = #D6ACE6;
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="main/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body style=" 
		background-image: url('book-with-green-board-background.jpg');
		background-size: 100%;
		background-position: bottom;
		">
	<!-- <h2 class="heading"><center>Student Record Management System</center></h2> -->
	<!-- <div class="heading" style="
    font-size: 45px;
    line-height: 40px;
    font-family: cursive;
    font-style: normal;
    font-weight: 550;
    color: #9c0925e0;
 	"><center>
		Student Record Management System
	</center>
	</div> -->
    <div class="container-fluid" style="
    /* width: 850px; */
    /* height: 366px; */
    /* padding-left: 13px; */
    /* padding-right: 0px; */
    display: inline;
">
      <div class="row-fluid">
		<div class="span4">
		</div>
	
</div>
<div id="login" style="
    position: absolute;
    left: 110px;
	background: rgba(250,143,207,0.7);
">
<?php
if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
	foreach($_SESSION['ERRMSG_ARR'] as $msg) {
		echo '<div style="color: red; text-align: center;">',$msg,'</div><br>'; 
	}
	unset($_SESSION['ERRMSG_ARR']);
}
?>
<form action="login.php" method="post">

			<font style=" font:bold 44px 'Aleo';color: #523232;"><center>Login / Sign Up</center></font>
		<br>

		
<div class="input-prepend">
		<input style="height: 40px;
    	margin-bottom: 6px;
    	border-radius: 12px;" 
		type="text" name="username" Placeholder="Username" required/><br>
</div>
<div class="input-prepend">
	<input type="password" style="height: 40px;
    	margin-bottom: 6px;
    	border-radius: 12px;" name="password" Placeholder="Password" required/><br>
		</div>
		<div class="qwe">
		 <!-- <button class="btn btn-large btn-primary btn-block pull-right" href="dashboard.html" type="submit"><i class="icon-signin icon-large"></i> Log In</button> -->
		 <button class="btn-login" href="dashboard.html" type="submit" style="
    background-color: #f9b36b;
    border: none;
    padding: 9px 25px;
    font-size: 15px;
    font-family: monospace;
    font-weight: 700;
	border-radius: 8px
"><i class="icon-signin icon-large"></i>&nbsp;&nbsp; Log In</button>
</div>
		 </form>
</div>
</div>
</div>
</div>
</body>
</html>