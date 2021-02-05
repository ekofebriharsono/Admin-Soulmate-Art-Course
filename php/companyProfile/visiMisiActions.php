<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertVisi'])){
   $visi = $_POST['visi'];

   $sql = "INSERT INTO `visi` (`id_visi`, `visi`) VALUES (NULL, '$visi')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/companyProfile/visimisi.php');
   }else {
    header('Location: ../../pages/companyProfile/visimisi.php?status=gagal');
   }

}

 if(isset($_POST['submitDeleteVisi'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `visi` WHERE `visi`.`id_visi` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/companyProfile/visimisi.php');
    }else {
        header('Location: ../../pages/companyProfile/visimisi.php?status=gagal');
    }
 
 }

 if(isset($_POST['submitInsertMisi'])){
    $misi = $_POST['misi'];
 
    $sql = "INSERT INTO `misi` (`id_misi`, `misi`) VALUES (NULL, '$misi')";
    $res = mysqli_query($conn, $sql);
    if($res){
         header('Location: ../../pages/companyProfile/visimisi.php');
    }else {
     header('Location: ../../pages/companyProfile/visimisi.php?status=gagal');
    }
 
 }
 
  if(isset($_POST['submitDeleteMisi'])){
     $id = $_POST['id'];
  
     $sql = "DELETE FROM `misi` WHERE `misi`.`id_misi` = $id";
     $res = mysqli_query($conn, $sql);
     if($res){
         header('Location: ../../pages/companyProfile/visimisi.php');
     }else {
         header('Location: ../../pages/companyProfile/visimisi.php?status=gagal');
     }
  
  }


CloseCon($conn);
?>