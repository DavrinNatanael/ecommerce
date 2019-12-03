<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>

<div class="container">
	<div class="row">
    <div class="col-lg-12">
			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
					<li class="breadcrumb-item active">Riwayat Transaksi</li>
			  </ol>
			</nav>
    </div>
    <div class="col-lg-12"><h1>Riwayat Transaksi</h1><hr>
			<?php echo $this->session->flashdata('msg'); ?>
			<div class="row">
			  <div class="col-lg-12">
          <div class="box-body table-responsive padding">
						<?php if(empty($cek_cart_history->id_trans)){echo "Anda belum ada transaksi";}else{ ?>
            	<table id="datatable" class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th style="text-align: center">No.</th>
                  <th style="text-align: center">Invoice</th>
									<th style="text-align: center">Dibuat</th>
                  <th style="text-align: center">Pengiriman</th>
									<th style="text-align: center">Status</th>
									<th style="text-align: center">No. Resi</th>
                  <th style="text-align: center">Aksi</th>
                </tr>
              </thead>
              <tbody>
              <?php $no=1; foreach (array_reverse($cart_history) as $history){ ?>
                <tr>
                  <td style="text-align:center"><?php echo $no++ ?></td>
                  <td style="text-align:center"><?php echo $history->id_trans ?></a></td>
									<td style="text-align:center"><?php echo $history->created ?></td>
                  <td style="text-align:center"><?php echo strtoupper($history->kurir).' '.$history->service ?></td>
									<td style="text-align:center">
		                <?php if($history->status == '1'){ ?>
		                  <p class="text-danger">BELUM DIBAYAR</p>
		                <?php } elseif($history->status == '2'){ ?>
		                  <p class="text-success">SUDAH DIBAYAR</p>
		                <?php } elseif($history->status == '3'){ ?>
											<a href="<?php echo base_url('page/arrived/').$history->id_trans ?>">
												<button type="button" name="status" class="btn btn-sm btn-success">TERIMA PESANAN</button>
											</a>
										<?php } elseif($history->status == '4'){ ?>
											<a href="<?php echo base_url('page/testimoni/').$history->id_trans ?>">
												<button type="button" name="status" class="btn btn-sm btn-success">SELESAIKAN TRANSAKSI</button>
											</a>
										<?php } elseif($history->status == '5'){?>
										<p class="text-success">TRANSAKSI SELESAI</p>
										<?php } elseif($history->status == '6'){?>
										<p class="text-danger">TRANSAKSI DIBATALKAN</p>
										<?php } ?>
									</td>
									<td style="text-align:center">
										<?php if($history->resi != NULL){echo $history->resi;}else{echo "Belum ada";} ?>
									</td>
									<td style="text-align:center">
										<?php if($history->status == '4' && $history->komplain_status == '0') {?>
											<form class="" action="<?php echo base_url('page/komplain/').$history->id_trans ?>" method="post">
												<input type="hidden" name="trans" value="<?php echo $history->id_trans ?>">
													<button type="submit" class="btn btn-sm btn-warning col-sm-12"><i class="icon-headphones"></i> Komplain</button>
														<br>
											</form>
											<a href="<?php echo base_url('cart/history_detail/').$history->id_trans ?>">
												<br>
												<button name="update" class="btn btn-sm btn-warning col-sm-12"><i class="icon-zoom-in"></i> Detail</button>
											</a>
										<?php } else {?>
											<a href="<?php echo base_url('cart/history_detail/').$history->id_trans ?>">
												<button name="update" class="btn btn-sm btn-warning col-sm-12"><i class="icon-zoom-in"></i> Detail</button>
											</a>
										<?php } ?>
                  </td>
                </tr>
              <?php } ?>
              </tbody>
            </table>
						<?php } ?>
  			  </div>
  			</div>
			</div>
	  </div>
	</div>
</div>

<?php $this->load->view('front/footer'); ?>
