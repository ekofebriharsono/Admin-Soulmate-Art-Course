<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertEvent'])){
   $event_name = $_POST['event_name'];
   $event_descriptions = $_POST['event_descriptions'];
   $event_date = $_POST['event_date'];
   
   $link ="http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/event/";

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
            move_uploaded_file($file_tmp, 'image/event/'.$name_db);
            $image = $link.$name_db;
    }

   $sql = "INSERT INTO `event` (`id_event`, `event_name`, `event_descriptions`,`date`, `image`) VALUES (NULL, '$event_name', '$event_descriptions','$event_date','$image')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/event.php');
   }else {
    // header('Location: ../../pages/companyProfile/event.php?status=gagal');
    echo $sql;
   }

}

 if(isset($_POST['submitDeleteEvent'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `event` WHERE `event`.`id_event` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/event.php');
    }else {
        header('Location: ../../pages/companyProfile/event.php?status=gagal');
    }
 
 }


CloseCon($conn);
?>