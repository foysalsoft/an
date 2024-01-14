<?php
    require 'admin/config/db_connection.php';
    $sql = "SELECT * FROM `slide` where IS_DELETED=0 ";
    $result1 = mysqli_query($con,$sql);
    while($row = mysqli_fetch_array($result1)):
?>
<section id="page-top">
        <!-- Carousel -->
        <div id="main-slide" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#main-slide" class="dot"></li>
                <li data-target="#main-slide" class="dot"></li>
                <li data-target="#main-slide" class="dot"></li>
            </ol>
             
            <!--/ Indicators end-->

            <!-- Carousel inner -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="img-responsive" src="admin/soft/profilepics/<?=$row['S_IMG']?>" alt="slider">
                            <div class="slider-content">
                                <div class="col-md-12 text-center">
                                    <h1 class="animated3">
                                        <span><strong><?=$row['S_TITLE']?></strong></span>
                                    </h1>
                                    <!-- <p class="animated2">At vero eos et accusamus et iusto odio dignissimos<br> ducimus qui blanditiis praesentium voluptatum</p>	 -->
                                    <a href="<?=$row['S_LINK']?>" class="page-scroll btn animated1"><?=$row['S_LINK_TEXT']?></a>
                                </div>
                            </div>
                        </div>
                        <!--/ Carousel item end -->
                    </div>
                    <!-- Carousel inner end--> 
    </section>
<?php endwhile;?>


<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("carousel-inner");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace("active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += "active";
  setTimeout(showSlides, 8000); // Change image every 8 seconds
}
</script>
