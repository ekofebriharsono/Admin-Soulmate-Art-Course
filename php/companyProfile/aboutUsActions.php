<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertAboutUs'])){
   $about = $_POST['about'];

   $sql = "INSERT INTO `about_us` (`id_about_us`, `about`) 
   VALUES (NULL, '$about')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/aboutUs.php');
   } else {
    header('Location: ../../pages/companyProfile/aboutUs.php?status=gagal');
   }

}

 if(isset($_POST['submitDeleteAboutUs'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `about_us` WHERE `about_us`.`id_about_us` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/aboutUs.php');
    }else {
        header('Location: ../../pages/companyProfile/aboutUs.php?status=gagal');
    }
 
 }


CloseCon($conn);
?>