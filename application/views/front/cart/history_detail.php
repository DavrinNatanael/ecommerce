<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>

	<div class="container">
		<div class="row">
	    <div class="col-sm-12 col-lg-12">
				<nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
						<li class="breadcrumb-item active">Detail Riwayat Transaksi</li>
				  </ol>
				</nav>
	    </div>


	    <div class="col-lg-12"><h1>Detail Riwayat Transaksi</h1><hr>
        <h4>Invoice NO. <?php echo $history_detail_row->id_trans ?></h4>
				<?php if($history_detail_row->status=='2' || $history_detail_row->status=='3' || $history_detail_row->status=='4' || $history_detail_row->status=='5'){ ?>
					<?php echo form_open('cart/download_invoice/'.$history_detail_row->id_trans) ?>
						<!-- <button type="submit" name="download_invoice" class="btn btn-sm btn-success">Download Bukti pembayaran</button> -->
					<?php echo form_close() ?>
					<br>
		    <?php } elseif($history_detail_row->status=='6'){?>
					<p class="text-danger">TRANSAKSI DIBATALKAN</p>
				<?php } else { ?>
					<div class="col-lg-12">
						<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
						  Pilih metode pembayaran
						</button>
						<br> -->
						<br>
						<form class="paypal" action="<?php echo base_url('page/paypal') ?>" method="post" id="paypal_form">
							<input type="hidden" name="cmd" value="_xclick" />
							<input type="hidden" name="idtrans" value="Transaksi nomor <?php echo $history_detail_row->id_trans ?>">
							<input type="hidden" id="code" name="code" value="<?php echo $history_detail_row->id_trans ?>">
							<input type="hidden" id="kurir1" name="kurir" value="">
							<input type="hidden" id="ongkir1" name="ongkir" value="">
							<input type="hidden" id="service1" name="service" value="">
							<?php
								$_SESSION['kode'] = $history_detail_row->id_trans;
							?>
							<input type="hidden" name="test" value="0">
							<input type="hidden" name="bayartotal" id="bayartotal" value="<?php echo ceil(berat($history_detail_row->total_berat)) * $history_detail_row->ongkir + $subtotal_history->subtotal ?>">
							<button class="btn btn-primary" type="submit" name="submit"><b><i class="fa fa-paypal"></i> Bayar via Paypal</b></button>
						</form>
						<br>
						<div class="alert alert-success alert"><i class="fa fa-bullhorn"></i> Segera lakukan pembayaran sebelum <b><?php $d=strtotime("tomorrow"); echo date("Y/m/d h:i A",$d);?></b>. Jika pesanan anda sudah melewati batas yang telah ditentukan, akan secara otomatis dibatalkan oleh sistem.</div>
					</div>
				<?php } ?>
				<div class="row">
				  <div class="col-lg-12">
	          <div class="box-body table-responsive padding">
              <table id="datatable" class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th style="text-align: center">No.</th>
                    <th style="text-align: center">Produk</th>
										<th style="text-align: center">Harga</th>
                    <th style="text-align: center">Berat</th>
                    <th style="text-align: center">Jumlah Berat (gram)</th>
										<th style="text-align: center">Qty</th>
                    <th style="text-align: center">Total</th>
										<th style="text-align: center">Catatan</th>
										<th style="text-align: center">Status pesanan</th>
                  </tr>
                </thead>
                <tbody>
                <?php $no=1; foreach ($history_detail as $history){ ?>
                  <tr>
                    <td style="text-align:center"><?php echo $no++ ?></td>
                    <td style="text-align:left"><?php echo $history->judul_produk ?></a></td>
										<td style="text-align:center"><?php echo $history->harga_diskon ?></td>
                    <td style="text-align:center"><?php echo $history->berat ?></td>
                    <td style="text-align:center"><?php echo $history->total_berat ?></td>
                    <td style="text-align:center"><?php echo $history->total_qty ?></td>
                    <td style="text-align:center"><?php echo $history->subtotal ?></td>
										<td style="text-align:center"><?php echo $history->catatan ?></td>
										<td style="text-align:center">
											<?php if($history->status == '1'){ ?>
			                  <span class="text-danger">BELUM DIBAYAR</span>
			                <?php } elseif($history->status == '2'){ ?>
			                  <span class="text-success">SUDAH DIBAYAR</span>
			                <?php } elseif($history->status == '3'){ ?>
												<span class="text-success">BARANG SUDAH SAMPAI</span>
											<?php } elseif($history->status == '4'){ ?>
												<span class="text-success">MENUNGGU KONFIRMASI PESANAN</span>
											<?php } elseif($history->status == '5'){?>
												<span class="text-success">TRANSAKSI SELESAI</span>
											<?php } elseif($history->status == '6'){?>
												<span class="text-danger">TRANSAKSI DIBATALKAN</span>
											<?php } ?>
										</td>
                  </tr>
                <?php } ?>
                </tbody>
              </table>
	  			  </div>
	  			</div>
				</div>
		  </div>

			<div class="col-lg-12">
				<table class="table table-striped table-bordered">
      <tbody>
				<tr>
					<th>Total Berat</th>
					<td colspan="2" align="right"><?php echo $history_detail_row->total_berat ?> (gram) / <?php echo berat($history_detail_row->total_berat) ?> (kg)</td>
				</tr>
        <tr>
          <th>SubTotal</th>
          <td></td>
          <td align="right"><?php echo number_format($subtotal_history->subtotal) ?></td>
        </tr>
        <!-- <tr>
          <th>Ongkos Kirim</th>
          <td align="right">Via: <?php echo strtoupper($history_detail_row->kurir).' '.$history_detail_row->service ?></td>
          <td align="right"><?php echo number_format($history_detail_row->ongkir) ?></td>
        </tr> -->
				<?php if($history_detail_row->status==1){ ?>
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
				<?php } ?>
        <tr>
          <th scope="row">Grand Total</th>
          <td align="right">Subtotal + Total Ongkir</td>
          <td align="right"><b id="grandtotal"></b></td>
        </tr>
      </tbody>
			<input type="hidden" name="total" id="total" value="<?php echo $subtotal_history->subtotal ?>"/>
			<input type="hidden" name="ongkir" id="ongkir" value="0"/>
    </table>
			</div>
	  </div>
	</div>
<?php $this->load->view('front/footer'); ?>
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
			var berat="<?php echo $history_detail_row->total_berat ?>";
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
