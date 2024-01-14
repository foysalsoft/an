<!-- Clients Aside -->
<section id="partner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3>Our Partners</h3>
                        <p></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clients">
                    <?php
                        require 'admin/config/db_connection.php';
                        $sql = "SELECT * FROM `partner` where IS_DELETED=0 ";
                        $result1 = mysqli_query($con,$sql);
                        while($row = mysqli_fetch_array($result1)):
                    ?>
                        <div class="col-md-12">
                            <img src="admin/soft/profilepics/<?=$row['PARTNER_IMG']?>" class="img-responsive" alt="...">
                        </div>
                    <?php endwhile;?>
                </div>
            </div>
        </div>
    </section>
