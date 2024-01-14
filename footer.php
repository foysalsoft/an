<?php 
    require 'admin/config/db_connection.php';

    $sql = "SELECT * FROM social_links WHERE SOCIAL_NO= 1 ";
    $result = mysqli_fetch_array(mysqli_query($con,$sql));
?>

    <footer class="style-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <span class="copyright">Copyright &copy; <a href="">BeXpert</a> 2024</span>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="footer-social text-center">
                            <ul>
                                <li><a href="<?=$result['TWITTER']?>"><i class="fa-brands fa-x-twitter"></i></a></li>
                                <li><a href="<?=$result['FACEBOOK']?>"><i class="fa-brands fa-facebook-f"></i></a></li>
                                <li><a href="<?=$result['LINKEDIN']?>"><i class="fa-brands fa-linkedin-in"></i></a></li>
                                <li><a href="<?=$result['INSTAGRAM']?>"><i class="fa-brands fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- <div class="col-md-4 col-xs-12">
                        <div class="footer-link">
                            <ul class="pull-right">
                                <li><a href="http://web.radiantbd.com/rcl_privacy.php">Privacy Policy</a>
                                </li>
                                <li><a href="http://web.radiantbd.com/rcl_terms.php">Terms of Use</a>
                                </li>
                                <li>
                       		    <a class="page-scroll" href="http://web.radiantbd.com/job.php">Career</a>
                                </li>
                            </ul>
                        </div>
                    </div> -->
                </div>
            </div>
    </footer>
</section>
