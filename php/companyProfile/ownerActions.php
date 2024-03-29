<?php
include '../koneksi.php';
$conn = OpenCon();

$host = "http://localhost/admin-soulmate-art-course/";

$default_image = $host . "dist/img/image-default.png";
$link = $host . "php/companyProfile/image/owner/";

if (isset($_POST['submitInsertOwner'])) {
  $owner_name = $_POST['owner_name'];
  $label_owner = $_POST['label_owner'];
  $owner_descriptions = $_POST['owner_descriptions'];
  $instagram = $_POST['instagram'];
  $facebook = $_POST['facebook'];
  $whatsapp = $_POST['whatsapp'];

  $ekstensi_diperbolehkan  = array('png', 'jpg');
  $date = date("Y-m-d");
  $time = date("h-i-sa");

  $nama = $_FILES['image']['name'];
  $x = explode('.', $nama);
  $ekstensi = strtolower(end($x));
  $ukuran  = $_FILES['image']['size'];
  $file_tmp = $_FILES['image']['tmp_name'];

  $name_db = $date . $time . $nama;

  if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
    move_uploaded_file($file_tmp, 'image/owner/' . $name_db);
    $image = $link . $name_db;
  }

  if (@$image == null) {
    $image = $default_image;
  }

  $sql = "INSERT INTO `owner` (`id_owner`, `owner_name`, `label_owner`, `owner_descriptions`, `instagram`, `facebook`, `whatsapp`, `image`) 
   VALUES (NULL, '$owner_name', '$label_owner','$owner_descriptions','$instagram','$facebook','$whatsapp','$image')";
  $res = mysqli_query($conn, $sql);
  if ($res) {
    header('Location: ../../pages/companyProfile/owner.php?status=201');
  } else {
    header('Location: ../../pages/companyProfile/owner.php?status=500');
  }
}

if (isset($_POST['submitDeleteOwner'])) {
  $id = $_POST['id'];

  $sql = "DELETE FROM `owner` WHERE `owner`.`id_owner` = $id";
  $res = mysqli_query($conn, $sql);
  if ($res) {
    header('Location: ../../pages/companyProfile/owner.php?status=202');
  } else {
    header('Location: ../../pages/companyProfile/owner.php?status=500');
  }
}
if (isset($_POST['submitUpdateOwner'])) {
  $id = $_POST['id'];
  $owner_name = $_POST['owner_name'];
  $label_owner = $_POST['label_owner'];
  $owner_descriptions = $_POST['owner_descriptions'];
  $instagram = $_POST['instagram'];
  $facebook = $_POST['facebook'];
  $whatsapp = $_POST['whatsapp'];

  $ekstensi_diperbolehkan  = array('png', 'jpg');
  $date = date("Y-m-d");
  $time = date("h-i-sa");

  $nama = $_FILES['image']['name'];
  $x = explode('.', $nama);
  $ekstensi = strtolower(end($x));
  $ukuran  = $_FILES['image']['size'];
  $file_tmp = $_FILES['image']['tmp_name'];

  $name_db = $date . $time . $nama;

  if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
    move_uploaded_file($file_tmp, 'image/owner/' . $name_db);
    $image = $link . $name_db;
  }
  if (@$image != null) {
    $sql = "UPDATE `owner` SET 
    `owner_name` = '$owner_name',  
    `label_owner` = '$label_owner', 
    `owner_descriptions` = '$owner_descriptions', 
    `instagram` = '$instagram', 
    `facebook` = '$facebook', 
    `whatsapp` = '$whatsapp', 
    `image` = '$image' 
    WHERE `owner`.`id_owner` = $id;";
  } else {
    $sql = "UPDATE `owner` SET 
  `owner_name` = '$owner_name',  
  `label_owner` = '$label_owner', 
  `owner_descriptions` = '$owner_descriptions', 
  `instagram` = '$instagram', 
  `facebook` = '$facebook', 
  `whatsapp` = '$whatsapp' 
  WHERE `owner`.`id_owner` = $id;";
  }

  $res = mysqli_query($conn, $sql);
  if ($res) {
    header('Location: ../../pages/companyProfile/owner.php?status=203');
  } else {
    header('Location: ../../pages/companyProfile/owner.php?status=500');
  }
}

CloseCon($conn);
