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
    <div class="col-lg-12"><h1>Beri Ulasan</h1><hr>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">No</th>
            <th scope="col">Nama Produk</th>
            <th scope="col">Banyak item</th>
            <th scope="col">Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php $no=1; foreach($pending as $p){?>
          <tr>
            <th scope="row"><?php echo $no++ ?></th>
            <td><?php echo $p->judul_produk ?></td>
            <td><?php echo $p->total_qty ?></td>
            <td>
                <button data-toggle="modal" data-target="#exampleModal<?php echo $no-1; ?>" type="button" name="status" class="btn btn-primary">Beri Ulasan</button>
						</td>
          </tr>
          <div class="modal fade" id="exampleModal<?php echo $no-1; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <form action="<?php echo base_url('cart/konfirm/').$p->trans_id ?>" method="post">
            <input type="hidden" name="usid" value="<?php echo $p->user; ?>">
            <input type="hidden" name="trans" value="<?php echo $p->trans_id; ?>">
            <input type="hidden" name="prod" value="<?php echo $p->produk_id; ?>">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel"><?php echo $p->judul_produk ?></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
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
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
                </form>
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
            </div>
          </div>
        <?php } ?>
        </tbody>
      </table>
    </div>


	</div>

</div>

  <?php $this->load->view('front/footer'); ?>
