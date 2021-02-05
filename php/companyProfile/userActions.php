<?php
include '../koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitInsertUser'])){
   $name = $_POST['name'];
   $email = $_POST['email'];
   $password = $_POST['password'];

   $sql = "INSERT INTO `user` (`id_user`, `user_name`, `email`, `password`) VALUES (NULL, '$name', '$email','$password')";
   $res = mysqli_query($conn, $sql);
   if($res){
        header('Location: ../../pages/user/user.php');
   }else {
    header('Location: ../../pages/user/user.php?status=gagal');
   }

}

 if(isset($_POST['submitDeleteUser'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `user` WHERE `user`.`id_user` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/user/user.php');
    }else {
        header('Location: ../../pages/user/user.php');
    }
 
 }


CloseCon($conn);
?>