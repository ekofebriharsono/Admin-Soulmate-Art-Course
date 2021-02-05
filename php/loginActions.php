<?php
include 'koneksi.php';
$conn = OpenCon();

if(isset($_POST['submitLogin'])){

 
	if(isset($_POST['email']) && isset($_POST['password'])){
        $email	= $_POST['email'];
        $pass	= $_POST['password'];
    
		$cek_db	= "SELECT * FROM user WHERE email='$email' ";
		$query	= mysqli_query($conn, $cek_db);
		if(mysqli_num_rows($query) != 0){
			$row = mysqli_fetch_assoc($query);
			$db_user = $row['email'];
            $db_pass = $row['password'];
 
			if($email == $db_user && $pass == $db_pass){
                 session_start();
                 $_SESSION["id"] = $row['id_user'];
                 $_SESSION["user_name"] = $row['user_name'];
				 header('Location: ../pages/dashboard/');
				
			}else{
                header('Location: ../login.php?status=1');
				// echo '<p>Username dan Password tidak cocok!</p>';
			}
		}else{
            header('Location: ../login.php?status=2');
			// echo '<p>Username tidak ada dalam Database!</p>';
		}
	}else{
        header('Location: ../login.php?status=3');
		// echo '<p>Username dan Password masih kosong!</p>';
	}
}

CloseCon($conn);

?>