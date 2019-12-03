<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>
<?php error_reporting(0); ?>

<div class="container">
	<div class="row">
    <div class="col-sm-12 col-lg-12">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
      	  <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
      	  <li class="breadcrumb-item active">Konfirmasi Pembayaran</li>
      	</ol>
      </nav>
    </div>
		<div class="col-sm-12 col-lg-9"><h1>Halaman Keluhan untuk transaksi dengan no invoice <?php echo $id; ?></h1><hr>
			<div class="row">
        <div class="col-lg-12">
          <?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
					<?php if($komplaindet->status==0){ ?>
          <?php echo form_open_multipart('page/kirimKomplain') ?>
					<input type="hidden" name="trans" value="<?php echo $id; ?>">
					<div class="form-group has-feedback"><label><b>Pilih aksi</b></label>
						<div class="input-group mb-3">
							<select id="select" name="aksi" class="custom-select" onchange="myfunction()">
									<option selected>Pilih...</option>
									<option value="1" >Barang Rusak</option>
									<option value="2" >Barang tidak lengkap</option>
									<option value="3" >Barang tidak sesuai</option>
							</select>
						</div>
					</div>
					<div id="norek" hidden class="form-group has-feedback"><label><b>Masukkan nomor rekening</b></label>
						<div class="input-group mb-3">
							<input class="form-control" name="reknum" value="-">
						</div>
					</div>
					<script type="text/javascript">
						var select = document.getElementById('select');
						var norek = document.getElementById('norek');

						function myfunction(){
							if(select.value=="0"){
								norek.removeAttribute("hidden");
							}
							else if(select.value=="1"){
								norek.hidden=true;
							}
							else {
								norek.hidden=true;
							}
						}
					</script>
            <div class="form-group has-feedback"><label><b>Keterangan</b></label>
              <textarea name="alasan" placeholder="Keterangan komplain" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="form-group has-feedback"><label><b>Foto produk</b></label>
								<input type="file" class="form-control" name="foto" id="foto" onchange="tampilkanPreview(this,'preview')"/>
								<br><p><b>Preview</b><br>
								<img id="preview" src="" alt="" width="250px"/>
            </div>
            <button type="submit" name="button" class="btn btn-primary">Kirim</button>
          <?php echo form_close() ?>
				<?php }elseif($komplaindet->selesai==1){ ?>
					<?php echo form_open_multipart('page/kirimdetailkomplain') ?>
					<input type="hidden" name="trans" value="<?php echo $trid; ?>">
					<div class="form-group has-feedback"><label><b>Pilih aksi</b></label>
						<div class="input-group mb-3">
							<select id="select" name="aksi" class="custom-select" onchange="myfunction()">
									<option selected>Pilih...</option>
									<option value="5" >Refund</option>
									<option value="4" >Pengembalian Barang</option>
							</select>
						</div>
					</div>
					<div id="norek" hidden class="form-group has-feedback"><label><b>Masukkan nomor rekening</b></label>
						<div class="input-group mb-3">
							<input class="form-control" name="reknum" value="-">
						</div>
					</div>
					<script type="text/javascript">
						var select = document.getElementById('select');
						var norek = document.getElementById('norek');

						function myfunction(){
							if(select.value=="5"){
								norek.removeAttribute("hidden");
							}
							else if(select.value=="4"){
								norek.hidden=true;
							}
							else {
								norek.hidden=true;
							}
						}
					</script>
            <button type="submit" name="button" class="btn btn-primary">Kirim</button>
          <?php echo form_close() ?>
				<?php } elseif($komplain->status==4){?>
					<h5 class="text-primary">KOMPLAIN INI TELAH DISELESAIKAN</h5>
				<?php } ?>
        </div>
      </div>
		</div>

		<?php $this->load->view('front/sidebar'); ?>
	</div>

  <?php $this->load->view('front/footer'); ?>
	<script type="text/javascript">
	function tampilkanPreview(foto,idpreview)
	{ //membuat objek gambar
		var gb = foto.files;
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
