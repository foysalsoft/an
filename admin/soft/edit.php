<?php include 'include/header.php';?>
<?php $table_heading = "<h3 style='text-align: center;'>Applicant Registration Form</h3>";?> 
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>

<?php
if (isset($_POST['update'])) {
    $applicant_no = $_POST['applicant_no'];
    $name = $_POST['name'];
    $father = $_POST['father'];
    $mother = $_POST['mother'];
    $nid = $_POST['nid'];
    $dob = $_POST['dob'];
    $job_post = $_POST['job_post'];
    $maritalStatus = $_POST['maritalStatus'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $expected_salary = $_POST['expected_salary'];
    $joining_date = $_POST['joining_date'];
    $switch_job = $_POST['switch_job'];

    $image = null; // Variable to store the updated image filename

    if ($_FILES["image"]["error"] === UPLOAD_ERR_OK) {
        // Generate a unique filename for the uploaded image
        $image = time() . $_FILES["image"]["name"];
        // Move the uploaded file to the desired location
        move_uploaded_file($_FILES["image"]["tmp_name"], "upload/" . $image);
    }

    $sql = "UPDATE `applicants` SET `name` = ?, `father` = ?, `mother` = ?, `nid` = ?, `dob` = ?, `job_post` = ?, `maritalStatus` = ?, `email` = ?, `phone` = ?, `address` = ?, `expected_salary` = ?, `joining_date` = ?, `switch_job` = ?, `UPDATED_ON` = ?, `UPDATED_BY` = ?";

	// Check if image is updated
	if ($image !== null) {
	    $sql .= ", `image` = ?";
	}

	$sql .= " WHERE `applicant_no` = ?";

    $stmt = $con->prepare($sql);

    if ($stmt) {
        // Bind parameters to the prepared statement
        if ($image !== null) {
            $stmt->bind_param("sssssssssssssssss", $name, $father, $mother, $nid, $dob, $job_post, $maritalStatus, $email, $phone, $address, $expected_salary, $joining_date, $switch_job, $CURR_TIME, $user_no, $image, $applicant_no);

        } else {
            $stmt->bind_param("ssssssssssssssss", $name, $father, $mother, $nid, $dob, $job_post, $maritalStatus, $email, $phone, $address, $expected_salary, $joining_date, $switch_job, $CURR_TIME, $user_no, $applicant_no);
        }

        // Execute the update query
        if ($stmt->execute()) {
            // Get the applicant_id of the updated applicant
            $applicant_id = $applicant_no;

            // Flag to track if any changes were made
            $changes_made = false;

            // Delete existing educational qualifications for the applicant
            $delete_education_sql = "DELETE FROM institutions WHERE applicant_id = ?";
            $delete_education_stmt = $con->prepare($delete_education_sql);
            $delete_education_stmt->bind_param("i", $applicant_id);
            $delete_education_stmt->execute();
            $delete_education_stmt->close();

            // Insert updated educational qualifications
            if (is_array($_POST['institution']) && is_array($_POST['examination']) && is_array($_POST['subject']) && is_array($_POST['year_of_study'])) {
                $education_sql = "INSERT INTO institutions (applicant_id, institution, examination, subject, year_of_study) VALUES (?, ?, ?, ?, ?)";
                $education_stmt = $con->prepare($education_sql);

                foreach ($_POST['institution'] as $key => $institution) {
                    $examination = $_POST['examination'][$key];
                    $subject = $_POST['subject'][$key];
                    $year_of_study = $_POST['year_of_study'][$key];

                    $education_stmt->bind_param("issss", $applicant_id, $institution, $examination, $subject, $year_of_study);
                    $education_stmt->execute();

                    // Set changes_made flag to true if any changes were made
                    if ($education_stmt->affected_rows > 0) {
                        $changes_made = true;
                    }
                }

                $education_stmt->close();
            }

            // Delete existing experiences for the applicant
            $delete_experience_sql = "DELETE FROM job_experiences WHERE applicant_id = ?";
            $delete_experience_stmt = $con->prepare($delete_experience_sql);
            $delete_experience_stmt->bind_param("i", $applicant_id);
            $delete_experience_stmt->execute();
            $delete_experience_stmt->close();

            // Insert updated experiences
            if (is_array($_POST['post_name']) && is_array($_POST['company']) && is_array($_POST['job_duration']) && is_array($_POST['job_description'])) {
                $experience_sql = "INSERT INTO job_experiences (applicant_id, post_name, company, job_duration, job_description) VALUES (?, ?, ?, ?, ?)";
                $experience_stmt = $con->prepare($experience_sql);

                foreach ($_POST['post_name'] as $key => $post_name) {
                    $company = $_POST['company'][$key];
                    $job_duration = $_POST['job_duration'][$key];
                    $job_description = $_POST['job_description'][$key];

                    $experience_stmt->bind_param("issss", $applicant_id, $post_name, $company, $job_duration, $job_description);
                    $experience_stmt->execute();

                    // Set changes_made flag to true if any changes were made
                    if ($experience_stmt->affected_rows > 0) {
                        $changes_made = true;
                    }
                }

                $experience_stmt->close();
            }

            // Delete existing skills for the applicant
            $delete_skills_sql = "DELETE FROM skills WHERE applicant_id = ?";
            $delete_skills_stmt = $con->prepare($delete_skills_sql);
            $delete_skills_stmt->bind_param("i", $applicant_id);
            $delete_skills_stmt->execute();
            $delete_skills_stmt->close();

            // Insert updated skills
            if (is_array($_POST['skills'])) {
                $skills_sql = "INSERT INTO skills (applicant_id, skills) VALUES (?, ?)";
                $skills_stmt = $con->prepare($skills_sql);

                foreach ($_POST['skills'] as $skill) {
                    $skills_stmt->bind_param("is", $applicant_id, $skill);
                    $skills_stmt->execute();

                    // Set changes_made flag to true if any changes were made
                    if ($skills_stmt->affected_rows > 0) {
                        $changes_made = true;
                    }
                }

                $skills_stmt->close();
            }

            if ($changes_made) {
                // Changes were made
                $msg = "Data Updated Successfully!";
                $class = "green_color alert alert-success col-md-6 alert-dismissable";
                echo '<script>window.location.href = "test6.php";</script>';
            } else {
                // No changes were made
                $msg = "No changes were made.";
                $class = "blue_color alert alert-info col-md-6 alert-dismissable";
            }
        } else {
            $msg = "Data Update Failed!";
            $class = "red_color alert alert-warning alert-dismissable col-md-6";
        }

        $stmt->close();
    }
}
?>


<?php
    if(isset($_GET['edit'])):
    $id = $_GET['edit'];
    $user_no = $_SESSION['user']['user_no'];
	$sql = "SELECT DISTINCT * FROM `applicants` LEFT JOIN `institutions` on applicants.applicant_no = institutions.applicant_id LEFT JOIN `job_experiences` ON applicants.applicant_no = job_experiences.applicant_id LEFT JOIN `skills` ON applicants.applicant_no = skills.applicant_id WHERE applicants.CREATED_BY = '$user_no' AND `applicants`.IS_DELETED = 0";

    $result = mysqli_fetch_array(mysqli_query($con,$sql));
?>

<form class="cmxform form-horizontal " id="signupForm" method="post" enctype="multipart/form-data" >
    <h4 style="text-align: center;">Personal Information</h4>
      <div class="form-group" style="margin: 1rem;">
         <div class="form-group">
         	<div>
                <input type="hidden" name="applicant_no" value="<?=$result['applicant_no']?>" />
            </div>
            <label for="image">Image</label>
            <div>
                <input type="file"  name="image" id="" value="<?=$result['image']?>">
                <img src="upload/<?=$result['image']?>" height="80" width="60"/> 
            </div>
           <div>
                <input type="hidden" name="image" value="<?=$result['image']?>" />
            </div>
        </div>
         <div class="form-group">
              <label for="name">Full Name:</label>
              <input type="text" class="form-control" id="name" name="name" value="<?=$result['name']?>" required>
         </div>
         <div class="form-group">
            <label for="father">Father's Name:</label>
            <input type="text" class="form-control" id="father" name="father" value="<?=$result['father']?>" required>
         </div>
         <div class="form-group">
            <label for="mother">Mother's Name:</label>
            <input type="text" class="form-control" id="mother" name="mother" value="<?=$result['mother']?>" required>
         </div>
         <div class="form-group">
            <label for="nid">NID:</label>
            <input type="text" class="form-control" id="nid" name="nid" value="<?=$result['nid']?>" required>
         </div>
         <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="date" class="form-control" id="dob" name="dob" value="<?=$result['dob']?>" required>
         </div>
         <div class="form-group">
		    <label for="job_post">Job Post:</label>
		    <select class="form-control" name="job_post" id="job_post">
		        <option value="">Select Job Position</option>
		        <option value="Support Executive"<?php if ($result['job_post'] === 'Support Executive') echo ' selected'; ?>>Support Executive</option>
		        <option value="Sr. Cable Technician"<?php if ($result['job_post'] === 'Sr. Cable Technician') echo ' selected'; ?>>Sr. Cable Technician</option>
		        <option value="Cable Technician"<?php if ($result['job_post'] === 'Cable Technician') echo ' selected'; ?>>Cable Technician</option>
		    </select>
		</div>

            <div class="form-group">
               <label for="expected_salary">Expected Salary:</label>
               <input type="number" class="form-control" id="expected_salary" name="expected_salary" value="<?=$result['expected_salary']?>"required>
            </div>
            <div class="form-group">
               <label for="joining_date">Possible Joining Date:</label>
               <input type="date" class="form-control" id="joining_date" name="joining_date" value="<?=$result['joining_date']?>" required>
            </div>
            <div class="form-group">
               <label for="switch_job">Why Switch The Job:</label>
               <textarea type="text" class="form-control" id="switch_job" name="switch_job" placeholder="Why you want to switch the job" required><?=$result['switch_job']?></textarea>
            </div>
			<label>Marital Status</label><br>
			<div class="form-check form-check-inline">
			    <input class="form-check-input" type="radio" name="maritalStatus" id="single" value="single" <?php if ($result['maritalStatus'] === 'single') echo 'checked'; ?>>
			    <label class="form-check-label" for="single">Single</label>
			</div>
			<div class="form-check form-check-inline">
			    <input class="form-check-input" type="radio" name="maritalStatus" id="married" value="married" <?php if ($result['maritalStatus'] === 'married') echo 'checked'; ?>>
			    <label class="form-check-label" for="married">Married</label>
			</div>
			<div class="form-check form-check-inline">
			    <input class="form-check-input" type="radio" name="maritalStatus" id="divorced" value="divorced" <?php if ($result['maritalStatus'] === 'divorced') echo 'checked'; ?>>
			    <label class="form-check-label" for="divorced">Divorced</label>
			</div>

         <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" value="<?=$result['email']?>" required>
         </div>
         <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="tel" class="form-control" id="phone" name="phone" pattern="01\d{9}" value="<?=$result['phone']?>" required>
         </div>
         <div class="form-group">
            <label for="address">Address:</label>
            <textarea type="text" class="form-control" id="address" name="address" value="<?=$result['address']?>" required><?=$result['address']?></textarea>
         </div>
         <!-- <button type="button" class="btn btn-primary next" id="next">Next</button> -->
      </div>

		<h4 style="text-align: center;">Educational Qualification</h4>
		<div id="education-container">
		   <?php 
		      $result = mysqli_query($con, "SELECT DISTINCT `institutions`.`institution`,`institutions`.`examination`, `institutions`.`subject`,`institutions`.`year_of_study` FROM `applicants` LEFT JOIN `institutions` on applicants.applicant_no = institutions.applicant_id LEFT JOIN `job_experiences` ON applicants.applicant_no = job_experiences.applicant_id LEFT JOIN `skills` ON applicants.applicant_no = skills.applicant_id WHERE applicants.CREATED_BY = '$user_no' AND `applicants`.IS_DELETED = 0");
		      while ($qualification = mysqli_fetch_array($result)):
		   ?>
		   <div class="form-group education" style="margin: 1rem;">
		      <div class="form-group">
		         <label for="institution">Institution Name:</label>
		         <input type="text" class="form-control" id="institution" name="institution[]" value="<?php echo $qualification['institution']; ?>" placeholder="Enter your institution name" required>
		      </div>
		      <div class="form-group">
		         <label for="examination">Name of Examination:</label>
		         <select class="form-control form-select form-select-sm" aria-label=".form-select-sm example" name="examination[]" id="examination">
		            <option selected>Select Examination</option>
		            <option value="SSC" <?php if ($qualification['examination'] == 'SSC') echo 'selected'; ?>>SSC</option>
		            <option value="HSC" <?php if ($qualification['examination'] == 'HSC') echo 'selected'; ?>>HSC</option>
		            <option value="Diploma" <?php if ($qualification['examination'] == 'Diploma') echo 'selected'; ?>>Diploma</option>
		            <option value="B.Sc" <?php if ($qualification['examination'] == 'B.Sc') echo 'selected'; ?>>B.Sc</option>
		            <option value="Masters" <?php if ($qualification['examination'] == 'Masters') echo 'selected'; ?>>Masters</option>
		         </select>
		      </div>
		      <div class="form-group">
		         <label for="subject">Group/Subject Name:</label>
		         <input type="text" class="form-control" id="subject" name="subject[]" value="<?php echo $qualification['subject']; ?>" placeholder="Enter your group/subject name" required>
		      </div>
		      <div class="form-group">
		         <label for="year_of_study">Years of Study:</label>
		         <input type="text" class="form-control" id="year_of_study" name="year_of_study[]" value="<?php echo $qualification['year_of_study']; ?>" placeholder="Like 2020-2021" required>
		      </div>
		      <button type="button" class="btn btn-danger remove" id="remove">Remove</button>
		   </div>
		   <?php endwhile; ?>
		</div>


      <h4 style="text-align: center;">Experience & skills</h4>
      <div class="page page-3">
         <div id="experience-container" >
         	<?php 
		      $result = mysqli_query($con, "SELECT DISTINCT `job_experiences`.`post_name`,`job_experiences`.`company`, `job_experiences`.`job_duration`,`job_experiences`.`job_description` FROM `applicants` LEFT JOIN `institutions` on applicants.applicant_no = institutions.applicant_id LEFT JOIN `job_experiences` ON applicants.applicant_no = job_experiences.applicant_id LEFT JOIN `skills` ON applicants.applicant_no = skills.applicant_id WHERE applicants.CREATED_BY = '$user_no' AND `applicants`.IS_DELETED = 0");
		      while ($experience = mysqli_fetch_array($result)):
		   ?>
            <div class="form-group experience" style="margin: 1rem;">
               <div class="form-group">
                  <label for="post_name">Post Name:</label>
                  <input type="text" class="form-control" id="post_name" name="post_name[]" value="<?php echo $experience['post_name']; ?>" required>
               </div>
               <div class="form-group">
                  <label for="company">Company Name:</label>
                  <input class="form-control" id="company" name="company[]" value="<?php echo $experience['company']; ?>" required>
               </div>
               <div class="form-group">
                  <label for="job_duration">Job Duration:</label>
                  <input class="form-control" id="job_duration" name="job_duration[]" value="<?php echo $experience['job_duration']; ?>" required>
               </div>
               <div class="form-group">
                  <label for="job_description">Job Discription:</label>
                  <textarea class="form-control" id="job_discription" name="job_description[]" value="" required><?php echo $experience['job_description']; ?></textarea>
               </div>
               <button type="button" class="btn btn-primary add" id="add">Add</button>
               <button type="button" class="btn btn-danger remove" id="remove">Remove</button>
            </div>
            <?php endwhile; ?>
         </div>
         <?php 
		      $result = mysqli_query($con, "SELECT DISTINCT `skills`.`skills` FROM `applicants` LEFT JOIN `institutions` on applicants.applicant_no = institutions.applicant_id LEFT JOIN `job_experiences` ON applicants.applicant_no = job_experiences.applicant_id LEFT JOIN `skills` ON applicants.applicant_no = skills.applicant_id WHERE applicants.CREATED_BY = '$user_no' AND `applicants`.IS_DELETED = 0");
		      while ($skill = mysqli_fetch_array($result)):
		   ?>
         <div id="skill-container">
            <div class="form-group skills" style="margin: 1rem;">
               <div class="form-group">
                  <label for="skills">skills:</label>
                  <input class="form-control" id="skills" name="skills[]" value="<?php echo $skill['skills']; ?>" required>
               </div>
               <button type="button" class="btn btn-primary add" id="add">Add</button>
               <button type="button" class="btn btn-danger remove" id="remove">Remove</button>
            </div>
         </div>
         <?php endwhile; ?>
         <div style="display: flex; align-items: center; justify-content: center;">
           <button type="submit" class="btn btn-primary" name="update" id="update" style="padding: 1rem 12rem; margin-top: 1rem;">Update</button>
         </div>
      </div>
   </form>
<?php endif; ?>

<?php include 'include/footer.php';?>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {

   // $('#image').change(function() {
   //      var file = this.files[0];
   //      var fileType = file.type;
   //      var fileSize = file.size;
   //      var validExtensions = ['image/jpeg', 'image/png', 'image/jpg'];
   //      var maxSize = 1 * 1024 * 1024; // 1 MB in bytes
   //      var imageError = $('#image-error');

   //      // Reset error message
   //      imageError.text('');

   //      // Check file extension
   //      if ($.inArray(fileType, validExtensions) === -1) {
   //          imageError.text('Only JPG and PNG formats are allowed.');
   //          this.value = ''; // Clear the file input field
   //          return;
   //      }

   //      // Check file size
   //      if (fileSize > maxSize) {
   //          imageError.text('Maximum file size is 1 MB.');
   //          this.value = ''; // Clear the file input field
   //          return;
   //      }

   //      // Additional validation for image dimensions (300x300)
   //      var image = new Image();
   //      image.onload = function() {
   //          var width = this.width;
   //          var height = this.height;

   //          if (width !== 300 || height !== 300) {
   //              imageError.text('Image dimensions must be 300x300 pixels.');
   //              this.value = ''; // Clear the file input field
   //          }
   //      };
   //      image.src = URL.createObjectURL(file);
   //  });


    $(document).on('click', '.add', function() {
      var educationDiv = $(this).closest('.education').clone(); // Clone the parent education div
      educationDiv.find('input[type="text"]').val(''); // Clear the input values
      $('#education-container').append(educationDiv); // Append the cloned div to the container
    });

    // Remove button click event handler using event delegation
     $(document).on('click', '.remove', function() {
      var educationDivs = $(this).closest('.education');
      if (educationDivs.siblings('.education').length > 0) { // Check if there are sibling education divs
        educationDivs.remove(); // Remove the closest education div
      }
    });

     $(document).on('click', '.add', function() {
      var experienceDiv = $(this).closest('.experience').clone(); // Clone the parent education div
      experienceDiv.find('input[type="text"]').val(''); // Clear the input values
      $('#experience-container').append(experienceDiv); // Append the cloned div to the container
    });

     // Remove button click event handler using event delegation
     $(document).on('click', '.remove', function() {
      var experienceDiv = $(this).closest('.experience');
      if (experienceDiv.siblings('.experience').length > 0) { // Check if there are sibling education divs
        experienceDiv.remove(); // Remove the closest education div
      }
    });

     $(document).on('click', '.add', function() {
    var skills = $(this).closest('.skills').clone(); // Clone the parent skills div
    skills.find('input[name="skills"]').val(''); // Clear the input value using the name attribute
    $('#skill-container').append(skills); // Append the cloned div to the container
  });

  $(document).on('click', '.remove', function() {
      $(this).parent('.skills').remove();
   });

});
</script>