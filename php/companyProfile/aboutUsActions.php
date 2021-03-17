<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertAboutUs'])){
   $about = $_POST['about'];

   $sql = "INSERT INTO `about_us` (`id_about_us`, `about`) 
   VALUES (NULL, '$about')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/aboutUs.php?status=201');
   } else {
    header('Location: ../../pages/companyProfile/aboutUs.php?status=500');
   }

}

 if(isset($_POST['submitDeleteAboutUs'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `about_us` WHERE `about_us`.`id_about_us` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/aboutUs.php?status=202');
    }else {
        header('Location: ../../pages/companyProfile/aboutUs.php?status=500');
    }
 
 }

 if(isset($_POST['submitUpdateAboutUs'])){
    $id = $_POST['id'];
    $about = $_POST['about'];
 
    $sql = "UPDATE `about_us` SET `about` = '$about' WHERE `about_us`.`id_about_us` = $id;";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/aboutUs.php?status=203');
    }else {
        header('Location: ../../pages/companyProfile/aboutUs.php?status=500');
    }
 
 }


CloseCon($conn);
?>