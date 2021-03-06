<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>

<div class="container">
	<div class="row">
    <div class="col-lg-12">
			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
					<li class="breadcrumb-item"><a href="#">Produk</a></li>
					<li class="breadcrumb-item active"><?php echo $produk->judul_produk ?></li>
			  </ol>
			</nav>
    </div>
		<div class="col-lg-9">
      <h1><?php echo $produk->judul_produk ?></h1><hr>
			<div class="row">
			  <div class="col-sm-5" align="center">
		    	<?php
		      if(empty($produk->foto)) {echo "<img class='img-thumbnail' src='".base_url()."assets/images/no_image.png' width='400' height='400'>";}
		      else
					{
						echo "
						<a href='".base_url()."assets/images/produk/".$produk->foto.$produk->foto_type."'>
						<img data-action='zoom' class='img-thumbnail' src='".base_url()."assets/images/produk/".$produk->foto.'_thumb'.$produk->foto_type."' title='$produk->judul_produk' alt='$produk->judul_produk' width='400' height='400'>
						</a>";}
		      ?>
					<br>
				</div>
				<div class="col-sm-7"><p><h4>Spesifikasi Produk</h4></p><hr>
					<p>Sisa stok : <?php echo $produk->stok; ?></p>
					<p>Berat: <?php echo $produk->berat ?> gr</p>
					<?php if(isset($_SESSION['identity']) && $_SESSION['usertype'] == '2'){ ?>
						<p>Harga: Rp <strike><b>Rp <?php echo number_format($produk->harga_normal) ?></b></strike> | <b>Rp <?php echo number_format($produk->harga_diskon) ?></b> <font style="font-size:15px"><span class="badge badge-pill badge-primary"><?php echo $produk->diskon ?>% OFF</span></font></p>
			    <?php } else { ?>
						<p>Harga: <b>Rp <?php echo number_format($produk->harga_normal) ?></b></p>
			    <?php } ?>
          <p>Stok: <?php if($produk->stok > 0){echo "<font style='font-size:15px'><span class='badge badge-pill badge-success'>Tersedia</span></font>";}else{echo "<font style='font-size:15px'><span class='badge badge-pill badge-primary'>Kosong</span></font>";} ?></p>
					<p>Kategori:
						<a href="<?php echo base_url('kategori/read/').$produk->slug_kat ?>">
							<?php echo $produk->judul_kategori ?>
						</a>
					</p>
					<div class="container">
						<div class="row">
								<div class="center">
									<div class="input-group">
					          <span class="input-group-btn">
					              <button id="minus" type="button" class="btn btn-default">
					                  <i class="fa fa-minus"></i>
					              </button>
					          </span>
											<input name="count" id="count" type="text" class="form-control input-number" value="1">
					          <span class="input-group-btn">
					              <button id="plus" type="button" class="btn btn-dark">
					                  <i class="fa fa-plus"></i>
					              </button>
					          </span>
									</div>
								</div>
								<div class="col-lg-12">
									<br>
									<input id="catatan" class="form-control mr-md-2" type="text" name="catatan" size="50" placeholder="Catatan untuk penjual (Opsional)" onchange="simpan()">
								</div>
						</div>
					</div>
					<br>
					<?php
						if($produk->stok > 0){ ?>
						<form action="<?php echo base_url('cart/buy2/').$produk->id_produk ?>" method="post">
							<input type="hidden" name="counthi" id="counthi">
							<input type="hidden" name="stok" value="<?php echo $produk->stok; ?>">
							<input id="catatanhi" class="form-control mr-md-2" type="hidden" name="catatanhi">
						<a href="<?php echo base_url('cart/buy2/').$produk->id_produk ?>">
							<button id="beli" type="submit" class="btn btn-primary btn-lg btn-block col-lg-12">Beli</button>
						</a>
			    <?php } else { ?>
							<button class="btn btn-primary btn-lg btn-block col-lg-12 disabled">Beli</button>
						</a>
			    <?php } ?>
				</form>
					<script type="text/javascript">
							var counthi = document.getElementById('counthi');
							var count = document.getElementById('count');
							var plus = document.getElementById('plus');
							var minus = document.getElementById('minus');
							var catatanhi = document.getElementById('catatanhi');
							var catatan = document.getElementById('catatan');
							plus.addEventListener("click",tambah);
							minus.addEventListener("click",kurang);
							counthi.value=count.value;
							minus.disabled=true;

							function simpan(){
								catatanhi.value=catatan.value;
							}
							function tambah(){
								count.value++;
								minus.disabled=false;
								if(count.value>8)
								{
									minus.disabled=false;
									plus.disabled=true;
								}
								counthi.value=count.value;
							}
							function kurang(){
								count.value--;
								plus.disabled=false;
								if (count.value<=1) {
									minus.disabled=true;
									counthi.value=count.value;
								}
								counthi.value=count.value;
							}
					</script>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12"><hr><h4>Deskripsi Produk</h4><hr>
					<p><?php echo $produk->deskripsi ?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12"><hr><h4 class="text-center">Testimonial</h4><hr>
					<p>
						<div class="container col-lg-12">
							<?php foreach(array_reverse((array)$testi) as $testimoni){ ?>
							<div class="card">
							    <div class="card-body">
							        <div class="row">
						        	    <div class="col-md-2">
														<?php if(empty($testimoni->photo)){ ?>
						        	        <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
														<?php } else { ?>
															<img src="<?php echo base_url('assets/images/user/').$testimoni->photo.$testimoni->photo_type ?>" class="rounded-circle" width="100px" height="100px"/>
														<?php } ?>
															<p class="text-muted text-center"><?php echo $testimoni->date_crate; ?></p>
						        	    </div>
						        	    <div class="col-md-10">
						        	        <p>
						        	            <a class="float-left" href="#"><strong><?php echo $testimoni->name; ?></strong></a>
																	<?php for ($i=1; $i <=$testimoni->rating; $i++) { ?>
							        	            <span class="float-right"><i style="color:gold;" class="fa fa-star"></i></span>
																	<?php } ?>
						        	       </p>
						        	       <div class="clearfix"></div>
														 <p><?php echo $testimoni->testi; ?></p>
						        	    </div>
							        </div>
								    </div>
							</div>
						<?php } ?>
						</div>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12"><hr><h4>PRODUK LAINNYA</h4><hr>
					<div class="row">
					  <?php foreach($produk_lainnya as $lainnya){ ?>
								<div class="col-xl-4 col-lg-6 col-md-6 col-sm-4 col-xs-12">
									<div class="card mb-4 box-shadow">
										<a href="<?php echo base_url("produk/$lainnya->slug_produk ") ?>">
											<?php
											if(empty($lainnya->foto)) {echo "<img class='card-img-top' src='".base_url()."assets/images/no_image.png'>";}
											else { echo " <img class='card-img-top' src='".base_url()."assets/images/produk/".$lainnya->foto.'_thumb'.$lainnya->foto_type."'> ";}
											?>
										</a>
										<div class="card-body">
											<a href="<?php echo base_url("produk/$lainnya->slug_produk ") ?>">
												<p class="card-text"><b><?php echo character_limiter($lainnya->judul_produk,25) ?></b></p>
											</a>
											<br>
											<p align="center">
												<strike><b>Rp <?php echo number_format($lainnya->harga_normal) ?></b></strike><br>
												<b>Rp <?php echo number_format($lainnya->harga_diskon) ?></b> <font style="font-size:15px"><span class="badge badge-pill badge-primary"><?php echo $lainnya->diskon ?>% OFF</span></font>
											</p>
											<p align="center">
												<?php if($lainnya->stok > 0){ ?>
													<button class="btn btn-primary btn-lg btn-block"><i class="fa fa-shopping-cart"></i> Beli</button>
						            <?php } else { ?>
													<button disabled class="btn btn-primary btn-lg btn-block"><i class="fa fa-shopping-cart"></i> Beli</button>
						            <?php } ?>
											</p>
										</div>
									</div>
								</div>
					  <?php } ?>
					</div>
				</div>
			</div>

		</div>

		<!-- Kolom kanan -->
		<?php $this->load->view('front/sidebar'); ?>

		<script src="<?php echo base_url('assets/plugins/zooming/build/zooming.min.js') ?>"></script>
		<script type="text/javascript" src="//platform-api.sharethis.com/js/sharethis.js#property=5a979c495d0b9500130f346b&product=sticky-share-buttons"></script>
		<div class="col-lg-12">
			  <?php $this->load->view('front/footer'); ?>
		</div>
