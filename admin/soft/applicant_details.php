<?php include 'include/header.php';?>
<?php $table_heading = "";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
<?php
$targetpage = "edit.php";
$user_no = $_SESSION['user']['user_no'];

$name = $_GET['name'];

$sql = "SELECT DISTINCT * FROM `applicants` LEFT JOIN `institutions` on applicants.applicant_no = institutions.applicant_id LEFT JOIN `job_experiences` ON applicants.applicant_no = job_experiences.applicant_id LEFT JOIN `skills` ON applicants.applicant_no = skills.applicant_id WHERE applicants.name = '$name'";
$result = mysqli_query($con, $sql);

if ($result) {
    if (mysqli_num_rows($result) > 0) {
        $applicantData = mysqli_fetch_array($result);
    } else {
        echo "No applicant data found.";
        // Define $applicantData as an empty array or assign default values
        $applicantData = array();
    }
} else {
    echo "Error executing the query: " . mysqli_error($con);
    // Define $applicantData as an empty array or assign default values
    $applicantData = array();
}
?>

<div style="overflow: auto">
    <table class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6" style="color: #111;">
        <tr>
            <th colspan="2"><center><h3 style="text-transform: uppercase;" > Applicant's Detail Information </h3> </center></th>
        </tr>
        <?php if (isset($applicantData['name'])): ?>
        <tr>
	    <td>Applicant's Image:</td>
   	    <td><img src="../../applicant/portal/upload/<?= $applicantData['image'] ?>" height="80px" width="80px"></td>
        </tr>

    
        <tr>
            <td>Name of Applicant:</td>
            <td><?=$applicantData['name']?></td>
        </tr>
        <tr>
            <td>Father's Name:</td>
            <td><?=$applicantData['father']?></td>
        </tr>
        <tr>
            <td>Mother's Name:</td>
            <td><?=$applicantData['mother']?></td>
        </tr>
        <tr>
            <td>Nid:</td>
            <td><?=$applicantData['nid']?></td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td><?=$applicantData['dob']?></td>
        </tr>
        <tr>
            <td><strong>Job Post:</strong></td>
            <td><strong><?=$applicantData['job_post']?></strong></td>
        </tr>
        <tr>
            <td>Marital Status:</td>
            <td><?=$applicantData['maritalStatus']?></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><?=$applicantData['email']?></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><?=$applicantData['phone']?></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><?=$applicantData['address']?></td>
        </tr>
        <tr>
            <td>Expected Salary:</td>
            <td><?=$applicantData['expected_salary']?> /-BDT</td>
        </tr>
        <tr>
            <td>Joining Date:</td>
            <td><?=$applicantData['joining_date']?></td>
        </tr>
        <tr>
            <td>Why do you want to switch current job:</td>
            <td><?=$applicantData['switch_job']?></td>
        </tr>
        

        <?php
            mysqli_data_seek($result, 0); // Reset internal data pointer to the beginning
            $institutions = array();
            while ($row = mysqli_fetch_array($result)) {
                $institution = $row['institution'];
                $examination = $row['examination'];
                $subject = $row['subject'];
                $yearOfStudy = $row['year_of_study'];

                if (!isset($institutions[$institution])) {
                    $institutions[$institution] = array(
                        'examination' => $examination,
                        'subject' => $subject,
                        'year_of_study' => $yearOfStudy
                    );
                }
            }
        ?>
        <tr>
            <th colspan="2"><center><h4 style="text-transform: uppercase;" >Educational Information</h4></center></th>
        </tr>

        <?php foreach ($institutions as $institution => $data): ?>
            <tr>
                <td><strong> Institution Name:</strong></td>
                <td><strong><?= $institution ?></strong></td>
            </tr>
            <tr>
                <td>Board/Degree:</td>
                <td><?= $data['examination'] ?></td>
            </tr>
            <tr>
                <td>Group/Subject Name::</td>
                <td><?= $data['subject'] ?></td>
            </tr>
            <tr>
                <td>Passing Year:</td>
                <td><?= $data['year_of_study'] ?></td>
            </tr>
        <?php endforeach; ?>

        <?php
            mysqli_data_seek($result, 0); // Reset internal data pointer to the beginning
            $jobPosts = array();
            while ($row = mysqli_fetch_array($result)) {
                $post_name = $row['post_name'];
                $company = $row['company'];
                $job_duration = $row['job_duration'];
                $job_description = $row['job_description'];

                if (!isset($jobPosts[$post_name])) {
                    $jobPosts[$post_name] = array(
                        'company' => $company,
                        'job_duration' => $job_duration,
                        'job_description' => $job_description
                    );
                }
            }
        ?>

        <tr>
            <th colspan="2"><center><h4 style="text-transform: uppercase;" >Job Experience</h4></center></th>
        </tr>

        <?php foreach ($jobPosts as $post_name => $data): ?>
            <tr>
                <td><strong>Job Post Name:</strong></td>
                <td><strong><?= $post_name ?></strong></td>
            </tr>
            <tr>
                <td>Company:</td>
                <td><?= $data['company'] ?></td>
            </tr>
            <tr>
                <td>Job Duration:</td>
                <td><?= $data['job_duration'] ?></td>
            </tr>
            <tr>
                <td>Job Description:</td>
                <td><?= $data['job_description'] ?></td>
            </tr>
        <?php endforeach; ?>

        <?php
            mysqli_data_seek($result, 0); // Reset internal data pointer to the beginning
            $technicalSkills = array();
            while ($row = mysqli_fetch_array($result)) {
                $skills = explode(',', $row['skills']); // Split skills into an array
                foreach ($skills as $skill) {
                    $technicalSkills[] = $skill; // Add skills to the array
                }
            }
            $technicalSkills = array_unique($technicalSkills); // Remove duplicates
        ?>
        <tr>
            <td><strong> Technical Skills:</strong> </td>
            <td><strong> <?= implode(', ', $technicalSkills) ?></strong> </td>
        </tr>
        <?php else: ?>
            <tr>
                <td colspan="2">No applicant data available.</td>
            </tr>
        <?php endif; ?>
    </table>
    <!-- <div style="text-align: center; margin-top: 20px;">
        <a onclick="return confirm('Are you sure?');" href="<?= isset($applicantData['applicant_no']) ? $targetpage.'?edit='.$applicantData['applicant_no'] : '#' ?>" class="btn btn-primary">Edit</a>
        <a onclick="return confirm('Are you Sure Want to Submit?');" href="index.php" class="btn btn-info">Process</a>
    </div> -->

</div>

<?php include 'include/footer.php';?>

