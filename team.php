<!-- Start Team Member Section -->
<section id="team" class="team-member-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="section-title text-center">
                            <h3>Our Team</h3>
                            <p></p>
                        </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <div id="team-section">
                            <div class="our-team">
                                
                                <?php
                                    require 'admin/config/db_connection.php';
                                    $sql = "SELECT * FROM `team` where IS_DELETED=0 ";
                                    $result1 = mysqli_query($con,$sql);
                                    while($row = mysqli_fetch_array($result1)):
                                ?>

                                        <div class="team-member">
                                            <img src="admin/soft/profilepics/<?=$row['T_IMG']?>" class="img-responsive" alt="">
                                            <div class="team-details">
                                                <h4><?=$row['T_NAME']?></h4>
                                                <p><?=$row['T_DESIGNATION']?></p>
                                            </div>
                                        </div>
                                    <?php endwhile;?>
                            </div>
                    </div>
                </div>
            </div>       
        </div>
</section>