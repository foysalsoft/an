<style>
    .media {
        overflow: hidden;
    }

    .pull-left,
    .media-body1 {
        width: 50%;
        transform: translateY(20px);
        margin-bottom: 20px;
    }


    .pull-left img {
        width: 100%;
        height: auto;
    }

    .animate {
        /* opacity: 1; */
        transform: translateX(0);
    }

    @media (max-width: 767px) {
        .pull-left,
        .media-body1 {
            width: 100%;
            transform: translateY(20px);
            margin-bottom: 20px;
        }

        .pull-left img {
            width: 100%;
            height: auto;
        }

        .animate {
            transform: translateY(0);
        }
    }
    @media (min-width: 768px) {
        .media {
            display: flex;
        }
        .media-body1,
        .pull-left {
            width: 50%;
            float: left;
            transform: translateY(20px);
            margin-bottom: 20px;
        }

        .pull-left img {
            width: 100%;
            height: auto;
        }
        .animate {
            transform: translateY(0);
        }
    }
</style>
    <!-- Start Feature Section -->
<section id="service" class="services-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title text-center">
                    <h3>Career Build-up Tips</h3>
                    <p></p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            require 'admin/config/db_connection.php';
            $sql = "SELECT * FROM `our_service` where IS_DELETED =0 ";
            $result1 = mysqli_query($con, $sql);
            $count = 0;
            while ($row = mysqli_fetch_array($result1)):
                ?>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="feature-2">
                        <div class="media">
                            <?php if ($count % 2 == 0): ?>
                                <!-- For 1st, 3rd, 5th, ... services -->
                                <div class="pull-left">
                                    <img src="admin/soft/upload/<?=$row['SERVICE_IMG']?>" class="img-responsive" alt="..." width="80px" height="80px">
                                </div>
                                <div class="media-body1" style="margin-left: 25px !important; padding-right: 25px;">
                                    <h4 class="media-heading"><?=$row['SERVICE_TITLE']?></h4>
                                    <p style="text-align: justify;"><?=$row['SERVICE_DESCRIPTION']?></p>
                                    <div style="margin-top: 5rem;"><a style="color: #fff; padding: 1rem; background-color: #445f6d;" href="<?=$row['URL']?>">View More</a></div>
                                </div>
                            <?php else: ?>
                                <!-- For 2nd, 4th, 6th, ... services -->
                                <div class="media-body1" style="margin-right: 25px !important; padding-left: 25px;">
                                    <h4 class="media-heading"><?=$row['SERVICE_TITLE']?></h4>
                                    <p style="text-align: justify;"><?=$row['SERVICE_DESCRIPTION']?></p>
                                    <div style="margin-top: 5rem;"><a style="color: #fff; padding: 1rem; background-color: #445f6d;" href="<?=$row['URL']?>">View More</a></div>
                                </div>
                                <div class="pull-left">
                                    <img src="admin/soft/upload/<?=$row['SERVICE_IMG']?>" class="img-responsive" alt="...">
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div><!-- /.col-md-4 -->
            <?php
            $count++;
            endwhile;
            ?>
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<!-- <script>
    document.addEventListener("DOMContentLoaded", function () {
        var elements = document.querySelectorAll('.media-body1, .pull-left');

        function isInViewport(element) {
            var rect = element.getBoundingClientRect();
            return (
                rect.top >= 0 &&
                rect.left >= 0 &&
                rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
                rect.right <= (window.innerWidth || document.documentElement.clientWidth)
            );
        }

        function handleScroll() {
            elements.forEach(function (element) {
                if (isInViewport(element) && !element.classList.contains('animate')) {
                    element.classList.add('animate');
                }
            });
        }

        window.addEventListener('scroll', handleScroll);
        handleScroll(); // Initial check
    });
</script> -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var elements = document.querySelectorAll('.media-body1, .pull-left');

        function isInViewport(element) {
            var rect = element.getBoundingClientRect();
            return (
                rect.top >= 0 &&
                rect.left >= 0 &&
                rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
                rect.right <= (window.innerWidth || document.documentElement.clientWidth)
            );
        }

        function handleScroll() {
            elements.forEach(function (element) {
                if (isInViewport(element) && !element.classList.contains('animate')) {
                    element.classList.add('animate');
                }
            });
        }

        window.addEventListener('scroll', handleScroll);
        handleScroll(); // Initial check
    });
</script>