<?php
include '../koneksi.php';
$conn = OpenCon();


if (isset($_POST['submitInsertVideo'])) {

    $video_name = $_POST['video_name'];
    $id_video_category = $_POST['id_video_category'];
    $link = $_POST['link'];



    $sql = "INSERT INTO `video` (`id_video`,`id_video_category`, `video_name`, `link`) 
   VALUES (NULL, $id_video_category, '$video_name', '$link')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/video.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/video.php?status=500');
    }
}

if (isset($_POST['submitDeleteVideo'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `video` WHERE `video`.`id_video` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/video.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/video.php?status=500');
    }
}

if (isset($_POST['submitUpdateVideo'])) {
    $id = $_POST['id'];
    $video_name = $_POST['video_name'];
    $id_video_category = $_POST['id_video_category'];
    $link = $_POST['link'];



    $sql = "UPDATE `video` SET 
        `id_video_category` = '$id_video_category', 
        `video_name` = '$video_name', 
        `link` = '$link'
        WHERE `video`.`id_video` = $id;";


    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/video.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/video.php?status=500');
    }
}


CloseCon($conn);
