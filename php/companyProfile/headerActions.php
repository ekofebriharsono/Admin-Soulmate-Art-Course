<?php
include '../koneksi.php';
$conn = OpenCon();

$link ="http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/header/";

if(isset($_POST['submitInsertHeader'])){
   
   $header_name = $_POST['header_name'];
   $sort_name = $_POST['sort_name'];
   $button_link = $_POST['button_link'];
   
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
            move_uploaded_file($file_tmp, 'image/header/'.$name_db);
            $image = $link.$name_db;
    }

   $sql = "INSERT INTO `header` (`id_header`, `header_name`, `sort_name`, `button_link`, `image`) VALUES (NULL, '$header_name', '$sort_name', '$button_link','$image')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/header.php?status=201');
   }else {
    header('Location: ../../pages/companyProfile/header.php?status=500');
   }

}

 if(isset($_POST['submitDeleteHeader'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `header` WHERE `header`.`id_header` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/header.php?status=202');
    }else {
        header('Location: ../../pages/companyProfile/header.php?status=500');
    }
 
 }


 if(isset($_POST['submitUpdateHeader'])){
    $id = $_POST['id'];
    $header_name = $_POST['header_name'];
    $sort_name = $_POST['sort_name'];
    $button_link = $_POST['button_link'];
     
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
             move_uploaded_file($file_tmp, 'image/header/'.$name_db);
             $image = $link.$name_db;
     }
 
    $sql = "UPDATE `header` SET 
            `header_name` = '$header_name', 
            `sort_name` = '$sort_name', 
            `button_link` = '$button_link', 
            `image` = '$image' 
            WHERE `header`.`id_header` = $id;";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/header.php?status=203');
    }else {
        header('Location: ../../pages/companyProfile/header.php?status=500');
    }
 
 }


CloseCon($conn);
?>