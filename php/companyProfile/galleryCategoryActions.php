<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertGalleryCategory'])){
   $category_name = $_POST['category_name'];


   $sql = "INSERT INTO `gallery_category` (`id_gallery_category`, `category_name`) 
   VALUES (NULL, '$category_name')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/galleryCategory.php');
   } else {
    header('Location: ../../pages/companyProfile/galleryCategory.php?status=gagal');
   }

}

 if(isset($_POST['submitDeleteGalleryCategory'])){
    $id = $_POST['id_gallery_category'];
 
    $sql = "DELETE FROM `gallery_category` WHERE `gallery_category`.`id_gallery_category` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/galleryCategory.php');
    }else {
        // header('Location: ../../pages/companyProfile/galleryCategory.php?status=gagal');
        echo $sql;
    }
 
 }


CloseCon($conn);
?>