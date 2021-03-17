<?php
include '../koneksi.php';
$conn = OpenCon();

if (isset($_POST['submitInsertGalleryCategory'])) {
    $category_name = $_POST['category_name'];

    $sql = "INSERT INTO `gallery_category` (`id_gallery_category`, `category_name`) 
   VALUES (NULL, '$category_name')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/galleryCategory.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/galleryCategory.php?status=500');
    }
}

if (isset($_POST['submitDeleteGalleryCategory'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `gallery_category` WHERE `gallery_category`.`id_gallery_category` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/galleryCategory.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/galleryCategory.php?status=500');
    }
}


if (isset($_POST['submitUpdateGalleryCategory'])) {
    $id = $_POST['id'];
    $category_name = $_POST['category_name'];

    $sql = "UPDATE `gallery_category` SET `category_name` = '$category_name' WHERE `gallery_category`.`id_gallery_category` = $id;";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/galleryCategory.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/galleryCategory.php?status=500');
    }
}


CloseCon($conn);
