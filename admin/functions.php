<?php 
	session_start();	
	$servername = "srv1241.hstgr.io";
	$username = "u304344616_tash";
		$password = "logistica@TASH23";


		try {
			$conn = new PDO("mysql:host=$servername;dbname=u304344616_logistica", $username, $password);
			// set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		  //   echo "Connected successfully";
		$pero_name = $_POST['pero_name'];
		$tracking = $_POST['tracking'];
		$pero_email = $_POST['perso_email'];
		$pero_mobile = $_POST['perso_mobile'];
		$freight = $_POST['freight'];
		$pick_country = $_POST['pick_country'];
		$pick_street = $_POST['pick_street'];
		$pick_city = $_POST['pick_city'];
		$receiver_name = $_POST['receive_name'];
		$receive_contact = $_POST['drop_contact'];
		$drop_country = $_POST['drop_country'];
		$drop_street = $_POST['drop_street'];
		$drop_city = $_POST['drop_city'];
		$carrier = $_POST['carrier'];
		$carrier_reference = $_POST['carrier_reference'];
		$status = $_POST['statuss'];
		$product = $_POST['product'];

		$pick_date = $_POST['pickup_date'];
		$pick_time = $_POST['pick_time'];
		$current_location = $_POST['current_location'];
		
		$weight = $_POST['weigt'];
		$quntity = $_POST['quantity'];
		$longitude = $_POST['longitudes'];
		$latitude = $_POST['latitude'];

	

	$sql = "INSERT INTO quote 

	VALUES 
	(
		null, '$tracking', '$pero_name', '$pero_email', '$pero_mobile', '$freight', 
		'$pick_country', '$pick_street', '$pick_city', '$receiver_name', '$receive_contact', 
		 '$drop_country', '$drop_street',  '$drop_city',  '$weight', '$quntity',
		'$carrier', '$carrier_reference', '$pick_date','$status', '$current_location', '$pick_time',  '$product', '$latitude', '$longitude' 
	)";
	
	$result = $conn->exec($sql);
	$_SESSION['message'] = "Thank You for shipping with us!!";
		header('Location: shipment.php');
		exit(0);
		  } catch(PDOException $e) {
			echo "Connection failed: " . $e->getMessage();
			$_SESSION['message'] = "sorry!! try to resend your order";
				header('Location: 404.php');
				exit(0);
		  }

		
	
	


?>




