<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navhelp'); ?>

<div class="container">
	<div class="row">
    <div class="col-sm-12 col-lg-12">
			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
					<li class="breadcrumb-item active">Checkout</li>
			  </ol>
			</nav>
    </div>

    <div class="col-lg-12"><h1>Checkout berhasil</h1><hr>
			<?php $no=1; foreach ($cart_finished as $cart	){ ?>
					<input type="hidden" value="<?php echo $no++; ?>">
					<input type="hidden" value="<?php echo number_format($cart->harga_diskon) ?>">
					<input type="hidden" value="<?php echo $cart->berat ?>">
					<input type="hidden" name="itemName" value="<?php echo $cart->judul_produk ?>">
					<input type="hidden" name="produk_id" value="<?php echo $cart->produk_id ?>">
					<input type="hidden" id="qty2" type="number" name="qty" class="form-control" style="width:50px;" name="produk_id" value="<?php echo $cart->total_qty ?>" min="1" max="9">
					<input type="hidden" id="tmp" type="number" class="form-control" style="width:50px;" value="<?php echo $cart->total_qty ?>" min="1" max="9">
					<input type="hidden" id="berathi2" value="<?php echo $cart->total_berat ?>">
			<?php } ?>
			<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			  Pilih metode pembayaran
			</button> -->
			<form class="paypal" action="<?php echo base_url('page/paypal') ?>" method="post" id="paypal_form">
				<input type="hidden" name="cmd" value="_xclick" />
				<input type="hidden" name="idtrans" value="Transaksi nomor <?php echo $customer_data->id_trans ?>">
				<input type="hidden" id="code" name="code" value="<?php echo $customer_data->id_trans ?>">
				<?php
					$_SESSION['kode'] = $customer_data->id_trans;
				?>
				<input type="hidden" name="test" value="0">
				<input type="hidden" id="kurir1" name="kurir" value="">
				<input type="hidden" id="ongkir1" name="ongkir" value="">
				<input type="hidden" id="service1" name="service" value="">
				<input type="hidden" name="bayartotal" id="bayartotal" value="">
				<button class="btn btn-primary" type="submit" name="submit"><b><i class="fa fa-paypal"></i> Bayar via Paypal</b></button>
			</form>
			<br>
			<div class="col-lg-12">
				<div class="alert alert-success alert"><i class="fa fa-bullhorn"></i> Segera lakukan pembayaran sebelum <b><?php $d=strtotime("tomorrow"); echo date("Y/m/d h:i:sa",$d);?></b>. Lakukan pembayaran ke rekening bank yang tertera dibawah.</div>
			</div>
			<div class="row">
			  <div class="col-lg-12">
          <div class="box-body table-responsive padding">
            <table id="datatable" class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th style="text-align: center">No.</th>
                  <th style="text-align: center">Daftar Produk</th>
									<th style="text-align: center">Harga</th>
                  <th style="text-align: center">Berat</th>
                  <th style="text-align: center">Jumlah Berat (gram)</th>
									<th style="text-align: center">Qty</th>
                  <th style="text-align: center">Total</th>
									<th style="text-align: center">Catatan</th>
                </tr>
              </thead>
              <tbody>
              <?php $no=1; foreach ($cart_finished as $cart){ ?>
                <tr>
                  <td style="text-align:center"><?php echo $no++ ?></td>
                  <td style="text-align:left"><?php echo $cart->judul_produk ?></td>
									<td style="text-align:center"><?php echo number_format($cart->harga_diskon) ?></td>
									<td style="text-align:center"><?php echo $cart->berat ?></td>
                  <td style="text-align:center"><?php echo $cart->total_berat ?></td>
									<td style="text-align:center"><?php echo $cart->total_qty ?></td>
                  <td style="text-align:right"><?php echo number_format($cart->subtotal) ?></td>
									<td style="text-align:right"><?php echo $cart->catatan ?></td>
                </tr>
              <?php } ?>
              </tbody>
            </table>
  			  </div>
  			</div>
  		</div>

			<div class="row">
				<div class="col-lg-12">
					<table class="table table-striped table-bordered">
			  <tbody>
					<tr>
						<th>Total Berat</th>
						<td colspan="2" align="right"><?php echo $total_berat_dan_subtotal->total_berat ?> (gram) / <?php echo berat($total_berat_dan_subtotal->total_berat) ?> (kg)</td>
					</tr>
			    <tr>
						<th>SubTotal</th>
						<td></td>
						<td align="right"><?php echo number_format($total_berat_dan_subtotal->subtotal) ?></td>
					</tr>
					<!-- <tr>
			      <th>Ongkos Kirim</th>
            <td align="right">Via: <?php echo strtoupper($customer_data->kurir).' '.$customer_data->service ?></td>
			      <td align="right"><?php echo number_format($customer_data->ongkir) ?></td>
			    </tr> -->
					<tr>
						<th>Ongkos Kirim</th>
						<td>Via:
							<select onclick="harga()" id="kurir" name="kurir" class="kurir" required>
								<option value="">--Silahkan Pilih--</option>
							<?php
							$kurir=array('jne','pos','tiki');
							foreach($kurir as $data_kurir){
							?>
								<option value="<?=$data_kurir;?>"><?=strtoupper($data_kurir);?></option>
							<?php } ?>
							</select>

							<div id="kuririnfo" style="display: none;"><br>
								<label>Service</label>
								<div class="col-lg-12">
									<p class="form-control-static" id="kurirserviceinfo"></p>
								</div>
							</div>
						</td>
						<td align="right"><font id="totalongkir"></font></td>
					</tr>
					<tr>
			      <th scope="row">Grand Total</th>
			      <td align="right">Subtotal + Total Ongkir</td>
						<td align="right"><b id="grandtotal"><?php echo number_format($customer_data->ongkir + $total_berat_dan_subtotal->subtotal) ?></b></td>
			    </tr>
				</tbody>
			</table>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<hr><h4>Alamat Tujuan</h4><hr>
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th style="text-align: center">Nama</th>
								<th style="text-align: center">No. HP</th>
								<th style="text-align: center">Alamat</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="center"><?php echo $customer_data->name ?></td>
								<td align="center"><?php echo $customer_data->phone ?></td>
								<td align="center"><?php echo $customer_data->address.', '.$customer_data->nama_provinsi.', '.$customer_data->nama_kota?></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<hr><h4>PERHATIAN</h4><hr>
					<ul>
						<li>Kami akan segera memproses pemesanan Anda setelah mendapatkan konfirmasi pembayaran segera mungkin.</li>
					</ul>
					<p>Terima kasih telah berbelanja bersama kami.</p>
				</div>
				<input type="hidden" name="total" id="total" value="<?php echo $total_berat_dan_subtotal->subtotal ?>"/>
				<input type="hidden" name="ongkir" id="ongkir" value="0"/>
			</div>
	  </div>
  </div>
