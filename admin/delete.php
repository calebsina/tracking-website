<?php 


 $servername = "localhost";
                    $username = "shelta";
                    $password = "SHELTAR@tash25";

try {
    $conn = new PDO("mysql:host=$servername;dbname=tash", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $id = $_REQUEST['id'];
        $sql = "DELETE FROM quote WHERE id= :id";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo "Record deleted successfully.";
            header('Location: home.php');
        } else {
            echo "Error deleting record.";
        }
}catch(PDOException $e){
    echo '<script>alert("sorry could not delete data")</script>' . $e->getMessage();

}

?>