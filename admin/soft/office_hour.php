<?php include 'include/header.php';?>
<?php $table_heading = "OFFICE DAYS";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
 <?php
    $tbl_name="working_hour";        //your table name
    $user_no =$_SESSION['user']['user_no'];
    
    $targetpage = "office_hour.php";  //your file name  (the name of this file)
    $CURR_TIME = date('Y-m-d H:i:s'); 
    $mgs = '';
    $class='';

        //  if(isset($_GET['delete']))
        //  {
        //      $ID = $_GET['delete'];
        //      $sql = "UPDATE $tbl_name SET `IS_DELETED` = 1 ,`DELETED_BY` = '$user_no', `DELETED_ON` = '$CURR_TIME' WHERE WORK_NO  = $ID";
        //      $result = mysqli_query($con,$sql);
        //      if($result)
        //      {
        //          $mgs = "Data Delete Successfully!";
        //          $class = "green_color alert alert-success col-md-6 alert-dismissable";
        //      }
        //      else
        //      {
        //          $mgs = "Data Delete Fail!";
        //          $class = "red_color alert alert-warning alert-dismissable col-md-6";
        //      }
        //  }
         
    // if(isset($_POST['submit']))
    // {
    //     $OFFICE_DAY=mysqli_real_escape_string($con,trim($_POST['OFFICE_DAY'])); 
    //     $EN_DESCRIPTION=mysqli_real_escape_string($con,trim($_POST['EN_DESCRIPTION']));
    //     $WEEKEND=mysqli_real_escape_string($con,trim($_POST['WEEKEND']));
    //     $BN_DESCRIPTION=mysqli_real_escape_string($con,trim($_POST['BN_DESCRIPTION']));

    //     $SQL = "SELECT * FROM $tbl_name WHERE `OFFICE_DAY`='$OFFICE_DAY' ";
    //     $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
    //     if($COUNT < 1):
            
                          
    //   $sql = "INSERT INTO $tbl_name SET `OFFICE_DAY`='$OFFICE_DAY',`WEEKEND`='$WEEKEND',`EN_DESCRIPTION`='$EN_DESCRIPTION',`BN_DESCRIPTION`='$BN_DESCRIPTION',`CREATED_BY` = '$user_no', `CREATED_ON` = '$CURR_TIME'";
    //         $result = mysqli_query($con,$sql);
    //         if($result)
    //             {
    //                 $mgs = "Data Insert Successfully!";
    //                 $class = "green_color alert alert-success col-md-6 alert-dismissable";
    //             }
    //             else
    //             {
    //                 $mgs = "Data Insert Fail!";
    //                 $class = "red_color alert alert-warning alert-dismissable col-md-6";
    //             }
    //         else:
    //             $mgs = "Duplicate Entry!";
    //             $class = "red_color alert alert-warning alert-dismissable col-md-6 alert alert-warning alert-dismissable col-md-6";
    //         endif;
    // }
    
               if(isset($_POST['update']))
                {
                    $WORK_NO=trim($_POST['WORK_NO']);
                    $OFFICE_DAY=mysqli_real_escape_string($con,trim($_POST['OFFICE_DAY']));
                    $WEEKEND=mysqli_real_escape_string($con,trim($_POST['WEEKEND']));
                   

                    $SQL = "SELECT * FROM $tbl_name WHERE `OFFICE_DAY`='$OFFICE_DAY' AND `WORK_NO`!= '$WORK_NO'";
                        $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                        if($COUNT < 1): 
                        
                        $sql = "UPDATE $tbl_name SET  `OFFICE_DAY`='$OFFICE_DAY',`WEEKEND`='$WEEKEND',`IS_UPDATED`=1,`UPDATED_BY` = '$user_no', `UPDATED_ON` = '$CURR_TIME' WHERE `WORK_NO` = '$WORK_NO'";

            $result = mysqli_query($con,$sql);
             if($result)
                {
                    $mgs = "Data Update Successfully!";
                    $class = "green_color alert alert-success col-md-6 alert-dismissable";
                }
                else
                {
                    $mgs = "Data Update Fail!";
                    $class = "red_color alert alert-warning alert-dismissable col-md-6";
                }
            else:
                $mgs = "Duplicate Entry!";
                $class = "red_color alert alert-warning alert-dismissable col-md-6";
            endif;
    }