</div>
<script type="text/javascript">
	var kurir=document.getElementById('kurir');
	var kurir1=document.getElementById('kurir1');

	function harga(){
		kurir1.value=kurir.value;
	}
</script>

<script type="text/javascript">
$(document).ready(function()
{
	$(".kurir").each(function(){
		$(this).on("change",function(){
			var did=$(this).val();
			var berat="<?php echo $total_berat_dan_subtotal->total_berat ?>";
			var kota="<?php echo $customer_data->kota ?>";
			$.ajax({
				method: "get",
				dataType:"html",
				url: "<?=base_url();?>cart/kurirdata",
				data: "kurir="+did+"&berat="+berat+"&kota="+kota,
			})
			.done(function(x) {
				$("#kurirserviceinfo").html(x);
				$("#kuririnfo").show();
			})
			.fail(function() {
				$("#kurirserviceinfo").html("");
				$("#kuririnfo").hide();
			});
		});
	});
	hitung();
});

function hitung()
{
	var total=$('#total').val();
	var ongkir=$("#ongkir").val();
	var totalongkir= ongkir;
	var bayar=(parseFloat(total)+parseFloat(ongkir));
	if(parseFloat(ongkir) > 0)
	{
		$("#oksimpan").show();
	}else{
		$("#oksimpan").hide();
	}
	$("#totalongkir").html(totalongkir);
	$("#ongkir1").val(totalongkir);
	$("#grandtotal").html(bayar);
	$("#bayartotal").val(bayar);
}
</script>

<?php $this->load->view('front/footer'); ?>
