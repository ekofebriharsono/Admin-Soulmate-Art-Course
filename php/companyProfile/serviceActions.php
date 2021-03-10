<?php
include '../koneksi.php';
$conn = OpenCon();

$link = "http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/service/";

if (isset($_POST['submitInsertService'])) {
    $service_name = $_POST['service_name'];
    $service_descriptions = $_POST['service_descriptions'];

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
        move_uploaded_file($file_tmp, 'image/service/' . $name_db);
        $image = $link . $name_db;
    }

    $sql = "INSERT INTO `service` (`id_service`, `service_name`, `service_descriptions`, `image`) VALUES (NULL, '$service_name', '$service_descriptions','$image')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/service.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/service.php?status=500');
    }
}

if (isset($_POST['submitDeleteService'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `service` WHERE `service`.`id_service` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/service.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/service.php?status=500');
    }
}
if (isset($_POST['submitUpdateService'])) {
    $id = $_POST['id'];
    $service_name = $_POST['service_name'];
    $service_descriptions = $_POST['service_descriptions'];

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
        move_uploaded_file($file_tmp, 'image/service/' . $name_db);
        $image = $link . $name_db;
    }

    if (@$image != null) {
        $sql = "UPDATE `service` SET 
            `service_name` = '$service_name', 
            `service_descriptions` = '$service_descriptions', 
            `image` = '$image' 
            WHERE `service`.`id_service` =  $id;";
    } else {
        $sql = "UPDATE `service` SET 
            `service_name` = '$service_name', 
            `service_descriptions` = '$service_descriptions'
        WHERE `service`.`id_service` =  $id;";
    }


    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/service.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/service.php?status=500');
    }
}

CloseCon($conn);
