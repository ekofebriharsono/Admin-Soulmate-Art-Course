<?php
include '../koneksi.php';
$conn = OpenCon();

if (isset($_POST['submitInsertPriceCategory'])) {
    $category_name = $_POST['category_name'];

    $sql = "INSERT INTO `price_category` (`id_price_category`, `category_name`) 
   VALUES (NULL, '$category_name')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/priceCategory.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/priceCategory.php?status=500');
    }
}

if (isset($_POST['submitDeletePriceCategory'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `price_category` WHERE `price_category`.`id_price_category` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/priceCategory.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/priceCategory.php?status=500');
    }
}


if (isset($_POST['submitUpdatePriceCategory'])) {
    $id = $_POST['id'];
    $category_name = $_POST['category_name'];

    $sql = "UPDATE `price_category` SET `category_name` = '$category_name' WHERE `price_category`.`id_price_category` = $id;";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/priceCategory.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/priceCategory.php?status=500');
    }
}


CloseCon($conn);
