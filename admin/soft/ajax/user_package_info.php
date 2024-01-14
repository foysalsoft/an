<?php
include('../../config/db_connection.php');
	
		$TITLE = $_POST["TITLE"];
		$sql="SELECT * FROM `package` WHERE `IS_DELETED`=0 AND `TITLE`='$TITLE' ";
		$query = mysqli_query($con,$sql);
		
		while($row = mysqli_fetch_array($query))
		{
			$data["SUB_TITLE"] = $row["SUB_TITLE"];
			$data["PRICE"] = $row["PRICE"];
			$data["BANDWIDTH"] = $row["BANDWIDTH"];
			$data["BDIX"] = $row["BDIX"];
			$data["INSTALLATION_FEE"] = $row["INSTALLATION_FEE"];
			$data["MIGRATION"] = $row["MIGRATION"];
			$data["YOUTUBE_CACHE"] = $row["YOUTUBE_CACHE"];
			$data["FACEBOOK_CACHE"] = $row["FACEBOOK_CACHE"];
			$data["REAL_IP"] = $row["REAL_IP"];
		}


		echo json_encode($data);
		
	
    
?>