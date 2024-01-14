<?php
include('../../config/db_connection.php');
	$PACKAGES_NO = $_POST["PACKAGES_NO"];
	$sql="SELECT * FROM `packages` WHERE `IS_DELETED`=0 AND `PACKAGES_NO`='$PACKAGES_NO' ";
	$query = mysqli_query($con,$sql);
	
	if(mysqli_num_rows($query) > 0){
	    $row = mysqli_fetch_array($query);
	    
		echo $row['INSTALLATION_FEE'];
	}
    
?>