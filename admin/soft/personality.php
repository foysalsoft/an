<?php include 'include/header.php';?>
<?php $table_heading = "Terms of use";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
 <?php
    $tbl_name="terms_of_use";        //your table name
    $user_no =$_SESSION['user']['user_no'];
    
    $targetpage = "personality.php";  //your file name  (the name of this file)
    $CURR_TIME = date('Y-m-d H:i:s'); 
    $mgs = '';
    $class='';

         if(isset($_GET['delete']))
         {
             $ID = $_GET['delete'];
             $sql = "UPDATE $tbl_name SET `IS_DELETED` = 1 ,`DELETED_BY` = '$user_no', `DELETED_ON` = '$CURR_TIME' WHERE TERMS_NO = $ID";
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
        $TERMS=mysqli_real_escape_string($con,trim($_POST['TERMS']));

        $SQL = "SELECT * FROM $tbl_name WHERE `IS_DELETED` = 0 AND `TERMS`='$TERMS' ";
        $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
        if($COUNT < 1):
            
                          
      $sql = "INSERT INTO $tbl_name SET `TERMS`='$TERMS',`CREATED_BY` = '$user_no', `CREATED_ON` = '$CURR_TIME'";
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
                    $TERMS_NO=trim($_POST['TERMS_NO']);
                    $TERMS=mysqli_real_escape_string($con,trim($_POST['TERMS']));

                    $SQL = "SELECT * FROM $tbl_name WHERE `TERMS`='$TERMS' AND `TERMS_NO`!= '$TERMS_NO'";
                        $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                        if($COUNT < 1): 
                        
                        $sql = "UPDATE $tbl_name SET  `TERMS`='$TERMS',`IS_UPDATED`=1,`UPDATED_BY` = '$user_no', `UPDATED_ON` = '$CURR_TIME' WHERE `TERMS_NO` = '$TERMS_NO'";

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
        $sql = "SELECT * FROM $tbl_name WHERE `TERMS_NO`= '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal" id="signupForm" method="post" enctype="multipart/form-data" >
     <div class="form-group" <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class="col-md-5 col-md-offset-3 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">x</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="TERMS_NO" value="<?=$result['TERMS_NO']?>" />
            </div>
        </div>
        
         <div class="form-group">
            <label for="TERMS" class="control-label col-lg-2">Job Post</label>
            <div class="col-lg-4">
                <textarea class="form-control" id="TERMS" name="TERMS" value="" type="text"><?=$result['TERMS']?> </textarea>
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
   <form class="cmxform form-horizontal" id="signupForm" method="post" enctype="multipart/form-data">
        <div class="form-group" <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-5 col-md-offset-3 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">x</a><?=$mgs?></div>
            
        </div>
  
       <div class="form-group">
            <label for="TERMS" class="control-label col-lg-2">Terms of use</label>
            <div class="col-lg-8" id="" >
                <textarea class="form-control" id="TERMS" name="TERMS" value="" type="text" style="margin-bottom: 10px;" ></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3  col-lg-5">
                <input type="submit" class="btn btn-primary" name="submit" id="submit" value="Add" style="padding: 1rem 10rem;" />
            </div>
        </div>
    </form>
<?php
    endif;
?> 
    <!-- <form method="post" class="cmxform form-horizontal ">
        <fieldset class="scheduler-border">
                <legend class="scheduler-border">Search</legend>
              
                <div class="form-group ">
                     <label for="location" class="control-label col-lg-2">Job Post</label>
                    <div class="col-lg-4">

                        <input class=" form-control" id="TERMS" name="TERMS" type="text" >
                        
                    </div>
                    <label for="item" class="control-label col-lg-2"></label>
                    <div class="col-lg-4">
                         
                    </div>
                    <label for="location" class="control-label col-lg-2"></label>
                    <div class=" col-lg-4">
                        <input type="submit" class="btn btn-primary pull-right" id="searchBtn" name="searchBtn" value="Search" />
                    </div>
                </div>
                
                 
          </fieldset> 
    </form> -->
<?php
    $where = "";
    if(isset($_POST['searchBtn']))
    {
        
        $TERMS =mysqli_real_escape_string($con,trim($_POST['TERMS']));
          if($TERMS != ""){
            $where.=" AND $tbl_name.`TERMS` LIKE '%$TERMS%'";
          }
          
         
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
    
    
    /*Sql query for showing data to user*/
     $sql = "SELECT * FROM $tbl_name   WHERE `IS_DELETED` = 0  $where  ORDER BY $tbl_name.`TERMS_NO` DESC LIMIT $start, $limit";
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
            <th><center>Terms of use</center></th>
            <th><center>Action</center></th>
            
         </tr>
             <?php $i=1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><center><?=$i++?></center></td>
            <td><?=$row['TERMS']?></td>
            <td>
               <center> <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['TERMS_NO']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> </a>
                <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['TERMS_NO']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> </a> </center>
            </td>
        </tr>
    <?php endwhile;?>
    </table>

</div>
<?=$pagination?> 
<?php include 'include/footer.php';?>


<script src="https://cdn.tiny.cloud/1/ispgw6l5wqmtfhrp4b5of70hzejdxsoldh8o371erwvbpnte/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
<script>
    tinymce.init({
      selector: 'textarea',
      plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed linkchecker a11ychecker tinymcespellchecker permanentpen powerpaste advtable advcode editimage tinycomments tableofcontents footnotes mergetags autocorrect typography inlinecss',
      toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | addcomment showcomments | spellcheckdialog a11ycheck typography | align lineheight | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
      tinycomments_mode: 'embedded',
      tinycomments_author: 'Author name',
      mergetags_list: [
        { value: 'First.Name', title: 'First Name' },
        { value: 'Email', title: 'Email' },
      ]
    });
</script>