?> 
    <?php
        if(isset($_GET['edit'])):
        $id = $_GET['edit'];
        $sql = "SELECT * FROM $tbl_name WHERE `WORK_NO`= '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" enctype="multipart/form-data" >
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-5 col-md-offset-3 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">x</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="WORK_NO" value="<?=$result['WORK_NO']?>" />
            </div>
        </div>
        
         <div class="form-group ">
            <label for="OFFICE_DAY" class="control-label col-lg-2">OFFICE DAYS</label>
            <div class="col-lg-4">
                <input class=" form-control" id="OFFICE_DAY" name="OFFICE_DAY" value="<?=$result['OFFICE_DAY']?>" type="text"    />
            </div>

            <label for="WEEKEND" class="control-label col-lg-2">WEEKEND</label>
            <div class="col-lg-4">
                <input class=" form-control" id="WEEKEND" name="WEEKEND" value="<?=$result['WEEKEND']?>"type="text"    />
            </div>

        </div>

        <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-2  col-lg-5">
                <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
    
    <?php
        else:
    ?>
   <!-- <form class="cmxform form-horizontal " id="signupForm" method="post" enctype="multipart/form-data">
        <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-5 col-md-offset-3 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">x</a><?=$mgs?></div>
            
        </div>
  
       <div class="form-group ">
            <label for="OFFICE_DAY" class="control-label col-lg-2">Faq Title (English)</label>
            <div class="col-lg-4">
                <input class=" form-control" id="OFFICE_DAY" name="OFFICE_DAY" value="" type="text"    />
            </div>

            <label for="WEEKEND" class="control-label col-lg-2">Faq Title (Bangla)</label>
            <div class="col-lg-4">
                <input class=" form-control" id="WEEKEND" name="WEEKEND" value="" type="text"    />
            </div>

        </div>
        <div class="form-group ">
            <label for="EN_DESCRIPTION" class="control-label col-lg-2">Faq Description (English)</label>
            <div class="col-lg-4">
                <input class=" form-control" id="EN_DESCRIPTION" name="EN_DESCRIPTION" value="" type="text"   />
            </div>

            <label for="BN_DESCRIPTION" class="control-label col-lg-2">Faq Description (Bangla)</label>
            <div class="col-lg-4">
                <input class=" form-control" id="BN_DESCRIPTION" name="BN_DESCRIPTION" value="" type="text"   />
            </div>

        </div>


        <!-- <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3  col-lg-5">
                <input type="submit" class="btn btn-primary" name="submit" id="submit" value="Add" />
                
            </div>
        </div>
    </form> -->
<?php
    endif;
?> 
<?php
    $where = "";
    // if(isset($_POST['searchBtn']))
    // {
        
    //     $OFFICE_DAY =mysqli_real_escape_string($con,trim($_POST['OFFICE_DAY']));
    //       if($OFFICE_DAY != ""){
    //         $where.=" AND $tbl_name.`OFFICE_DAY` LIKE '%$OFFICE_DAY%'";
    //       }
          
         
    // }
    // How many adjacent pages should be shown on each side?
    $adjacents = 3;
    
    /* 
       First get total number of rows in data table. 
       If you have a WHERE clause in your query, make sure you mirror it here.
    */
    $query = "SELECT COUNT(*) as num FROM $tbl_name WHERE `IS_DELETED` = 0 $where";
    $total_pages = mysqli_fetch_array(mysqli_query($con,$query));
    $total_pages = $total_pages['num'];
    
    /* Setup vars for query. */
    $limit = 15; 
    if(isset($_GET['page']))
    {                               //how many items to show per page
        $page = $_GET['page'];
    }
    else
    $page = 1;
    
    if($page) 
        $start = ($page - 1) * $limit;          //first item to display on this page
    else
        $start = 0;                             //if no page var is given, set start to 0
    
    
    /*Sql query for showing data to user*/
     $sql = "SELECT * FROM $tbl_name   WHERE `IS_DELETED` = 0  $where  ORDER BY $tbl_name.`WORK_NO` DESC LIMIT $start, $limit";
    $result = mysqli_query($con,$sql);

    /* Setup page vars for display. */
    if ($page == 0) $page = 1;                  //if no page var is given, default to 1.
    $prev = $page - 1;                          //previous page is page - 1
    $next = $page + 1;                          //next page is page + 1
    $lastpage = ceil($total_pages/$limit);      //lastpage is = total pages / items per page, rounded up.
    $lpm1 = $lastpage - 1;                      //last page minus 1
    
    /* 
        Now we apply our rules and draw the pagination object. 
        We're actually saving the code to a variable in case we want to draw it more than once.
    */
    $pagination = "";
    if($lastpage > 1)
    {   
        $pagination .= "<div class=\"pagination\">";
        //previous button
        if ($page > 1) 
            $pagination.= "<a href=\"$targetpage?page=$prev\"><< previous</a>";
        else
            $pagination.= "<p class=\"disabled\"><< previous</p>";    
        
        //pages 
        if ($lastpage < 7 + ($adjacents * 2))   //not enough pages to bother breaking it up
        {   
            for ($counter = 1; $counter <= $lastpage; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<p class=\"current\">$counter</p>";
                else
                    $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
            }
        }
        elseif($lastpage > 5 + ($adjacents * 2))    //enough pages to hide some
        {
            //close to beginning; only hide later pages
            if($page < 1 + ($adjacents * 2))        
            {
                for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<p class=\"current\">$counter</p>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
                $pagination.= "...";
                $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
            }
            //in middle; hide some front and some back
            elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
            {
                $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
                $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
                $pagination.= "...";
                for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<p class=\"current\">$counter</p>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
                $pagination.= "...";
                $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
            }
            //close to end; only hide early pages
            else
            {
                $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
                $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
                $pagination.= "...";
                for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<p class=\"current\">$counter</p>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
            }
        }
        
        //next button
        if ($page < $counter - 1) 
            $pagination.= "<a href=\"$targetpage?page=$next\">next >></a>";
        else
            $pagination.= "<p class=\"disabled\">next >></p>";
            $pagination.= "</div>\n";       
    }
    
?>
<div style="overflow: auto">
    <table   class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
        <tr>
            <th><center>SI</center></th>
            <th><center>OFFICE DAYS</center></th>
            <th><center>WEEKEND</center></th>
            <th><center>Action</center></th>
            
         </tr>
             <?php $i=1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><center><?=$i++?></center></td>
            <td><?=$row['OFFICE_DAY']?></td>
            <td><?=$row['WEEKEND']?></td>
            <td>
               <center> <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['WORK_NO']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> </a>
                <!-- <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['WORK_NO ']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> </a> </center> -->
            </td>
        </tr>
    <?php endwhile;?>
    </table>

</div>
<?=$pagination?> 
<?php include 'include/footer.php';?>
