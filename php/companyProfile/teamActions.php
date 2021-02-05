<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertTeam'])){
   $team_name = $_POST['team_name'];
   $label_team = $_POST['label_team'];
   $team_descriptions = $_POST['team_descriptions'];
   $instagram = $_POST['instagram'];
   $facebook = $_POST['facebook'];
   $whatsapp = $_POST['whatsapp'];
   
   $link ="http://localhost/Admin-Soulmate-Art-Course/php/companyProfile/image/team/";

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
            move_uploaded_file($file_tmp, 'image/team/'.$name_db);
            $image = $link.$name_db;
    }

   $sql = "INSERT INTO `team` (`id_team`, `team_name`, `label_team`, `team_descriptions`, `instagram`, `facebook`, `whatsapp`, `image`) 
   VALUES (NULL, '$team_name', '$label_team','$team_descriptions','$instagram','$facebook','$whatsapp','$image')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/team.php');
   } else {
    header('Location: ../../pages/companyProfile/team.php?status=gagal');
   }

}

 if(isset($_POST['submitDeleteTeam'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `team` WHERE `team`.`id_team` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/team.php');
    }else {
        header('Location: ../../pages/companyProfile/team.php?status=gagal');
    }
 
 }


CloseCon($conn);
?>