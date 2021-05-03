<?php
	$link = mysqli_connect("localhost","root","");
    $notice_count = $_SESSION['NOTICE_COUNT']; 
	if(!$link) {
		die('Failed to connect to server: ' . mysql_error());
	}
	else{
	}

	//Select database
	$db = mysqli_select_db( $link,'model');
	if(!$db) {
		die("Unable to select database");
	}
	$qry="SELECT notice_title, notice_desc From notices where DATE_ADD(NOW(), INTERVAL -36 HOUR) < date_time and ACTIVE = 1 ORDER BY id";
	$result=mysqli_query($link, $qry);
	$info['Header'] = '';
    $info['Body'] = '';
    $info['Footer'] = '';
	//Check whether the query was successful or not
	if($result) {
		if(mysqli_num_rows($result) >  $notice_count) {
            mysqli_data_seek($result, $notice_count);
            $notices = mysqli_fetch_row($result);
			$info['Header'] = $notices[0];
			$info['Body'] = $notices[1];
			$info['Footer'] = '';
		}
	}
    $notice_count = $notice_count + 1;
    $_SESSION['NOTICE_COUNT'] = $notice_count;
?>


