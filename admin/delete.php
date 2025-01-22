<?php 


$servername = "srv1241.hstgr.io";
$username = "u304344616_tash";
$password = "logistica@TASH23";

try {
    $conn = new PDO("mysql:host=$servername;dbname=u304344616_logistica", $username, $password);
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