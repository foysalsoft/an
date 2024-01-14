<?php include 'include/header.php';?>
<?php $table_heading = "";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>

<?php 

$tbl_name="slide";
$user_no =$_SESSION['user']['user_no'];
$CURR_TIME = date('Y-m-d H:i:s');
if(isset($_POST['submit']))
  {
  	//getting the post values
    $S_TITLE=$_POST['S_TITLE'];
    $S_LINK=$_POST['S_LINK'];
	$S_LINK_TEXT=$_POST['S_LINK_TEXT'];
    $ppic=$_FILES["S_IMG"]["name"];
// get the image extension
$extension = substr($ppic,strlen($ppic)-4,strlen($ppic));
// allowed extensions
$allowed_extensions = array(".jpg","jpeg",".png",".gif");
// Validation for allowed extensions .in_array() function searches an array for a specific value.
if(!in_array($extension,$allowed_extensions))
{
echo "<script>alert('Invalid format. Only jpg / jpeg/ png /gif format allowed');</script>";
}
else
{
//rename the image file
$imgnewfile=md5($imgfile).time().$extension;
// Code for move image into directory
move_uploaded_file($_FILES["S_IMG"]["tmp_name"],"profilepics/".$imgnewfile);
// Query for data insertion
$query = "insert into $tbl_name SET `S_TITLE`='$S_TITLE',`S_LINK`='$S_LINK',`S_LINK_TEXT`='$S_LINK_TEXT',`S_IMG`='$imgnewfile',`CREATED_BY`='$user_no',`CREATED_ON`='$CURR_TIME'";

$count=mysqli_query($con, $query);
if ($count) {
echo "<script>alert('You have successfully inserted the data');</script>";
echo "<script type='text/javascript'> document.location ='slide.php'; </script>";
} else{
echo "<script>alert('Something Went Wrong. Please try again');</script>";
}
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #fff;
	background: #63738a;
	font-family: 'Roboto', sans-serif;
}
.form-control {
	height: 40px;
	box-shadow: none;
	color: #969fa4;
}
.form-control:focus {
	border-color: #5cb85c;
}
.form-control, .btn {        
	border-radius: 3px;
}
.signup-form {
//	width: 60rem;
	margin: 0 auto;
	padding: 10px 0;
  	font-size: 15px;
}
.signup-form h2 {
	color: #636363;
	margin: 0 0 15px;
	position: relative;
	text-align: center;
}
.signup-form h2:before, .signup-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}	
.signup-form h2:before {
	left: 0;
}
.signup-form h2:after {
	right: 0;
}
.signup-form .hint-text {
	color: #999;
	margin-bottom: 30px;
	text-align: center;
}
.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 10px;
	background: #f2f3f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form .form-group {
	margin-bottom: 20px;
}
.signup-form input[type="checkbox"] {
	margin-top: 3px;
}
.signup-form .btn {        
	font-size: 16px;
	font-weight: bold;		
	min-width: 140px;
	outline: none !important;
}
.signup-form .row div:first-child {
	padding-right: 10px;
}
.signup-form .row div:last-child {
	padding-left: 10px;
}    	
.signup-form a {
	color: #fff;
	text-decoration: underline;
}
.signup-form a:hover {
	text-decoration: none;
}
.signup-form form a {
	color: #5cb85c;
	text-decoration: none;
}	
.signup-form form a:hover {
	text-decoration: underline;
}  
</style>
</head>
<body>
<div class="signup-form">
    <form  method="POST" enctype="multipart/form-data" >
		<h2>Fill Data</h2>
        <div class="form-group">
			<input type="text" class="form-control" name="S_TITLE" placeholder="Slide Title">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="S_LINK" placeholder="Slide link">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="S_LINK_TEXT" placeholder="Slide link text">
        </div>  
        <div class="form-group">
        	<input type="file" class="form-control" name="S_IMG"  required="true">
        	<span style="color:red; font-size:12px;">Only jpg / jpeg/ png /gif format allowed.</span>
        </div>      
      
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block" name="submit">Submit</button>
        </div>
    </form>
	<div class="text-center">View Aready Inserted Data!!  <a href="slide.php">View</a></div>
</div>
</body>
</html>


<?php include 'include/footer.php';?>
