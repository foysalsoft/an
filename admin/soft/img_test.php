<?php include 'include/header.php';?>
<?php $table_heading = "";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
 <?php
    $tbl_name="our_service";        //your table name
    $user_no =$_SESSION['user']['user_no'];
    
    // $targetpage = "our_service.php";  //your file name  (the name of this file)
    $CURR_TIME = date('Y-m-d H:i:s'); 
    $mgs = '';
    $class='';
            //  $sql = "UPDATE $tbl_name SET `IS_DELETED` = 1 ,`DELETED_BY` = '$user_no', `DELETED_ON` = '$CURR_TIME' WHERE FAQ_NO = $ID";
            
                          
    //   $sql = "INSERT INTO $tbl_name SET `EN_TITLE`='$EN_TITLE',`BN_TITLE`='$BN_TITLE',`EN_DESCRIPTION`='$EN_DESCRIPTION',`BN_DESCRIPTION`='$BN_DESCRIPTION',`CREATED_BY` = '$user_no', `CREATED_ON` = '$CURR_TIME'";

                    // $SQL = "SELECT * FROM $tbl_name WHERE `EN_TITLE`='$EN_TITLE' AND `FAQ_NO`!= '$FAQ_NO'";
                    //     $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    //     if($COUNT < 1): 
                        
                    //     $sql = "UPDATE $tbl_name SET  `EN_TITLE`='$EN_TITLE',`BN_TITLE`='$BN_TITLE',`EN_DESCRIPTION`='$EN_DESCRIPTION',`BN_DESCRIPTION`='$BN_DESCRIPTION',`IS_UPDATED`=1,`UPDATED_BY` = '$user_no', `UPDATED_ON` = '$CURR_TIME' WHERE `FAQ_NO` = '$FAQ_NO'";
    if(isset($_GET['delid']))
        {
            $rid=intval($_GET['delid']);
            $SERVICE_IMG=$_GET['ppic'];
            $ppicpath="profilepics"."/".$SERVICE_IMG;
            $sql=mysqli_query($con,"DELETE from $tbl_name where SERVICE_NO = $rid");
            unlink($ppicpath);
            echo "<script>alert('Data deleted');</script>"; 
            echo "<script>window.location.href = 'index.php'</script>";     
        } 
            
?> 
<body>
    <div class="container-xl">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-5">
                            <h2>Our <b>Services</b></h2>
                        </div>
                        <div class="col-sm-7" align="right">
                            <a href="service_insert.php" class="btn btn-secondary"><i class="fa fa-plus-square-o"></i> <span>Add New Service</span></a>                 
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Service Image</th>
                            <th>Title</th>                       
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
    $ret=mysqli_query($con,"select * from $tbl_name");
    $cnt=1;
    $row=mysqli_num_rows($ret);
    if($row>0){
    while ($row=mysqli_fetch_array($ret)) {

    ?>
    <!--Fetch the Records -->
                        <tr>
                            <td><?php echo $cnt;?></td>
                            <td><img src="profilepics/<?=$row['SERVICE_IMG']?>" width="120px" height="100px"/></td>
                            <td><?php  echo $row['SERVICE_TITLE'];?></td>
                            <td><?php  echo $row['SERVICE_DESCRIPTION'];?></td>                        
                            <td>
                                <a href="service_read.php?viewid=<?php echo htmlentities ($row['SERVICE_NO']);?>" class="view" title="View" data-toggle="tooltip"><i class="fa fa-bars"></i></a>
                                <a href="service_edit.php?editid=<?php echo htmlentities ($row['SERVICE_NO']);?>" class="edit" title="Edit" data-toggle="tooltip"><i class="fa fa-pencil-square-o"></i></a>
                                <a href="img_test.php?delid=<?php echo ($row['SERVICE_NO']);?>&&ppic=<?php echo $row['SERVICE_IMG'];?>" class="delete" title="Delete" data-toggle="tooltip" onclick="return confirm('Do you really want to Delete ?');"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <?php 
    $cnt=$cnt+1;
    } } else {?>
    <tr>
        <th style="text-align:center; color:red;" colspan="6">No Record Found</th>
    </tr>
    <?php } ?>                 
                    
                    </tbody>
                </table>
        
            </div>
        </div>
    </div>     
</body>

<?php include 'include/footer.php';?>
