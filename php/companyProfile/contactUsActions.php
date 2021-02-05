<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertContactUs'])){
   $address = $_POST['address'];
   $call_us = $_POST['call_us'];
   $email = $_POST['email'];
   $link_ig = $_POST['link_ig'];
   $link_yt = $_POST['link_yt'];
   $link_fb = $_POST['link_fb'];
   $link_wa = $_POST['link_wa'];
   $link_tl = $_POST['link_tl'];

   $sql = "INSERT INTO `contact_us` (`id_contact_us`, `address`, `call_us`, `email`,`link_ig`,`link_yt`,`link_fb`,`link_wa`,`link_tl`) 
   VALUES (NULL, '$address', '$call_us', '$email', '$link_ig', '$link_yt', '$link_fb', '$link_wa', '$link_tl')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/contactUs.php');
   } else {
    header('Location: ../../pages/companyProfile/contactUs.php?status=gagal' );
    // echo $sql;
   }

}

 if(isset($_POST['submitDeleteContactUs'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `contact_us` WHERE `contact_us`.`id_contact_us` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/contactUs.php');
    }else {
        header('Location: ../../pages/companyProfile/contactUs.php?status=gagal');
    }
 
 }


CloseCon($conn);
?>