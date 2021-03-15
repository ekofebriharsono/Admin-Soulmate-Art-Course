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
        header('Location: ../../pages/user/user.php?status=201');
   }else {
    header('Location: ../../pages/user/user.php?status=500');
   }

}

 if(isset($_POST['submitDeleteUser'])){
    $id = $_POST['id'];
 
    $sql = "DELETE FROM `user` WHERE `user`.`id_user` = $id";
    $res = mysqli_query($conn, $sql);
    if($res){
        header('Location: ../../pages/user/user.php?status=202');
    }else {
        header('Location: ../../pages/user/user.php?status=500');
    }
 
 }

 if(isset($_POST['submitUpdateUser'])){
    $id = $_POST['id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
 
    $sql = "UPDATE `user` SET 
            `user_name` = '$name', 
            `email` = '$email', 
            `password` = '$password' 
            WHERE `user`.`id_user` = $id;";


    $res = mysqli_query($conn, $sql);
    if($res){
         header('Location: ../../pages/user/user.php?status=203');
    }else {
     header('Location: ../../pages/user/user.php?status=500');
    }
 
 }


CloseCon($conn);
?>