<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coverage Area</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

     <style>
        .media {
    display: flex;
}

/* Set .pull-left and .media-body to have 50% width each */
.pull-left {
   width: 60%;
}
.media-body {
    width: 40%;
}

.pull-left img {
    width: 100%;
    height: auto; /* Maintain aspect ratio */
}



        .district-content {
            display: none;
            overflow: hidden;
            transition: height 0.09s ease;
        }

        .upazila-info {
            text-align: center;
            color: #fff;
        }


@media (max-width: 767px) {
    .col-sm-12 {
        width: 100%; /* Make each column take full width on small screens */
    }

    .media {
        flex-direction: column; /* Change to a column layout for small screens */
    }

    .pull-left {
        width: 100%; /* Make the image take full width */
    }

    .media-body {
        width: 100%; /* Make the text take full width */
        margin-top: 10px; /* Add some space between image and text */
    }
}
    </style>
</head>

<body>

<section id="coverage" class="coverage-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title text-center">
                    <h3>Coverage Area</h3>
                    <p></p>
                </div>
            </div>
        </div>
        <?php
        require 'admin/config/db_connection.php';
        $sql = "SELECT district.DISTRICT_NAME, upazila.UPAZILA_NAME, coverage_area.AREA_IMG
                FROM coverage_area
                LEFT JOIN district ON coverage_area.DISTRICT_NO = district.DISTRICT_NO
                LEFT JOIN upazila ON coverage_area.UPAZILA_NO = upazila.UPAZILA_NO
                WHERE coverage_area.`IS_DELETED` = 0
                ORDER BY district.SERIAL";
        $result1 = mysqli_query($con, $sql);
        $districts = array(); // Array to store district names and their upazila names

        while ($row = mysqli_fetch_array($result1)) {
            $district_name = $row['DISTRICT_NAME'];
            $upazila_name = $row['UPAZILA_NAME'];
            $area_img = $row['AREA_IMG'];

            if (!isset($districts[$district_name])) {
                $districts[$district_name] = array();
            }
            // Store upazila name and area image in the district array
            $districts[$district_name][] = array('upazila' => $upazila_name, 'area_img' => $area_img);
        }

        foreach ($districts as $district_name => $upazila_data) {
            echo '<div class="row">';
            echo '<div class="col-md-12">';
            echo '<div class="feature-2" style="position: relative;">';
            echo '<div class="district-toggle" data-district="' . $district_name . '" style="border: 1px solid #445f6d; padding: 5px; background-color: #445f6d; border-radius: 10px; height: 5rem;text-align: center;
            font-size: 2rem;color: #fff; cursor: pointer;">' . $district_name . '<i class="fa-solid district-icon fa-plus" style="border: 1px solid #445f6d; background-color: #445f6d; font-size: 2rem; height: 4rem;position: absolute; 
            top: 0px; right: 0px; "></i></div>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
            echo '<div class="row district-content" data-district="' . $district_name . '" style="display: none;">'; // Initially hidden
            foreach ($upazila_data as $data) {
                $upazila = $data['upazila'];
                $area_img_path = $data['area_img'];
                echo '<div class="col-sm-12 col-md-3 col-xs-3">';
                echo '<div class="feature-2">';
                echo '<div class="media" style="border: 1px solid #445f6d; padding: 5px; background-color: #445f6d; border-radius: 10px; min-height: 12rem;">';
                echo '<div class="pull-left" style="width: 60%;">';
                echo '<img src="admin/soft/upload/' . $area_img_path . '" class="img-responsive">';
                echo '</div>';
                echo '<div class="media-body" style="text-align: center; color: #fff; width: 40%">';
                echo '<div style="color: #fff;"><strong style=\'font-size: 1.5rem;\'>' . $upazila . '</strong></div>';
                echo '</div>';
                echo '</div>';
                echo '</div>';
                echo '</div>';
            }
            echo '</div>';
        }
        ?>
    </div>
</section>

<script>
$(document).ready(function() {
    $('.district-toggle').on('click', function() {
        var districtName = $(this).data('district');
        var districtContent = $('.district-content[data-district="' + districtName + '"]');
        var districtIcon = $(this).find('.district-icon');

        // Toggle the visibility of the district content
        districtContent.slideToggle();

        // Toggle the icon based on visibility
        districtIcon.toggleClass('fa-plus fa-minus');
    });
});
</script>

</body>
</html>
