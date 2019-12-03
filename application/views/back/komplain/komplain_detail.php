<?php $this->load->view('back/meta') ?>

<?php
$_SESSION['komid'] = $komplain->id_komplain;
?>
  <div class="wrapper">
    <?php $this->load->view('back/navbar') ?>
    <?php $this->load->view('back/sidebar') ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
      <?php if($komplain->status == 1){ ?>
        <h1>Barang Rusak</h1>
      <?php }elseif($komplain->status == 2){ ?>
        <h1>Barang tidak lengkap</h1>
      <?php }elseif($komplain->status == 3){?>
        <h1>Barang tidak sesuai</h1>
      <?php } ?>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#"><?php echo $module ?></a></li>
          <li class="active"><?php echo $title ?></li>
        </ol>
      </section>
      <div class="pad margin no-print">
      </div>
      <!-- Main content -->
      <section class="invoice">
        <!-- title row -->
        <div class="row">
          <div class="col-xs-12">
            <h2 class="page-header">
              <i class="fa fa-globe"></i> <?php echo $company_data->company_name ?>
            </h2>
          </div><!-- /.col -->
        </div>
        <!-- Table row -->
        <div class="row">
          <div class="col-xs-12 table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th style="text-align: center">No.</th>
                  <th style="text-align: center">Judul Produk</th>
                  <th style="text-align: center">Harga</th>
                  <th style="text-align: center">Berat</th>
                  <th style="text-align: center">Jumlah Berat (gram)</th>
                  <th style="text-align: center">Qty</th>
                  <th style="text-align: center">Total</th>
                </tr>
              </thead>
              <tbody>
                <?php $no=1; foreach ($produk as $komplain):?>
                  <tr>
                    <td style="text-align:center"><?php echo $no++; ?></td>
                    <td style="text-align:center"><?php echo $komplain->judul_produk ?></td>
                    <td style="text-align:center"><?php echo $komplain->harga_diskon ?></td>
                    <td style="text-align:center"><?php echo $komplain->berat ?> gr</td>
                    <td style="text-align:center"><?php echo $komplain->total_berat ?></td>
                    <td style="text-align:center"><?php echo $komplain->total_qty ?></td>
                    <td style="text-align:center"><?php echo $komplain->subtotal ?></td>
                  </tr>
                <?php endforeach;?>
              </tbody>
            </table>
          </div>
        </div>
        <div class="">



        <h3>Foto produk</h3>
        <img width="200px" height="200px" src="<?php echo base_url('assets/images/komplain/').$komplain->foto_komplain.$komplain->foto_komplain_type ?>">
        <h3>Keterangan komplain</h3>
        <h4 class="text-danger"><?php echo $komplain->alasan; ?></h4>
        <br>
        <div class="input-group mb-3">
          <!-- <div class="form-group has-feedback"><label><b>Pilih aksi</b></label>
            <br>
            <select id="select" name="aksi" class="custom-select" onchange="myfunction()">
                <option selected>Pilih...</option>
                <option value="4" >Penukaran Barang</option>
                <option value="5" >Refund</option>
            </select>
          </div> -->
          <?php if($komplain->selesai == 0){ ?>
          <form class="" action="<?php echo base_url('admin/komplain/accf/').$komplain->id_komplain; ?>" method="post">
            <input type="hidden" name="transidval" value="<?php echo $komplain->transid; ?>">
            <button type="submit" name="button" class="btn btn-success"><i class="fa fa-check"></i> Setujui</button>
            <a href="<?php echo base_url('admin/komplain/decline/').$komplain->id_komplain; ?>" class="btn btn-danger"><i class="fa fa-remove"></i> Tolak</a>
          </form>
          </div>
        <?php }elseif($komplain->selesai == 1 && $komplain->status==5){ ?>
        </div>
          <div id="transfer" class="row">
              <?php echo form_open_multipart('admin/komplain/acc/'.$komplain->id_komplain) ?>
                <h3>No. Rekening</h3>
                <h4><?php echo $komplain->no_rek; ?></h4>
              <input type="hidden" name="transidval" value="<?php echo $komplain->transid; ?>">
              <div class="form-group has-feedback"><h3><b>Bukti Transfer</b></h3>
                  <input type="file" class="form-control" name="foto" id="foto" onchange="tampilkanPreview(this,'preview')"/>
                  <br><p><b>Preview</b><br>
                  <img id="preview" src="" alt="" width="250px"/>
              </div>
            <div class="row">
              <div class="col-xs-12">
                <button type="submit" name="button" class="btn btn-success"><i class="fa fa-check"></i> Setujui</button>
                </form>
                <a href="<?php echo base_url('admin/komplain/decline/').$komplain->id_komplain; ?>" class="btn btn-danger"><i class="fa fa-remove"></i> Tolak</a>
              </div>
            </div>
          </div>
          <?php echo form_close() ?>
<?php }elseif($komplain->selesai == 1 && $komplain->status==4){ ?>
        <div id="resi" class="row">
          <div class="form-group">
            <label for="formGroupExampleInput">Masukkan Resi</label>
            <?php echo form_open_multipart('admin/komplain/accp/'.$komplain->id_komplain) ?>
            <input type="hidden" name="transidval" value="<?php echo $komplain->transid; ?>">
              <input name="resi" type="text" class="form-control" id="formGroupExampleInput" placeholder="no.resi">
            </div>
            <div class="row">
            <div class="col-xs-12">
              <br>
              <!-- <a href="" class="btn btn-success"><i class="fa fa-check"></i> Setujui</a> -->
              <button type="submit" name="button" class="btn btn-success"><i class="fa fa-check"></i> Setujui</button>
            <?php echo form_close() ?>
              <a href="<?php echo base_url('admin/komplain/decline/').$komplain->id_komplain; ?>" class="btn btn-danger"><i class="fa fa-remove"></i> Tolak</a>
            </div>
          </div>
        </div>
<?php }elseif($komplain->selesai ==2){ ?>
  <h5 class="text-success"><b>Komplain ini telah diselesaikan</b></h5>
<?php } else{?>
  <h5 class="text-success"><b>...Menunggu aksi selanjutnya dari user</b></h5>
<?php } ?>
      <script type="text/javascript">
        var select = document.getElementById('select');
        var transfer = document.getElementById('transfer');
        var resi = document.getElementById('resi');
        console.log(select.value);

        function myfunction(){
          if(select.value=="5"){
            transfer.removeAttribute('hidden')
            resi.hidden = true;
          }
          else if(select.value=="4"){
            resi.removeAttribute("hidden");
            transfer.hidden=true;
          }
          else {
            resi.hidden = true;
            transfer.hidden=true;
          }
        }
      </script>
      </section><!-- /.content -->
      <div class="clearfix"></div>
    </div><!-- /.content-wrapper -->
    <?php $this->load->view('back/footer') ?>
  </div>
  <?php $this->load->view('back/js') ?>
</body>
</html>
<script type="text/javascript">
function tampilkanPreview(foto,idpreview)
{ //membuat objek gambar
  var gb = foto.files;
  //loop untuk merender gambar
  for (var i = 0; i < gb.length; i++)
  { //bikin variabel
    var gbPreview = gb[i];
    var imageType = /image.*/;
    var preview=document.getElementById(idpreview);
    var reader = new FileReader();
    if (gbPreview.type.match(imageType))
    { //jika tipe data sesuai
      preview.file = gbPreview;
      reader.onload = (function(element)
      {
        return function(e)
        {
          element.src = e.target.result;
        };
      })(preview);
      //membaca data URL gambar
      reader.readAsDataURL(gbPreview);
    }
      else
      { //jika tipe data tidak sesuai
        alert("Tipe file tidak sesuai. Gambar harus bertipe .png, .gif atau .jpg.");
      }
  }
}
</script>
