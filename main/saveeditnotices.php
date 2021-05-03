<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['id'];
$a = $_POST['notice_title'];
$b = $_POST['notice_desc'];
if(isset($_POST['active']))
{
    $c = 1;
}
else{
    $c =  0;
}
$d = $_POST['date_time'];
// query

$sql = "UPDATE notices 
        SET notice_title=?,notice_desc=?, active=?, date_time=?
		WHERE id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$id));
header("location: managenotices.php");

?>