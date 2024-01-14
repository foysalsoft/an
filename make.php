<?php require 'admin/config/db_connection.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <link rel="icon" type="image/x-icon" href="images/favicon.ico">

    <!-- Bootstrap Core CSS -->
    <link href="asset/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    
    
    <!-- Animate CSS -->
    <link href="css/animate.css" rel="stylesheet" >
    
    <!-- Owl-Carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" >
    <link rel="stylesheet" href="css/owl.theme.css" >
    <link rel="stylesheet" href="css/owl.transitions.css" >

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/color/green.css">
    
    
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/color/green.css" title="green">
    <link rel="stylesheet" type="text/css" href="css/color/light-red.css" title="light-red">
    <link rel="stylesheet" type="text/css" href="css/color/blue.css" title="blue">
    <link rel="stylesheet" type="text/css" href="css/color/light-blue.css" title="light-blue">
    <link rel="stylesheet" type="text/css" href="css/color/yellow.css" title="yellow">
    <link rel="stylesheet" type="text/css" href="css/color/light-green.css" title="light-green">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>    
    
    <!-- Modernizer js -->
    <script src="js/modernizr.custom.js"></script>

    
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="index">
    <!-- Navigation -->
    <nav class="navbar navbar-default" style="background-color: #fff; padding: 0.5vw  10vw;">
      <!--  <div class="container" style="background-color: #fff; border-radius: 5px;" > -->
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="http://localhost/web/">
                   <!-- <img src="../images/rcl_logo.png" class="img-fluid"  alt=""> -->
                   <h5 style="color: #fff; font-family:'Times New Roman', Times, serif; font-weight: 900; font-size: 2rem; background-color: #445f6d;border: 1px solid #445f6d; padding: 1rem;">BeXpert</h5>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="http://localhost/web/#page-top">Home</a>
                    </li>
                   <li>
                        <a class="page-scroll" href="http://localhost/web/#service">Career Build-up Tips</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="http://localhost/web/#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Start About Us Section -->
    <section id="about-us" class="about-us-section-1" style="padding-top: 0px">
        <!-- <img src="admin/soft/profilepics/network_con.jpg" class="img-responsive" alt=".." style="opacity: 0.8;"> -->
        <div class="container">
        <center><h5 style="font-weight: 700;text-decoration: underline;"></h5></center>
        </div>
        <div class="container">
            <?php
                        require 'admin/config/db_connection.php';
                        $sql = "SELECT * FROM `make_cv` where IS_DELETED=0 ";
                        $result1 = mysqli_query($con,$sql);
                        while($row = mysqli_fetch_array($result1)):
            ?>
                <div class="row"> 
                    <div class="col-md-12 col-sm-12">
                        <table   class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 " style="border: 1px solid #fff;">
                            <tr>
                                <td style="background-color: #fff;padding: 1.5rem;border: 1px solid #fff; " ><?=$row['PRIVACY']?></td>
                            </tr>
                        </table>
                    </div>
                </div><!-- /.row --> 
            <?php endwhile;?>           
        </div><!-- /.container -->
    </section>
    <!-- End About Us Section -->

</body>
    
    <!---main content end---->
<?php include 'footer.php';?>

<script src="admin/js/jquery.js"></script>
    <script src="admin/bs3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="admin/js/custom/login.js"></script>
    <script type="text/javascript" src="admin/js/custom/message.js"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
