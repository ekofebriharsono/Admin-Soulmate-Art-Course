<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertClient'])){
   $client_name = $_POST['client_name'];
   $description = $_POST['description'];
   $link_client = $_POST['link'];

   $link ="http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/client/";

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
            move_uploaded_file($file_tmp, 'image/client/'.$name_db);
            $image = $link.$name_db;
    }

   $sql = "INSERT INTO `client` (`id_client`, `client_name`, `description`, `link`, `image`) VALUES (NULL, '$client_name','$description','$link_client','$image')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/client.php');
   }else {
    header('Location: ../../pages/companyProfile/client.php?status=gagal');
   }

}

 if(isset($_POST['submitDeleteClient'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `client` WHERE `client`.`id_client` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/client.php');
    }else {
        header('Location: ../../pages/companyProfile/client.php?status=gagal');
    }
 
 }


CloseCon($conn);
?>