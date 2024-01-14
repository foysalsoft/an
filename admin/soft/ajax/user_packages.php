<?php
include('../../config/db_connection.php');
	
		$PACKAGES_NO = $_POST["PACKAGES_NO"];
		$sql="SELECT * FROM `packages` WHERE `IS_DELETED`=0 AND `PACKAGES_NO`='$PACKAGES_NO' ";
		$query = mysqli_query($con,$sql);
		
		while($row = mysqli_fetch_array($query))
		{
			$data["PRICE"] = $row["PRICE"];
			$data["INSTALLATION_FEE"] = $row["INSTALLATION_FEE"];
		}


		echo json_encode($data);
		
	
    
?>




