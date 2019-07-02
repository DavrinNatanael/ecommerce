		<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<hr><h5>Temukan Kami di :</h5><hr>
						<li><a href="https://facebook.com">Facebook</a></li>
						<li><a href="https://twitter.com">Twitter</a></li>
						<li><a href="https://instagram.com">Instagram</a></li>
					</div>
					<div class="col-lg-5">
						<hr><h5>Pintasan :</h5><hr>
						<li><a href="<?php echo base_url() ?>">Home</a></li>
						<li><a href="<?php echo base_url('blog/arsip') ?>">Blog</a></li>
						<li><a href="<?php echo base_url('produk/katalog') ?>">Katalog Produk</a></li>
						<li><a href="<?php echo base_url('profil') ?>">Profil</a></li>
						<li><a href="<?php echo base_url('konfirmasi_pembayaran') ?>">Konfirmasi Pembayaran</a></li>
					</div>
					<div class="col-lg-2">
						<hr><h5>Kontak</h5><hr>
						<?php foreach($kontak as $kontak){?>
							<b><?php echo $kontak->nama ?></b><br>
							+<?php echo $kontak->nohp ?><br>
							<a href="https://api.whatsapp.com/send?phone=+<?php echo $kontak->nohp ?>&text=Hi%20Gan,%20Saya%20minat%20dengan%20barangnya%20yang%20di%20website">
								<button class="btn btn-sm btn-success" type="submit" name="button">Chat via Whatsapp</button>
							</a><br><br>
						<?php } ?>
					</div>
					<div class="col-lg-12"><hr>
						<div class="row">
							<div class="col-md-9">
								Coded by <a href="#">Sorry Gaes</a>
							</div>
							<div class="col-md-3"><a href="#top">Kembali ke atas</a></div>
						</div>
					</div>
				</div>
			</div>
		</footer>
  </body>
</html>
