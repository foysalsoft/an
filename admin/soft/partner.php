<?php include 'include/header.php';?>
<?php $table_heading = "";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
 <?php
    $tbl_name="partner";        //your table name
    $user_no =$_SESSION['user']['user_no'];
    $CURR_TIME = date('Y-m-d H:i:s'); 
    $mgs = '';
    $class='';
    if(isset($_GET['delid']))
        {
            $rid=intval($_GET['delid']);
            $PARTNER_IMG=$_GET['ppic'];
            $ppicpath="profilepics"."/".$PARTNER_IMG;
            $sql=mysqli_query($con,"DELETE from $tbl_name where PARTNER_NO = $rid");
            unlink($ppicpath);
            echo "<script>alert('Data deleted');</script>"; 
            echo "<script>window.location.href = 'partner.php'</script>";     
        }           
?> 
<body>
    <div class="container-xl">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-5">
                            <h2>Our <b>Partners</b></h2>
                        </div>
                        <div class="col-sm-7" align="right">
                            <a href="partner_insert.php" class="btn btn-secondary"><i class="fa fa-plus-square-o"></i> <span>Add New Partner</span></a>                 
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Partner Image</th>
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
                            <td><img src="profilepics/<?php  echo $row['PARTNER_IMG'];?>" width="80" height="80"></td>
                            <td>
                                <a href="partner_read.php?viewid=<?php echo htmlentities ($row['PARTNER_NO']);?>" class="view" title="View" data-toggle="tooltip"><i class="fa fa-bars"></i></a>
                                <a href="partner_edit.php?editid=<?php echo htmlentities ($row['PARTNER_NO']);?>" class="edit" title="Edit" data-toggle="tooltip"><i class="fa fa-pencil-square-o"></i></a>
                                <a href="partner.php?delid=<?php echo ($row['PARTNER_NO']);?>&&ppic=<?php echo $row['PARTNER_IMG'];?>" class="delete" title="Delete" data-toggle="tooltip" onclick="return confirm('Do you really want to Delete ?');"><i class="fa fa-trash-o"></i></a>
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
