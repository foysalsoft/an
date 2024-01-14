<?php include 'include/header.php';?>
<?php $table_heading = "<h4 style='color: #fff;'> Password Change</h4>";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
<?php
    $tbl_name="xxx_user";        //your table name
    $user_no =$_SESSION['user']['user_no'];
    
    $targetpage = "change_pw.php";  //your file name  (the name of this file)
    $CURR_TIME = date('Y-m-d H:i:s'); 
    $mgs = '';
    $class='';

if (isset($_POST['update'])) {
    $user_no = trim($_POST['user_no']);
    $user_name = mysqli_real_escape_string($con, trim($_POST['user_name']));
    $plain_password = mysqli_real_escape_string($con, trim($_POST['pass']));
    
    // Hash the password using MD5
    $hashed_password = md5($plain_password);

    $SQL = "SELECT * FROM $tbl_name WHERE `user_name`='$user_name' AND `user_no`!= '$user_no'";
    $COUNT = mysqli_num_rows(mysqli_query($con, $SQL));
    
    if ($COUNT < 1) {
        $sql = "UPDATE $tbl_name SET `pass`='$hashed_password' WHERE `user_no` = '$user_no'";
        $result = mysqli_query($con, $sql);
        
        if ($result) {
            $mgs = "Data Update Successfully!";
            $class = "green_color alert alert-success col-md-6 alert-dismissable";
        } else {
            $mgs = "Data Update Fail!";
            $class = "red_color alert alert-warning alert-dismissable col-md-6";
        }
    } else {
        $mgs = "Duplicate Entry!";
        $class = "red_color alert alert-warning alert-dismissable col-md-6";
    }
}
?> 
    <?php
        if(isset($_GET['edit'])):
        $id = $_GET['edit'];
        $sql = "SELECT * FROM $tbl_name WHERE `user_no`= '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" enctype="multipart/form-data" >
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-5 col-md-offset-3 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">x</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="user_no" value="<?=$result['user_no']?>" />
            </div>
        </div>
        
         <div class="form-group ">
            <label for="user_name" class="control-label col-lg-2">User Name</label>
            <div class="col-lg-4">
                <input class=" form-control" id="user_name" name="user_name" value="<?=$result['user_name']?>" type="text" readonly/>
            </div>

            <label for="pass" class="control-label col-lg-2">Password</label>
            <div class="col-lg-4">
                <input class=" form-control" id="pass" name="pass" value="<?=$result['pass']?>"type="password"    />
            </div>

        </div>

        <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-2  col-lg-5">
                <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
    
  
<?php
    endif;
?> 
<?php
    
    $user =$_SESSION['user']['user_name'];
    /*Sql query for showing data to user*/
     $sql = "SELECT * FROM $tbl_name WHERE `user_name`='$user'  $where  ORDER BY $tbl_name.`user_no`";
    $result = mysqli_query($con,$sql);
?>
<div style="overflow: auto">
    <table   class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
        <tr>
            <th><center>SI</center></th>
            <th><center>User Name</center></th>
            <th><center>Action</center></th>
            
         </tr>
             <?php $i=1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><center><?=$i++?></center></td>
            <td><?=$row['user_name']?></td>
            <td>
               <center> <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['user_no']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> </a>
            </td>
        </tr>
    <?php endwhile;?>
    </table>

</div>
<?=$pagination?> 
<?php include 'include/footer.php';?>
