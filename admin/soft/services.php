<?php include 'include/header.php';?>
<?php $table_heading = "Services";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
 <?php
        $tbl_name="our_service";        //your table name
        $targetpage = "services.php";  //your file name  (the name of this file)
        $user_no =$_SESSION['user']['user_no'];
        $CURR_TIME = date('Y-m-d H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `IS_DELETED` = 1 ,`DELETED_BY` = '$user_no', `DELETED_ON` = '$CURR_TIME' WHERE SERVICE_NO = $ID";
        $result = mysqli_query($con,$sql);
        if($result)
        {
            $mgs = "Data Delete Successfully!";
            $class = "green_color alert alert-success col-md-6 alert-dismissable";
        }
        else
        {
            $mgs = "Data Delete Fail!";
            $class = "red_color alert alert-warning alert-dismissable col-md-6";
        }
    }
    if(isset($_POST['submit']))
    {
           $SERVICE_TITLE = trim($_POST['SERVICE_TITLE']);
           $SERVICE_DESCRIPTION = mysqli_real_escape_string($con, $_POST['SERVICE_DESCRIPTION']);
           $URL = trim($_POST['URL']);
           

            $SQL = "SELECT * FROM $tbl_name WHERE `IS_DELETED` = 0  AND (`SERVICE_TITLE` = '$SERVICE_TITLE' AND `SERVICE_DESCRIPTION` = 'SERVICE_DESCRIPTION')";
            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1):
               if ($_FILES["SERVICE_IMG"]["error"] > 0) {
                    $SERVICE_IMG = "No.png";
                    
                } else {
                    $SERVICE_IMG = time().$_FILES["SERVICE_IMG"]["name"];
                    move_uploaded_file($_FILES["SERVICE_IMG"]["tmp_name"],"upload/" . $SERVICE_IMG);
                }
                $sql = "INSERT INTO $tbl_name SET `SERVICE_TITLE` = '$SERVICE_TITLE',`SERVICE_DESCRIPTION` = '$SERVICE_DESCRIPTION',`SERVICE_IMG` = '$SERVICE_IMG',`URL`='$URL', `CREATED_BY`='$user_no', `CREATED_ON`='$CURR_TIME'";

               

                $result = mysqli_query($con,$sql);
                if($result)
                {
                    $mgs = "Data Insert Successfully!";
                    $class = "green_color alert alert-success col-md-6 alert-dismissable";
                }
                else
                {
                    $mgs = "Data Insert Fail!";
                    $class = "red_color alert alert-warning alert-dismissable col-md-6";
                }
            else:
                $mgs = "Duplicate Entry!";
                $class = "red_color alert alert-warning alert-dismissable col-md-6 alert alert-warning alert-dismissable col-md-6";
            endif;
    }
    if(isset($_POST['update']))
    {
           $SERVICE_NO = trim($_POST['SERVICE_NO']);
           
           $SERVICE_TITLE = trim($_POST['SERVICE_TITLE']);
           $SERVICE_DESCRIPTION = mysqli_real_escape_string($con, $_POST['SERVICE_DESCRIPTION']);
           $URL = trim($_POST['URL']);

            $SQL = "SELECT *  FROM $tbl_name WHERE `IS_DELETED` = 0 AND DISTRICT='$DISTRICT'   AND  SERVICE_DESCRIPTION='$SERVICE_DESCRIPTION' AND `SERVICE_NO` != '$SERVICE_NO' ";
            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
                if ($_FILES["SERVICE_IMG"]["error"] > 0) {
                    $SERVICE_IMG =$_POST['SERVICE_IMG'];
                    
                } else {
                    $SERVICE_IMG = time().$_FILES["SERVICE_IMG"]["name"];
                    move_uploaded_file($_FILES["SERVICE_IMG"]["tmp_name"],"upload/" . $SERVICE_IMG);
                }
                $sql = "UPDATE $tbl_name SET `SERVICE_TITLE` = '$SERVICE_TITLE',`SERVICE_DESCRIPTION` = '$SERVICE_DESCRIPTION',`SERVICE_IMG` = '$SERVICE_IMG',`URL`='$URL',`UPDATED_ON`= '$CURR_TIME' , `UPDATED_BY`= '$user_no' WHERE SERVICE_NO = $SERVICE_NO";
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
        $sql = "SELECT * FROM $tbl_name WHERE `SERVICE_NO` = '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" enctype="multipart/form-data" >
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-5 col-md-offset-3 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">x</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="SERVICE_NO" value="<?=$result['SERVICE_NO']?>" />
            </div>
        </div>
        <div class="form-group">
            <label for="PRIVACY" class="control-label col-lg-2">Title</label>
            <div class="col-lg-8" id="" >
                <input class="form-control" id="SERVICE_TITLE" name="SERVICE_TITLE" value="<?=$result['SERVICE_TITLE']?>" type="text"/>
            </div>
        </div>

        <div class="form-group">
            <label for="PRIVACY" class="control-label col-lg-2">Description</label>
            <div class="col-lg-8" id="" >
                <textarea class="form-control" id="SERVICE_DESCRIPTION" name="SERVICE_DESCRIPTION" value="<?=$result['SERVICE_DESCRIPTION']?>" type="text"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="PRIVACY" class="control-label col-lg-2">Url</label>
            <div class="col-lg-8" id="" >
                <input class="form-control" id="URL" name="URL" value="<?=$result['URL']?>" type="text"/>
            </div>
        </div>
        <div class="form-group ">
            <label for="SERVICE_IMG" class="control-label col-lg-3">Image </label>
            <div class="col-lg-5">
                <input type="file"  name="SERVICE_IMG" id="" value="<?=$result['SERVICE_IMG']?>">
                <img src="upload/<?=$result['SERVICE_IMG']?>" height="80" width="60"/> 
            </div>
           <div>
                <input type="hidden" name="SERVICE_IMG" value="<?=$result['SERVICE_IMG']?>" />
            </div>
        </div>
        
        
     <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-2 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" name="update" value="Update"/> 
            </div>
    </div>

    </form>
    
    <?php
        else:
    ?>

   <form class="cmxform form-horizontal " id="signupForm" method="post" enctype="multipart/form-data">
        <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-5 col-md-offset-3 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">x</a><?=$mgs?></div> 
        </div>
        <div class="form-group">
            <label for="PRIVACY" class="control-label col-lg-2">Title</label>
            <div class="col-lg-8" id="" >
                <input class="form-control" id="SERVICE_TITLE" name="SERVICE_TITLE" value="" type="text"/>
            </div>
        </div>

        <div class="form-group">
            <label for="PRIVACY" class="control-label col-lg-2">Description</label>
            <div class="col-lg-8" id="" >
                <textarea class="form-control" id="SERVICE_DESCRIPTION" name="SERVICE_DESCRIPTION" value="" type="text"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="PRIVACY" class="control-label col-lg-2">Url</label>
            <div class="col-lg-8" id="" >
                <input class="form-control" id="URL" name="URL" value="" type="text"/>
            </div>
        </div>
        <div class="form-group ">
            <label for="SERVICE_IMG" class="control-label col-lg-3">Area Image </label>
            <div class="col-lg-5">
                <input class="form-control" id="" name="SERVICE_IMG" type="file" />
            </div>
            
        </div>
       <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-2 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" id="btnAdd" name="submit"  />
            </div>
        </div>
    </form>
    
    
    <?php
        endif;
    ?>

    <form method="post" class="cmxform form-horizontal ">
        <fieldset class="scheduler-border">
                <legend class="scheduler-border">Search</legend>
                <div class="form-group">
                    <label for="location" class="control-label col-lg-2">Title</label>
                    <div class="col-lg-4">
                        <input class="form-control" id="SERVICE_TITLE" name="SERVICE_TITLE" value="" type="text"/>
                    </div>
                </div>
                <div class="form-group">
                    
                    <label for="location" class="control-label col-lg-2"></label>
                    <div class="col-lg-4">
                        <input type="submit" class="btn btn-primary" id="searchBtn" name="searchBtn" value="Search" />
                    </div>
                </div>
                 
          </fieldset> 
        </form>

    <?php

        $where = "";
        if(isset($_POST['searchBtn']))
        {    
              $SERVICE_TITLE =$_POST['SERVICE_TITLE'];
              if($SERVICE_TITLE != -1){
                $where.=" AND `coverage_area`.`SERVICE_TITLE` = '$SERVICE_TITLE'";
              }
            //   $UPAZILA_NO =$_POST['UPAZILA_NO'];
            //   if($UPAZILA_NO != -1){
            //     $where.=" AND `upazila`.`UPAZILA_NO` = '$UPAZILA_NO'";
            //   }

        }
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
    
    /* Get data. */
    $sql = "SELECT * FROM $tbl_name WHERE $tbl_name.`IS_DELETED` = 0 $where LIMIT $start, $limit";
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
            $pagination.= "<span class=\"disabled\"><< previous</span>";    
        
        //pages 
        if ($lastpage < 7 + ($adjacents * 2))   //not enough pages to bother breaking it up
        {   
            for ($counter = 1; $counter <= $lastpage; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class=\"current\">$counter</span>";
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
                        $pagination.= "<span class=\"current\">$counter</span>";
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
                        $pagination.= "<span class=\"current\">$counter</span>";
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
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
            }
        }
        
        //next button
        if ($page < $counter - 1) 
            $pagination.= "<a href=\"$targetpage?page=$next\">next >></a>";
        else
            $pagination.= "<span class=\"disabled\">next >></span>";
        $pagination.= "</div>\n";       
    }
?>
<div style="overflow: auto">
    <table   class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
        <tr>

            <th><center>Sl</center></th>
            <th><center>Title</center></th>
            <th><center>Description</center></th>
            <th><center>Url</center></th>
            <th><center>Image</center></th>
            <th><center>Action</center></th>
            
         </tr>
         <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><center><?=$i++?></center></td>
            <td><?=$row['SERVICE_TITLE']?></td>
            <td><?=$row['SERVICE_DESCRIPTION']?></td>
            <td><?=$row['URL']?></td>
            <td><a class="" target="_blank" href="upload/<?=$row['SERVICE_IMG']?>" title="Click to view full image"><img src="upload/<?=$row['SERVICE_IMG']?>" height="70px" width="60px"></a></td>
           <td>
               <center> <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['SERVICE_NO']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['SERVICE_NO']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a></center>
            </td>
        </tr>
    <?php endwhile;?>
    </table>
</div>
<?=$pagination?>
    
    <!---main content end---->
<?php include 'include/footer.php';?>



