<?php
session_start();
include('../connect.php');
$a = $_POST['notice_title'];
$b = $_POST['notice_desc'];
if(isset($_POST['active']))
{
    $c = 1;
}
else{
    $c =  0;
}
// query

  //do your write to the database filename and other details   
  $sql = "INSERT INTO notices (notice_title,notice_desc,active,date_time) VALUES (:a,:b,:c, now());";

$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c));

header("location: addnotices.php");

?>