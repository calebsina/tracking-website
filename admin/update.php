<?php 
        session_start();
        $servername = "srv1241.hstgr.io";
		$username = "u304344616_tash";
		$password = "logistica@TASH23";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=u304344616_logistica", $username, $password);
			// set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
          
            $id = $_POST['id'];
            $email = $_POST['perso_email'];
            $name = $_POST['pero_name'];
            $freight = $_POST['freight'];
            $pick_date = $_POST['pickup_date'];
            $pick_time = $_POST['pick_time'];
            $current_location = $_POST['current_location'];
            $status = $_POST['statuss'];
            $longitudes = $_POST['longitudes'];
            $latitude = $_POST['latitude'];

            $stmt = $conn->prepare(
                "UPDATE quote SET pero_name=:names, pickup_date=:pick_date, pick_time=:pick_time, current_location=:current_location, 
                statuss=:statuss, latitude=:latitude, longitudes=:longitudes WHERE id = :id "
            );
            $stmt->bindParam(':names', $name);
            $stmt->bindParam(':pick_date', $pick_date);
            $stmt->bindParam(':pick_time', $pick_time);
            $stmt->bindParam(':current_location', $current_location);
            $stmt->bindParam(':statuss', $status);
            $stmt->bindParam(':longitudes', $longitudes);
            $stmt->bindParam(':latitude', $latitude);
            $stmt->bindParam(':id', $id);

            $stmt->execute();
           
            header('Location: home.php');
             
        
        }catch(PDOException $e){
            echo '<script>alert("sorry could not update data")</script>' . $e->getMessage();
            // header('Location: order.php');

        }
 
?>

