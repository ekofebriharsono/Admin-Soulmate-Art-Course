<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertGallery'])){
   $image_name = $_POST['image_name'];
   $id_gallery_category = $_POST['id_gallery_category'];
   $image_descriptions = $_POST['image_descriptions'];
   
   $link ="http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/gallery/";

   $ekstensi_diperbolehkan	= array('png','jpg');
    $date = date("Y-m-d");
    $time = date("h-i-sa");

    $nama =$_FILES['image']['name'];
    $x = explode('.', $nama);
    $ekstensi = strtolower(end($x));
    $ukuran	= $_FILES['image']['size'];
    $file_tmp = $_FILES['image']['tmp_name'];	

    $name_db = $date.$time.$nama;

    if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){		
            move_uploaded_file($file_tmp, 'image/gallery/'.$name_db);
            $image = $link.$name_db;
    }

   $sql = "INSERT INTO `gallery` (`id_gallery`,`id_gallery_category`, `image_name`, `image_descriptions`, `image`) 
   VALUES (NULL, $id_gallery_category, '$image_name', '$image_descriptions','$image')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/gallery.php');
   } else {
    header('Location: ../../pages/companyProfile/gallery.php?status=gagal');
   }

}

 if(isset($_POST['submitDeleteGallery'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `gallery` WHERE `gallery`.`id_gallery` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/gallery.php');
    }else {
        header('Location: ../../pages/companyProfile/gallery.php?status=gagal');
    }
 
 }


CloseCon($conn);
?>