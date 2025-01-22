<?php 
        session_start();
        $servername = "srv1241.hstgr.io";
		$username = "u304344616_tash";
		$password = "logistica@TASH23";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=u304344616_logistica", $username, $password);
			// set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $email = $_POST['email'];
            $pass = $_POST['pass'];

            $stmt = $conn->prepare("SELECT * FROM user WHERE email=:email AND pass=:pass");
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':pass', $pass);
            $stmt->execute();
            if($stmt->rowCount() > 0){
                session_start();
                $_SESSION['email'] = $email;
                header('Location: home.php');
            }else{
                echo '<script>alert("invalid username and password")</script>';
                header('Location: index.php');

            }           
        
        }catch(PDOException $e){
            echo '<script>alert("invalid username and password")</script>' . $e->getMessage();
            header('Location: index.php');

        }

        
 
?>


        