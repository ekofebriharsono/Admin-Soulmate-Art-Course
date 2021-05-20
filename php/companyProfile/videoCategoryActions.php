<?php
include '../koneksi.php';
$conn = OpenCon();

if (isset($_POST['submitInsertVideoCategory'])) {
    $category_name = $_POST['category_name'];

    $sql = "INSERT INTO `video_category` (`id_video_category`, `category_name`) 
   VALUES (NULL, '$category_name')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/videoCategory.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/videoCategory.php?status=500');
    }
}

if (isset($_POST['submitDeleteVideoCategory'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `video_category` WHERE `video_category`.`id_video_category` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/videoCategory.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/videoCategory.php?status=500');
    }
}


if (isset($_POST['submitUpdateVideoCategory'])) {
    $id = $_POST['id'];
    $category_name = $_POST['category_name'];

    $sql = "UPDATE `video_category` SET `category_name` = '$category_name' WHERE `video_category`.`id_video_category` = $id;";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/videoCategory.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/videoCategory.php?status=500');
    }
}


CloseCon($conn);
