<?php
include('../../config/db_connection.php');
	$DISTRICT_NO = $_POST['DISTRICT_NO'];
	$sql="SELECT * FROM `packages` WHERE `IS_DELETED`=0 AND `DISTRICT_NO`='$DISTRICT_NO' ";
	$query = mysqli_query($con,$sql);
	$html = "";
	if(mysqli_num_rows($query) > 0){
	 	$html .="<select class='form-control' name='PACKAGES_NO' id='PACKAGES_NO'>";
	 	$html .="<option value='-1'>".'--Select One--'."</option>";
	    while($row = mysqli_fetch_array($query)):
	        $html .="<option value='".$row['PACKAGES_NO']."'>".$row['TITLE']." (".$row['BANDWIDTH'].")</option>";
	    endwhile;
	    $html .="</select>";  
	}
    echo $html;
?>