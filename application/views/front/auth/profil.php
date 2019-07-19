<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>

<div class="container">
	<div class="row">
    <div class="col-lg-12">
			<nav aria-b="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
					<li class="breadcrumb-item active">Profil Saya</li>
				</ol>
			</nav>
    </div>
		
		<div class="col-lg-12"><h1>Profil Saya</h1><hr>
			<div class="col-lg-12">
				<?php if(empty($profil->photo)) { ?>
					<img class='rounded-circle' width="200px" height="200px" src="<?php echo base_url('assets/images/no_image.png') ?>">
				<?php } else{ ?>
					<img class="rounded-circle" src="<?php echo base_url('assets/images/user/').$profil->photo.$profil->photo_type ?>" width="200px" height="200px">
				<?php } ?>
			</div>
			<div class="form-row">
				<div class="form-group col-lg-6"><b>Nama</b><br>
		      <?php echo $profil->name ?>
		    </div>
		    <div class="form-group col-lg-6"><b>Username</b><br>
		      <?php echo $profil->username ?>
		    </div>
			</div>
			<div class="form-row">
				<div class="form-group col-lg-6"><b>Tanggal Lahir</b><br>
					<?php echo $profil->lahir ?>
				</div>
			 <div class="form-group col-lg-6"><b>Umur</b><br>
					<?php echo $profil->umur ?>
				</div>
			</div>
			<div class="form-row">
		    <div class="form-group col-lg-6"><b>No. HP</b><br>
		      <?php echo $profil->phone ?>
		    </div>
		    <div class="form-group col-lg-6"><b>Email</b><br>
		      <?php echo $profil->email ?>
		    </div>
			</div>
			<div class="form-row">
		    <div class="form-group col-lg-6"><b>Alamat</b><br>
		      <?php echo $profil->address ?>
		    </div>
		    <div class="form-group col-lg-6"><b>Provinsi</b><br>
		      <?php echo $profil->nama_provinsi ?>
		    </div>
			</div>
	    <div class="form-group"><b>Kota</b><br>
	      <?php echo $profil->nama_kota ?>
	    </div>
		</div>
	</div>
</div>

<?php $this->load->view('front/footer'); ?>
