<?php
include '../koneksi.php';
$conn = OpenCon();

$link = "http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/event/";

if (isset($_POST['submitInsertEvent'])) {
    $event_name = $_POST['event_name'];
    $event_descriptions = $_POST['event_descriptions'];
    $event_date = $_POST['event_date'];

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
        move_uploaded_file($file_tmp, 'image/event/' . $name_db);
        $image = $link . $name_db;
    }

    $sql = "INSERT INTO `event` (`id_event`, `event_name`, `event_descriptions`,`date`, `image`) VALUES (NULL, '$event_name', '$event_descriptions','$event_date','$image')";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/event.php?status=201');
    } else {
        header('Location: ../../pages/companyProfile/event.php?status=500');
    }
}

if (isset($_POST['submitDeleteEvent'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM `event` WHERE `event`.`id_event` = $id";
    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/event.php?status=202');
    } else {
        header('Location: ../../pages/companyProfile/event.php?status=500');
    }
}
if (isset($_POST['submitUpdateEvent'])) {
    $id = $_POST['id'];
    $event_name = $_POST['event_name'];
    $event_descriptions = $_POST['event_descriptions'];
    $event_date = $_POST['event_date'];

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
        move_uploaded_file($file_tmp, 'image/event/' . $name_db);
        $image = $link . $name_db;
    }

    if (@$image != null) {
        $sql = "UPDATE `event` SET 
            `event_name` = '$event_name', 
            `event_descriptions` = '$event_descriptions', 
            `date` = '$event_date', 
            `image` = '$image' 
            WHERE `event`.`id_event` =  $id;";
    } else {
        $sql = "UPDATE `event` SET 
        `event_name` = '$event_name', 
            `event_descriptions` = '$event_descriptions', 
            `date` = '$event_date'  
        WHERE `event`.`id_event` =  $id;";
    }


    $res = mysqli_query($conn, $sql);
    if ($res) {
        header('Location: ../../pages/companyProfile/event.php?status=203');
    } else {
        // header('Location: ../../pages/companyProfile/event.php?status=500');
        echo $sql;
    }
}
CloseCon($conn);
