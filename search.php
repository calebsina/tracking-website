<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>AUSPostalInc</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRnqnDGl75VRXyJFHvGx7A60kMk7r1Xts"></script>

    <link href="css/style.css" rel="stylesheet">
</head>

<body onload="initMap()">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow border-top border-5 border-primary sticky-top p-0">
        <a href="index.html" class="navbar-brand bg-primary d-flex align-items-center px-4 px-lg-5">
            <h2 class="mb-2 text-white">AUSPostalInc</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.php" class="nav-item nav-link">Home</a>
                <a href="about.php" class="nav-item nav-link">About</a>
                <a href="service.php" class="nav-item nav-link">Services</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu fade-up m-0">
                        <a href="feature.php" class="dropdown-item">Features</a>
                        <a href="quote.php" class="dropdown-item">Free Quote</a>
                        <a href="team.php" class="dropdown-item">Our Team</a>
                        <a href="testimonial.php" class="dropdown-item">Testimonial</a>
<!--                         <a href="404.html" class="dropdown-item">404 Page</a>
 -->                    </div>
                </div>
                <a href="contact.php" class="nav-item nav-link">Contact</a>
            </div>
            <h4 class="m-0 pe-lg-5 d-none d-lg-block"><i class="fa fa-headphones text-primary me-3"></i>+1(281)9448076</h4>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">AUSPostalInc Tracking</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="index.php">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white" aria-current="page">Tracking Info</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden py-5 px-lg-0">
        <div class="container contact-page py-5 px-lg-0">
            <div class="row g-5 mx-lg-0">
                    <?php 
                    // session_start();	

                    $servername = "localhost";
                    $username = "shelta";
                    $password = "SHELTAR@tash25";
            
                    try {
                        $conn = new PDO("mysql:host=$servername;dbname=tash", $username, $password);
                            // set the PDO error mode to exception
                            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                            $tracking = $_POST['tracking'];

                            $stmt = $conn->prepare("SELECT * FROM quote WHERE tracking=:tracking");
                            $stmt->bindParam(':tracking', $tracking);
                            $stmt->execute();
                            if($stmt->rowCount() > 0){
                              

                                while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                                    $lat = $row['latitude'];
                                    $long = $row['longitudes'];
                                    $location = $row['current_location'];
                                    echo '<div class="col-md-6 contact-form wow fadeIn" data-wow-delay="0.1s">
                                        <h6 class="text-secondary text-uppercase">AUSPostalInc</h6>
                                        <h1 class="mb-4">Cargo No: '.$row['tracking'].'</h1>
                                        <h2 class="mb-4">Carrier: '.$row['carrier'].'</p>
                                        <p class="mb-4">Carrier Reference: '.$row['carrier_reference'].'</h2>
                                        <h3 class="mb-4">Shipment Status: '.$row['statuss'].'</h3>
                                        <div class="bg-light p-4">';
                                    echo '<ul>';
                                    echo '<P class="mb-4">SHIPPER INFO</P>';
                                    echo '<li><em> Name:</em> ' . $row['pero_name'] . '</li>';
                                    echo '<li><em> email:</em> ' . $row['perso_email'] . '</li>';
                                    echo '<li><em> mobile:</em> ' . $row['perso_mobile'] . '</li>';
                                    echo '<li><em> freight:</em> ' . $row['freight'] . '</li>';
                                    echo '<br>';

                                    echo '<P class="mb-4">RECEIVER INFO</P>';
                                    echo '<li><em> Name:</em> ' . $row['receive_name'] . '</li>';
                                    echo '<li><em> email:</em> ' . $row['receive_contact'] . '</li>';
                                    echo '<li><em> Country:</em> ' . $row['drop_country'] . '</li>';
                                    echo '<li><em> Address:</em> ' . $row['drop_city'] . '</li>';
                                    echo '<br>';

                                    echo '<P class="mb-4">SHIPPING DETAILS</P>';
                                    echo '<li><em> Expected Delivery date:</em> ' . $row['pickup_date'] . '</li>';
                                    echo '<li><em> Expected Delivery time:</em> ' . $row['pick_time'] . '</li>';
                                    echo '<li><em> Status:</em> ' . $row['statuss'] . '</li>';
                                    echo '<li><em> product:</em> ' . $row['product'] . '</li>';
                                    echo '<li><em> Quantity:</em> ' . $row['quantity'] . '</li>';
                                    echo '<li><em> Weight:</em> ' . $row['weigt'] . '</li>';
                                    echo '<li><em>Current location:</em> ' . $row['current_location'] . '</li>';
                                    echo '</ul>';

                                }
                            }else{
                                $_SESSION['message'] = "No results found!! check email and try again";
                                    header('Location: index.php');
                                    exit(0);


                            } 
                echo" <script type='text/javascript'>
                var map;
                console.log('initMap function executed');
                
                function initMap() {
                    map = new google.maps.Map(document.getElementById('map'), {
                    center: {lat: $lat, lng: $long },
                    zoom: 15
                    });
                    
                    var marker = new google.maps.Marker({
                    position: {lat: $lat, lng: $long},
                    map: map,
                    title: '$location'
                    });
                }
            </script>";          
                        
                        }catch(PDOException $e){
                            echo '<script>alert("invalid tracking number")</script>' . $e->getMessage();
                            header('Location: index.php');

        }
            

                
?>
                    </div>
                </div>
                <div class="col-md-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s">
                    <div id="map" style="width: 100%; height: 100vh"; class="position-relative">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Footer Start -->
        <?php include'footer.php' ?>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>







        