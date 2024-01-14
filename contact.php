<?php 
                    require 'admin/config/db_connection.php';

                    $sql = "SELECT * FROM contact WHERE CONTACT_NO= 1 ";
                    $result = mysqli_fetch_array(mysqli_query($con,$sql));
?>
<?php include_once 'submit.php'; ?>

<section id="contact" class="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <h3>Contact With Us</h3>
                        <p class="white-text"></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6" style="border: 1px solid #fff;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1662975.6883338734!2d138.45021493102465!3d35.50429328043036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x605d1b87f02e57e7%3A0x2e01618b22571b89!2sTokyo%2C%20Japan!5e0!3m2!1sen!2sbd!4v1705095448312!5m2!1sen!2sbd" width="400" height="450" style="border:0; overflow: none;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>    
                </div>
                <div class="col-lg-6">
                    <form id="frmContact" action="" method="POST" novalidate="novalidate">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name" value="<?php echo !empty($postData['name'])?$postData['name']:''; ?>" required="">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" value="<?php echo !empty($postData['email'])?$postData['email']:''; ?>" required="">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter subject" value="<?php echo !empty($postData['subject'])?$postData['subject']:''; ?>" required="">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" name="message" placeholder="Type your message here" required=""><?php echo !empty($postData['message'])?$postData['message']:''; ?></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-input">
                                    
                                    <div class="g-recaptcha" data-sitekey="<?php echo $siteKey; ?>"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="mail-status"></div>
                                <button type="submit" name="submit" id="send-message" value="Submit" class="btn btn-primary" style="background-color: #445f6d; border: 1px solid #445f6d">Send Message</button>
                            </div>
                        </div>
                    </form>
                    <?php if(!empty($statusMsg)){ ?>
                        <div class="status-msg <?php echo $status; ?>"><?php echo $statusMsg; ?></div>
                <?php } ?>
                </div>
            </div>
           
            <div class="row">
                <div class="col-md-4">
                    <div class="footer-contact-info">
                        <h4>Contact info</h4>
                        <ul>
                            <li><strong><i class="fa-regular fa-envelope"></i></strong> <?=$result['EMAIL']?> </li>
                            <li><strong><i class="fa-solid fa-phone-volume"></i></strong> <?=$result['PHONE']?> </li>
                        </ul>
                    </div>
                </div>
                <?php 
                    require 'admin/config/db_connection.php';

                    $sql = "SELECT * FROM working_hour WHERE WORK_NO= 1 ";
                    $result = mysqli_fetch_array(mysqli_query($con,$sql));
                ?>
                <div class="col-md-4 col-md-offset-4">
                    <div class="footer-contact-info">
                        <h4>Address</h4>
                        <ul>
			    <li><i class="fa-solid fa-house-circle-check"></i><strong></strong></li>
                            <li><strong></strong></li>
                            <li><strong></strong></li>
                        </ul>
                    </div>
                </div> 
            </div>
        </div>

<!-- Contact Form JavaScript
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script> -->

<!-- Google recaptcha API library -->
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<!-- <script>
	$(document).ready(function (e){
		$("#frmContact").on('submit',(function(e){
            alert("Hello");
			e.preventDefault();
			$("#mail-status").hide();
			$('#send-message').hide();
			$('#loader-icon').show();
			$.ajax({
				url: "get_mail.php",
				type: "POST",
				dataType:'json',
				data: {
				"name":$('input[name="name"]').val(),
				"email":$('input[name="email"]').val(),
				"phone":$('input[name="phone"]').val(),
				"message":$('textarea[name="message"]').val(),
				"g-recaptcha-response":$('textarea[id="g-recaptcha-response"]').val()},				
				success: function(response){
				$("#mail-status").show();
				$('#loader-icon').hide();
				if(response.type == "error") {
					$('#send-message').show();
					$("#mail-status").attr("class","error");				
				} else if(response.type == "message"){
					$('#send-message').hide();
					$("#mail-status").attr("class","success");							
				}
				$("#mail-status").html(response.text);	
				},
				error: function(){} 
			});
		}));
	});
</script> -->
