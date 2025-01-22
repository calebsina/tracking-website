<?php 
        session_start();
            $servername = "localhost";
            $username = "shelta";
            $password = "SHELTAR@tash25";

		try {
			$conn = new PDO("mysql:host=$servername;dbname=tash", $username, $password);
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


        