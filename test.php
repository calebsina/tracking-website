<?php
	include 'connect.php';
	$conn = OpenCon();
	echo "Connected successfully";

	closeCon($conn);
?>