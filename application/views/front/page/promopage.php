<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>

<div class="container">
	<div class="row">
    <div class="col-lg-12">
			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
					<li class="breadcrumb-item"><a href="<?php echo base_url('blog/arsip') ?>">Blog</a></li>
					<li class="breadcrumb-item active">Promo Page</li>
			  </ol>
			</nav>
    </div>
		<div class="col-lg-12">
			<div class="col-sm-12"><h1>Halaman Daftar Promo</h1><hr>
      <div class="row">
				<div class="col-lg-12">
					<table class="table">
					  <thead class="thead-dark">
					    <tr>
					      <th scope="col">No</th>
					      <th scope="col">Kode Promo</th>
					      <th scope="col">Keterangan</th>
					      <th scope="col">Diskon</th>
								<th scope="col">Minimal Pembelian</th>
								<th scope="col">Maximum User(Kuota Umum)</th>
					    </tr>
					  </thead>
					  <tbody>
							<?php $no=1; foreach($promolist as $promo) {?>
								<?php if($promo->max_users!=0) {?>
									<tr>
										<td align="center"><?php echo $no++; ?></td>
										<td align="center"><?php echo $promo->kode_promo; ?></td>
										<td align="center"><?php echo $promo->ket_promo; ?></td>
										<td align="center"><?php echo $promo->discount; ?> %</td>
										<td align="center">Rp.<?php echo $promo->max_pembelian; ?></td>
										<td align="center"><?php echo $promo->max_users; ?></td>
									</tr>
								<?php } ?>
							<?php } ?>
					  </tbody>
					</table>
				</div>
			</div>
			<hr>
		</div>
<div class="col-lg-12">
	  <?php $this->load->view('front/footer'); ?>
</div>
