<?php
    include "function.php";
    $conn = connectdb();

    $thesisID = $_POST['ThesisID'];
    $thesisTitle = $_POST['ThesisTitle'];
    $Authors = $_POST['Authors'];
    $college = $_POST['College'];
    $discussion = $_POST['Thesisdesc'];
    $tags = $_POST['Tags'];
    $permission = $_POST['Permission'];
    $upldate = $_POST['UploadDate'];
    // $upldate = echo "<script>dateTime();</script>";
    $uplby = $_POST['UploadBy'];
    $fileNew = $_POST['myFile'];

    $filename = basename($_FILES["myFile"]["name"]);
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["myFile"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

    if(isset($_POST["submit"])) {
        $check = getimagesize($_FILES["myFile"]["tmp_name"]);
        if($check !== false) {
          echo "File is an image - " . $check["mime"] . ".";
          $uploadOk = 1;
        } else {
          echo "File is not an image.";
          $uploadOk = 0;
        }
    }

    // Check if file already exists
    // if (file_exists($target_file)) {
    //     echo "Sorry, file already exists.";
    //     $uploadOk = 0;
    // }

    // Check file size
    // if ($_FILES["myFile"]["size"] > 500000000) {
    //     echo "Sorry, your file is too large.";
    //     $uploadOk = 0;
    // }

    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" && $imageFileType != "pdf" ) {
        echo "Sorry, only JPG, JPEG, PNG, GIF &PDF files are allowed.";
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["myFile"]["tmp_name"], $target_file)) {
            $sql = "UPDATE thesisarchivebook SET thesis_title = '$thesisTitle', authors = '$Authors', college = '$college', thesis_desc = '$discussion', tags = '$tags', permission = '$permission', filename = '$target_file', upload_date = '$upldate', uploaded_by = '$uplby' WHERE book_id = '$thesisID'";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
// ThesisID
    if ($conn->query($sql) === TRUE) {
    echo "<script>alert('Update success');window.location.href=document.referrer;</script>";
    die();
    }
    else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();

?>




