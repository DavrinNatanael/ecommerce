<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>
<?php
// Include configuration file
?>
<div class="container">
	<div class="row">
    <div class="col-sm-12 col-lg-12">
      <ol class="breadcrumb">
    	  <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
    	  <li class="breadcrumb-item active"><?php echo $title ?></li>
    	</ol>
    </div>
		<div class="col-sm-12"><hr>
			<div class="row">
        <div class="col-lg-12">
					<?php
					include_once "conn.php";

					function getName($n) {
					    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
					    $randomString = '';

					    for ($i = 0; $i < $n; $i++) {
					        $index = rand(0, strlen($characters) - 1);
					        $randomString .= $characters[$index];
					    }

					    return $randomString;
					}

					$email = $_GET['email'];
					$password_baru = getName(8);
					$options = [
					  'cost' => 10
					];
					$encrypt_password = password_hash($password_baru, PASSWORD_BCRYPT, $options);

					$update = mysqli_query($conn,"UPDATE users SET password ='$encrypt_password' WHERE email = '$email'");
					$query = mysqli_query($conn,"SELECT * FROM users WHERE email = '$email'");
					$row = mysqli_fetch_array($query);
					if($row)
					{?>
							<div class="alert alert-success alert"><i class="fa fa-bullhorn"></i> Password anda berhasil direset</div>
							<p class="text-danger">Copy password baru anda dan segera lakukan pergantian password di halaman edit profil.</p>
					<?php echo $password_baru;}
					else
					{
					?>
					<div class="alert alert-block alert-danger"><i class="fa fa-bullhorn"></i> Password gagal direset</div>
					<?php
					    $b= "Tidak ada user yang memiliki email yang di input.";
					    // echo json_encode($b);
							?>
							<p class="text-danger"><?php echo json_encode($b); ?></p>
							<?php
					}
					?>

        </div>
      </div>
		</div>
	</div>

  <?php $this->load->view('front/footer'); ?>
