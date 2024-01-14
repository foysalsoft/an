<?php include 'include/header.php';?>
<?php $table_heading = "";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
 <?php
    $tbl_name="slide";        //your table name
    $user_no =$_SESSION['user']['user_no'];
    $CURR_TIME = date('Y-m-d H:i:s'); 
    $mgs = '';
    $class='';
    if(isset($_GET['delid']))
        {
            $rid=intval($_GET['delid']);
            $S_IMG=$_GET['ppic'];
            $ppicpath="profilepics"."/".$S_IMG;
            $sql=mysqli_query($con,"DELETE from $tbl_name where SLIDE_NO=$rid");
            unlink($ppicpath);
            echo "<script>alert('Data deleted');</script>"; 
            echo "<script>window.location.href = 'slide.php'</script>";     
        }           
?> 
<body>
    <div class="container-xl">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-5">
                            <h2>Image <b>Slider</b></h2>
                        </div>
                        <div class="col-sm-7" align="right">
                            <a href="slide_insert.php" class="btn btn-secondary"><i class="fa fa-plus-square-o"></i> <span>Add New Slide</span></a>                 
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Slider Image</th>
                            <th>Title</th>                       
                            <th>links</th>
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
                            <td><img src="profilepics/<?php  echo $row['S_IMG'];?>" width="80" height="80"></td>
                            <td><?php  echo $row['S_TITLE'];?></td>
                            <td><?php  echo $row['S_LINK'];?></td>                        
                            <td>
                                <a href="slide_read.php?viewid=<?php echo htmlentities ($row['SLIDE_NO']);?>" class="view" title="View" data-toggle="tooltip"><i class="fa fa-bars"></i></a>
                                <a href="slide_edit.php?editid=<?php echo htmlentities ($row['SLIDE_NO']);?>" class="edit" title="Edit" data-toggle="tooltip"><i class="fa fa-pencil-square-o"></i></a>
                                <a href="slide.php?delid=<?php echo ($row['SLIDE_NO']);?>&&ppic=<?php echo $row['S_IMG'];?>" class="delete" title="Delete" data-toggle="tooltip" onclick="return confirm('Do you really want to Delete ?');"><i class="fa fa-trash-o"></i></a>
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
