<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>

<div class="container">
	<div class="row">
    <div class="col-lg-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
					<li class="breadcrumb-item active">Edit Profil</li>
				</ol>
			</nav>
    </div>

		<div class="col-lg-12"><h1>Edit Profil</h1><hr>
			<?php echo $message ?>
			<?php echo validation_errors() ?>
			<?php echo form_open_multipart(uri_string());?>
			<div class="form-row">
		    <div class="form-group col-lg-6"><label>Nama</label><br>
		      <?php echo form_input($name);?>
		    </div>
		    <div class="form-group col-lg-6"><label>Username</label><br>
		      <?php echo form_input($username);?>
		    </div>
			</div>
			<div class="form-row">
				<div class="form-group col-lg-6"><label>Password</label><br>
		      <?php echo form_input($password);?>
		    </div>
				<div class="form-group col-lg-6"><label>Konfirmasi Password</label><br>
		      <?php echo form_input($password_confirm);?>
		    </div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6"><label>Tanggal lahir</label>
					<?php echo form_input($lahir);?>
				</div>
		    <div class="form-group col-lg-6"><label>Email</label><br>
		      <?php echo form_input($email);?>
		    </div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6"><label>Alamat</label><br>
		      <?php echo form_textarea($address);?>
		    </div>
				<div class="form-group col-lg-6"><label>No. HP</label><br>
		      <?php echo form_input($phone);?>
		    </div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6"><label>Provinsi</label>
					<?php echo form_dropdown('', $ambil_provinsi, '', $provinsi_id); ?>
				</div>
				<div class="form-group col-md-6"><label>Kabupaten/ Kota</label>
					<?php echo form_dropdown('', array(''=>'- Pilih Kota -'), '', $kota_id); ?>
				</div>
			</div>
			<div class="form-group"><label>Foto Lama</label>
				<div class="form-group">
					<img src="<?php echo base_url('assets/images/user/').$user->photo.$user->photo_type ?>" width="200px">
				</div>
			</div>
			<div class="form-group"><label>Foto Baru</label>
				<input type="file" class="form-control" name="photo" id="photo" onchange="tampilkanPreview(this,'preview')"/>
				<br><p><b>Preview</b><br>
				<img id="preview" src="" alt="" width="250px"/>
			</div>
			<?php echo form_hidden('id', $user->id);?>
			<!-- <?php echo form_hidden($csrf); ?> -->
				<button type="submit" name="submit" class="btn btn-primary">Update</button>
				<button type="reset" name="reset" class="btn btn-danger">Reset</button>
			<?php echo form_close() ?>
		</div>
	</div>
</div>
<script type="text/javascript">
	function tampilKota()
	{
		provinsi_id = document.getElementById("provinsi_id").value;
		$.ajax({
			url:"<?php echo base_url();?>auth/pilih_kota/"+provinsi_id+"",
			success: function(response){
				$("#kota_id").html(response);
			},
			dataType:"html"
		});
		return false;
	}
</script>
<script type="text/javascript">
function tampilkanPreview(photo,idpreview)
{ //membuat objek gambar
	var gb = photo.files;
	//loop untuk merender gambar
	for (var i = 0; i < gb.length; i++)
	{ //bikin variabel
		var gbPreview = gb[i];
		var imageType = /image.*/;
		var preview=document.getElementById(idpreview);
		var reader = new FileReader();
		if (gbPreview.type.match(imageType))
		{ //jika tipe data sesuai
			preview.file = gbPreview;
			reader.onload = (function(element)
			{
				return function(e)
				{
					element.src = e.target.result;
				};
			})(preview);
			//membaca data URL gambar
			reader.readAsDataURL(gbPreview);
		}
			else
			{ //jika tipe data tidak sesuai
				alert("Tipe file tidak sesuai. Gambar harus bertipe .png, .gif atau .jpg.");
			}
	}
}
</script>


<?php $this->load->view('front/footer'); ?>
