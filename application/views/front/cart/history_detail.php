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
				<?php if($history_detail_row->status=='2' || $history_detail_row->status=='3' || $history_detail_row->status=='4'){ ?>
					<?php echo form_open('cart/download_invoice/'.$history_detail_row->id_trans) ?>
						<button type="submit" name="download_invoice" class="btn btn-sm btn-success">Download Bukti pembayaran</button>
					<?php echo form_close() ?>
					<br>
		    <?php } elseif($history_detail_row->status=='5'){?>
					<p class="text-danger">TRANSAKSI DIBATALKAN</p>
				<?php } else { ?>
					<div class="col-lg-12">
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
						  Pilih metode pembayaran
						</button>
						<br>
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Pilih metode pembayaran</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
										<table class="table table-borderless">
											<tbody>
												<tr>
													<th scope="row">
														<form action="<?php echo base_url('page/bayarcc/').$history_detail_row->id_trans ?>" method="post">
															<input type="hidden" name="idtrans" value="<?php echo $history_detail_row->id_trans ?>">
															<input type="hidden" name="code" value="2">
															<input type="hidden" name="itemName" value="<?php echo $history_detail_row->judul_produk ?>">
															<input type="hidden" name="bayartotal" id="bayartotal" value="<?php echo ceil(berat($history_detail_row->total_berat)) * $history_detail_row->ongkir + $subtotal_history->subtotal ?>">
															<button style="background-color:transparent;background-repeat:no-repeat;border: none;cursor:pointer;overflow: hidden;" type="submit"><h5><b><i class="fa fa-credit-card"></i> Kartu Kredit / Debit</b></h5></button>
														</form>
													</th>
												</tr>
												<tr>
													<th scope="row">
														<button style="background-color:transparent;background-repeat:no-repeat;border: none;cursor:pointer;overflow: hidden;" onclick="window.location.href='<?php echo base_url('page/konfirmasi_pembayaran')?>'"><h5><b><i class="fa fa-bank"></i> Transfer bank</b></h5></button>
													</th>
												</tr>
											</tbody>
										</table>
						      </div>
						    </div>
						  </div>
						</div>
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
												<span class="text-success">SUDAH DIKIRIM</span>
											<?php } elseif($history->status == '4'){ ?>
												<span class="text-success">TRANSAKSI SELESAI</span>
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
        <tr>
          <th>Ongkos Kirim</th>
          <td align="right">Via: <?php echo strtoupper($history_detail_row->kurir).' '.$history_detail_row->service ?></td>
          <td align="right"><?php echo number_format($history_detail_row->ongkir) ?></td>
        </tr>
        <tr>
          <th scope="row">Grand Total</th>
          <td align="right">Subtotal + Total Ongkir</td>
          <td align="right"><b><?php echo number_format(ceil(berat($history_detail_row->total_berat)) * $history_detail_row->ongkir + $subtotal_history->subtotal) ?></b></td>
        </tr>
      </tbody>
    </table>
			</div>
	  </div>
	</div>
<?php $this->load->view('front/footer'); ?>
