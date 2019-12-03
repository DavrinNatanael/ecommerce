<?php $this->load->view('back/meta') ?>
<?php $this->load->view('back/navbar') ?>
<?php $this->load->view('back/sidebar') ?>
<div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1><?php echo $title ?></h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active"><?php echo $title ?></li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">


            <div class="row">
                <div class="col-lg-12">
                    <div style="padding:20px;" class="box box-primary">
                      <br>
                      <div class="float-right"><a href="javascript:void(0);" class="btn btn-primary"
                                data-toggle="modal" data-target="#Modal_Add"><span class="fa fa-plus"></span> Tambah user</a>
                      </div>
                      <br>
                      <div id="show_record">

                      </div>
                      <?php
                      $pengujian= array();
                      foreach($mae as $m){
                        $pengujian[]=$m->pengujian;
                      }
                      $rata1 = array_sum($pengujian)/count($pengujian);
                      ?>
                      <?php
                      $prec= array();
                      $reca= array();
                      foreach($precision as $p){
                        $res1=0;
                        $res2=0;
                        $res1 = $p->prediksi/($p->rating+$p->prediksi);
                        $res2 = $p->rating/($p->rating+$p->prediksi);
                        $prec[]=$res1;
                        $reca[]=$res2;
                        $rata2 = array_sum($prec)/count($prec);
                        $rata3 = array_sum($reca)/count($reca);
                      }
                      ?>
                      <br>
                        <div class="table-responsive">
                            <table id="mydata" class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td align="center"><label>No</label></td>
                                        <td align="center"><label>Id User</label></td>
                                        <td align="center"><label>Mean MAE</label></td>
                                        <td align="center"><label>Precision</label></td>
                                        <td align="center"><label>Recall</label></td>
                                        <td align="center"><label>F1 Score</label></td>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php $f1=array(); $index=0; $no=1; foreach ($testing as $test) {$f1tmp=0;?>
                                    <tr>
                                      <td align="center"><?php echo $no++; ?></td>
                                      <td align="center"><?php echo $test->user_id; ?></td>
                                      <td align="center"><?php echo $pengujian[$index]; ?></td>
                                      <td align="center"><?php echo $prec[$index]; ?></td>
                                      <td align="center"><?php echo $reca[$index]; ?></td>
                                      <td align="center"><?php echo (2*$prec[$index]*$reca[$index])/($prec[$index]+$reca[$index]); $f1tmp=(2*$prec[$index]*$reca[$index])/($prec[$index]+$reca[$index]); $f1[]=$f1tmp; ?></td>
                                    </tr>
                                  <?php $index++; $rata4 = array_sum($f1)/count($f1); } ?>
                                  <tr>
                                    <td align="center" colspan="2"><b>Rata-Rata</b></td>
                                    <td align="center"><b><?php echo $rata1; ?></b></td>
                                    <td align="center"><b><?php echo $rata2; ?></b></td>
                                    <td align="center"><b><?php echo $rata3; ?></b></td>
                                    <td align="center"><b><?php echo $rata4; ?></b></td>
                                  </tr>
                                </tbody>
                            </table>
                        <!-- </div>
                        <div class="row">
                          <div class="col-lg-6">
                            <div style="padding:10px;" class="box box-primary">
                              <p>MEAN MAE</p>
                              <div class="btn btn-primay" id="rata"></div>
                              <hr>
                              <p>PRECICION</p>
                              <div class="btn btn-primay" id="precicion"></div>
                              <hr>
                              <p>RECALL</p>
                              <div class="btn btn-primay" id="recall"></div>
                              <hr>
                              <p>F1</p>
                              <div class="btn btn-primay" id="fone"></div>
                            </div>
                          </div>
                        </div> -->
                    </div>
                </div>
            </div>


            <!-- <div class="row">
            <section class="content-header">
            <h1>MEA Berdasarkan Kategori</h1>
        </section>
                <div class="col-lg-12">
                    <div style="padding:20px;" class="box box-primary">

                        <div class="table-responsive">
                            <table id="mydata" class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td align="center"><label>Id Kategori</label></td>
                                        <td align="center"><label>Mean MAE</label></td>
                                        <td align="center"><label>Precision</label></td>
                                        <td align="center"><label>Recall</label></td>
                                        <td align="center"><label>F1 Score</label></td>
                                    </tr>
                                </thead>
                                <tbody id="show_kategori">

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div> -->



    </div>
    <!-- </form> -->

    <!-- MODAL ADD -->
    <form>
        <div class="modal fade" id="Modal_Add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tambah User</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">ID User</label>
                            <div class="col-md-10">
                                <input type="text" name="judul" id="judul" class="form-control"
                                    placeholder="ID User">
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                        <button type="button" type="submit" id="btn_save" class="btn btn-primary">Simpan</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--END MODAL ADD-->

    <div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true" data-backdrop="false">
        <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header blue accent-1">

                    <h3 class="mt-2" style="color:white;"><i class="fa fa-user-circle"></i> User Information:</h3>
                    <a href="index3.php" button type="btn" class="close" aria-label="Close">
                        <span aria-hidden="true">&times;</span></a>


                </div>
                <div class="modal-body">

                    <form action="index3.php" method="post">

                        <div class="row">
                            <div class="col">
                                <div class="md-form mt-0">
                                    <input type="text" class="form-control" name="firstname" placeholder="First name"
                                        id="firstname" value="<?php print $output;?>" required>

                                </div>
                            </div>

                            <div class="col">
                                <div class="md-form mt-0">
                                    <input type="text" class="form-control" placeholder="Last name" name="lastname"
                                        id="lastname" value="<?php print $output;?>" required>
                                </div>
                            </div>
                        </div>

                        <div class="text-center mt-2">
                            <button type="submit" class="btn btn-info" style="width:98%; ">Log in <i
                                    class="fa fa-sign-in ml-1"></i></button>
                        </div>

                    </form>


                </div>
            </div>
        </div>
    </div>
</div>
</div>
</section><!-- /.content -->
</div><!-- /.content-wrapper -->
<?php $this->load->view('back/footer') ?>
</div><!-- ./wrapper -->
<?php $this->load->view('back/js') ?>
</body>

</html>
