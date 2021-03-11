<?php
include '../koneksi.php';
$conn = OpenCon();

$link = "http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/price/";

if (isset($_POST['submitInsertPrice'])) {
    $price_name = $_POST['price_name'];
    $price = $_POST['price'];
    $price_descriptions = $_POST['price_descriptions'];

    $ekstensi_diperbolehkan    = array('png', 'jpg');
    $date = date("Y-m-d");
    $time = date("h-i-sa");

    $nama = $_FILES['image']['name'];
    $x = explode('.', $nama);
    $ekstensi = strtolower(end($x));
    $ukuran    = $_FILES['image']['size'];
    $file_tmp = $_FILES['image']['tmp_name'];

    $name_db = $date . $time . $nama;

    if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
        move_uploaded_file($file_tmp, 'image/price/' . $name_db);
        $image = $link . $name_db;
    }

    $sql = "INSERT INTO `price` (`id_price`, `price_name`, `price`, `price_descriptions`, `image`) VALUES (NULL, '$price_name', '$price','$price_descriptions','$image')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/price.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/price.php?status=500');
    }
}

if (isset($_POST['submitDeletePrice'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `price` WHERE `price`.`id_price` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/price.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/price.php?status=500');
    }
}
if (isset($_POST['submitUpdatePrice'])) {
    $id = $_POST['id'];
    $price_name = $_POST['price_name'];
    $price = $_POST['price'];
    $price_descriptions = $_POST['price_descriptions'];

    $ekstensi_diperbolehkan    = array('png', 'jpg');
    $date = date("Y-m-d");
    $time = date("h-i-sa");

    $nama = $_FILES['image']['name'];
    $x = explode('.', $nama);
    $ekstensi = strtolower(end($x));
    $ukuran    = $_FILES['image']['size'];
    $file_tmp = $_FILES['image']['tmp_name'];

    $name_db = $date . $time . $nama;

    if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
        move_uploaded_file($file_tmp, 'image/price/' . $name_db);
        $image = $link . $name_db;
    }

    if (@$image != null) {
        $sql = "UPDATE `client` SET 
            `price_name` = '$price_name', 
            `price` = '$price', 
            `price_descriptions` = '$price_descriptions', 
            `image` = '$image' 
            WHERE `client`.`id_client` =  $id;";
    } else {
        $sql = "UPDATE `client` SET 
            `price_name` = '$price_name', 
            `price` = '$price', 
            `price_descriptions` = '$price_descriptions'
        WHERE `client`.`id_client` =  $id;";
    }


    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/price.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/price.php?status=500');
    }
}


CloseCon($conn);
