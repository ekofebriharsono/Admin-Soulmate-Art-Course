<?php
$ekstensi_diperbolehkan	= array('png','jpg');
$date = date("Y-m-d");
$time = date("h-i-sa");

$nama =$_FILES['file']['name'];
$x = explode('.', $nama);
$ekstensi = strtolower(end($x));
$ukuran	= $_FILES['file']['size'];
$file_tmp = $_FILES['file']['tmp_name'];	

$name_db = $date.$time.$nama;

if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){		
        move_uploaded_file($file_tmp, 'image/'.$name_db);
        $link = "http://localhost/Admin-Soulmate-Art-Course/image/".$name_db;
        echo $link;
}else{
    echo 'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
}
?>