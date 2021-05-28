<?php
include '../koneksi.php';
$conn = OpenCon();

$host = "http://localhost/admin-soulmate-art-course/";

$default_image = $host . "dist/img/image-default.png";
$link = $host . "php/companyProfile/image/promo/";

if (isset($_POST['submitInsertPromo'])) {
    $name = $_POST['name'];
    $from_date = $_POST['from_date'];
    $end_date = $_POST['end_date'];

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
        move_uploaded_file($file_tmp, 'image/promo/' . $name_db);
        $image = $link . $name_db;
    }

    if (@$image == null) {
        $image = $default_image;
    }

    $sql = "INSERT INTO `promo` (`id_promo`, `name`, `from_date`, `end_date`, `image`, `status`) VALUES (NULL, '$name', '$from_date', '$end_date', '$image', '0');";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/promo.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/promo.php?status=500');
    }
}

if (isset($_POST['submitDeletePromo'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `promo` WHERE `promo`.`id_promo` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/promo.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/promo.php?status=500');
    }
}
if (isset($_POST['submitUpdatePromo'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $from_date = $_POST['from_date'];
    $end_date = $_POST['end_date'];

    if(isset($_POST['status'])){
        $status = 1;
    } else {
        $status = 0;
    }

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
        move_uploaded_file($file_tmp, 'image/promo/' . $name_db);
        $image = $link . $name_db;
    }

    if (@$image != null) {
        $sql = "UPDATE `promo` SET 
            `name` = '$name', 
            `from_date` = '$from_date', 
            `end_date` = '$end_date', 
            `image` = '$image' ,
            `status` = '$status' 
            WHERE `promo`.`id_promo` =  $id;";
    } else {
        $sql = "UPDATE `promo` SET 
            `name` = '$name', 
            `from_date` = '$from_date', 
            `end_date` = '$end_date', 
            `status` = '$status' 
            WHERE `promo`.`id_promo` =  $id;";
    }


    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/promo.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/promo.php?status=500');
    }
}
CloseCon($conn);
