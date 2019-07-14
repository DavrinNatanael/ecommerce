<hr><h4 align="center">Produk Terbaru</h4><hr>
<div class="row">
  <?php foreach($produk_new_data as $produk){ ?>
  <?php if($produk->stok>0){ ?>
    <div class="col-xl-3 col-lg-4 col-md-12 col-sm-6 col-xs-12">
      <div class="card mb-4 box-shadow">
        <a href="<?php echo base_url("produk/$produk->slug_produk ") ?>">
          <?php
          if(empty($produk->foto)) {echo "<img class='card-img-top' src='".base_url()."assets/images/no_image.png'>";}
          else { echo "<img class='card-img-top' src='".base_url()."assets/images/produk/".$produk->foto.'_thumb'.$produk->foto_type."'> ";}
          ?>
        </a>
        <div class="card-body">
          <a href="<?php echo base_url("produk/$produk->slug_produk ") ?>">
            <p class="card-text"><b><?php echo character_limiter($produk->judul_produk,25) ?></b></p>
          </a>
          <br>
          <p align="center">
            <?php if(isset($_SESSION['identity']) && $_SESSION['usertype'] == '2'){ ?>
              <strike><b>Rp <?php echo number_format($produk->harga_normal) ?></b></strike><br>
              <b>Rp <?php echo number_format($produk->harga_diskon) ?></b> <font style="font-size:15px"><span class="badge badge-pill badge-primary"><?php echo $produk->diskon ?>% OFF</span></font>
            <?php } else { ?>
              <b>Rp <?php echo number_format($produk->harga_normal) ?></b>
            <?php } ?>
          </p>
          <p align="center">
            <?php if(isset($_SESSION['identity']) && $_SESSION['usertype'] == '2'){ ?>
                <a href="<?php echo base_url('cart/buy/').$produk->id_produk ?>">
                  <button onclick="return RefreshWindow();" class="btn btn-primary btn-lg btn-block col-lg-12"><i class="fa fa-shopping-cart"></i> Beli</button>
                </a>
              <?php } else { ?>
                <a href="<?php echo base_url('auth/register') ?>">
                  <button onclick="return RefreshWindow();" class="btn btn-primary btn-lg btn-block col-lg-12"><i class="fa fa-shopping-cart"></i> Beli</button>
                </a>
            <?php } ?>
          </p>
        </div>
      </div>
    </div>
  <?php } ?>
  <?php } ?>
</div>
