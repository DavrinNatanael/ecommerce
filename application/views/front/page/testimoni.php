<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>
<?php
// Include configuration file
require_once 'config.php';
?>
<div class="container">
	<div class="row">
    <div class="col-sm-12 col-lg-12">
      <ol class="breadcrumb">
    	  <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
    	  <li class="breadcrumb-item active"><?php echo $title ?></li>
    	</ol>
    </div>
		<div class="col-sm-12 col-lg-9"><h1>Testimoni</h1><hr>
			<div class="container">
				<table>
					<tbody>
					<tr>
						<td>
							<?php echo $history_detail_row->judul_produk ?>
						</td>
					</tr>
						<tr>
							<td>
								<img src="<?php echo base_url('assets/images/produk/').$history_detail_row->foto.$history_detail_row->foto_type ?>" width="100" alt="..." class="img-thumbnail">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
      <form action="<?php echo base_url('cart/konfirm/').$history_detail_row->id_trans ?>" method="post">
				<input type="hidden" name="usid" value="<?php echo $history_detail_row->user_id; ?>">
				<input type="hidden" name="prod" value="<?php echo $history_detail_row->id_produk; ?>">
        <div class="container">
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Berikan tanggapan anda untuk produk ini :</label>
						<textarea class="form-control" name="testi" id="testi" rows="6"></textarea>
					</div>
        </div>
				<div class="container">
					<label for="exampleFormControlTextarea1">Berikan rating anda untuk produk ini :</label>
						<input name="rate" id="rate" type="hidden" value="">
					<div class="form-group">
						<div class="float-left starrating risingstar d-flex flex-row-reverse">
							<input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="5 star"></label>
							<input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="4 star"></label>
							<input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="3 star"></label>
							<input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="2 star"></label>
							<input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="1 star"></label>
						</div>
					</div>
					<script type="text/javascript">
						var satu = document.getElementById('star1');
						var dua = document.getElementById('star2');
						var tiga = document.getElementById('star3');
						var empat = document.getElementById('star4');
						var lima = document.getElementById('star5');
						var rate = document.getElementById('rate');
						satu.addEventListener("click",one);
						dua.addEventListener("click",two);
						tiga.addEventListener("click",three);
						empat.addEventListener("click",four);
						lima.addEventListener("click",five);
						function one(){
							rate.value=satu.value;
						}
						function two(){
							rate.value=dua.value;
						}
						function three(){
							rate.value=tiga.value;
						}
						function four(){
							rate.value=empat.value;
						}
						function five(){
							rate.value=lima.value;
						}
					</script>
				</div>
				<br>
				<br>
				<div class="container">
					<div class="form-group">
						<button class="flaot-right btn btn-primary" type="submit" name="button">Kirim testimoni</button>
					</div>
				</div>
      </form>
		</div>


		<?php $this->load->view('front/sidebar'); ?>
	</div>

  <?php $this->load->view('front/footer'); ?>
