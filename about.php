<!-- Start About Us Section -->
<section id="about-us" class="about-us-section-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="section-title text-center">
                            <h3>About Us</h3>
                            <p></p>
                    </div>
                </div>
            </div>
            <?php
                        require 'admin/config/db_connection.php';
                        $sql = "SELECT * FROM `about_us` where IS_DELETED=0 ";
                        $result1 = mysqli_query($con,$sql);
                        while($row = mysqli_fetch_array($result1)):
            ?>
                <div class="row"> 
                    <div class="col-md-12 col-sm-12">
                        <div class="welcome-section text-center">
                            <img src="admin/soft/profilepics/<?=$row['A_IMG']?>" class="img-responsive" alt=".." height="100px" width="100px">
                            <!-- <h4>Office Philosophy</h4>
                            <div class="border"></div> --> 
                            <p style="text-align: justify;"><?=$row['A_DESCRIPTION']?></p>
                        </div>
                    </div>
                </div><!-- /.row --> 
            <?php endwhile;?>           
        </div><!-- /.container -->
    </section>
    <!-- End About Us Section -->
