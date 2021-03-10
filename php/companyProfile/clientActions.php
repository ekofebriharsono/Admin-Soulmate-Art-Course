<?php
include '../koneksi.php';
$conn = OpenCon();

$link = "http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/client/";

if (isset($_POST['submitInsertClient'])) {
    $client_name = $_POST['client_name'];
    $description = $_POST['description'];
    $link_client = $_POST['link'];

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
        move_uploaded_file($file_tmp, 'image/client/' . $name_db);
        $image = $link . $name_db;
    }

    $sql = "INSERT INTO `client` (`id_client`, `client_name`, `description`, `link`, `image`) VALUES (NULL, '$client_name','$description','$link_client','$image')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/client.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/client.php?status=500');
    }
}

if (isset($_POST['submitDeleteClient'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `client` WHERE `client`.`id_client` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/client.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/client.php?status=500');
    }
}
if (isset($_POST['submitUpdateClient'])) {
    $id = $_POST['id'];
    $client_name = $_POST['client_name'];
    $description = $_POST['description'];
    $link_client = $_POST['link'];


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
        move_uploaded_file($file_tmp, 'image/client/' . $name_db);
        $image = $link . $name_db;
    }

    if (@$image != null) {
        $sql = "UPDATE `client` SET 
            `client_name` = '$client_name', 
            `description` = '$description', 
            `link` = '$link_client', 
            `image` = '$image' 
            WHERE `client`.`id_client` =  $id;";
    } else {
        $sql = "UPDATE `client` SET 
        `client_name` = '$client_name', 
        `description` = '$description', 
        `link` = '$link_client'
        WHERE `client`.`id_client` =  $id;";
    }


    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/client.php?status=203');
    } else {
        header('Location: ../../pages/companyProfile/client.php?status=500');
    }
}

CloseCon($conn);
