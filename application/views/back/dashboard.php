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
            <!-- penampilan total record -->
            <div class="row">
                <div class='col-lg-6'>
                    <div class='small-box bg-blue'>
                        <div class='inner'>
                            <h3> <?php echo $total_transaksi ?> </h3>
                            <p><b>PENJUALAN</b></p>
                        </div>
                        <div class='icon'><i class='fa fa-money'></i></div>
                        <a href='<?php echo base_url('admin/penjualan') ?>' class='small-box-footer'>Selengkapnya <i
                                class='fa fa-arrow-circle-right'></i></a>
                    </div>
                </div>
                <div class='col-lg-6'>
                    <div class='small-box bg-orange'>
                        <div class='inner'>
                            <h3> <?php echo $total_produk ?> </h3>
                            <p><b>PRODUK</b></p>
                        </div>
                        <div class='icon'><i class='fa fa-shopping-cart'></i></div>
                        <a href='<?php echo base_url('admin/produk') ?>' class='small-box-footer'>Selengkapnya <i
                                class='fa fa-arrow-circle-right'></i></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- produk terlaris bulanan -->
                <div class="col-lg-6">
                    <div class="box box-success">
                        <div class="box-header with-border">
                            <h3 class="box-title"><label>5 PRODUK TERLARIS BULAN INI</label></h3>
                        </div>
                        <div class="box-body">
                            <script src="<?php echo base_url('assets/plugins/chartjs/Chart.min.js') ?>"></script>
                            <canvas id="pie-chart" height="400"></canvas>
                            <?php foreach($get_bulan as $laporan){
                  $json[] = $laporan->judul_produk;
                  $json2[] = $laporan->total_qty;
                }?>

                            <script type="text/javascript">
                            new Chart(document.getElementById("pie-chart"), {
                                type: 'doughnut',
                                data: {
                                    labels: <?php echo json_encode($json); ?>,
                                    datasets: [{
                                        backgroundColor: ["#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9",
                                            "#c45850"
                                        ],
                                        data: <?php echo json_encode($json2); ?>
                                    }]
                                },
                                options: {
                                    maintainAspectRatio: false,
                                }
                            });
                            </script>
                        </div>
                    </div>
                </div>
                <!-- 5 transaksi terakhir -->
                <div class="col-lg-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title"><label>5 TRANSAKSI TERAKHIR</label></h3>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <td align="center"><label>ID Trans</label></td>
                                            <td align="center"><label>Nama</label></td>
                                            <td align="center"><label>Pengiriman via</label></td>
                                            <td align="center"><label>Status</label></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach($top5_transaksi as $top5){ ?>
                                        <tr>
                                            <td align="center"><?php echo $top5->id_trans ?></td>
                                            <td align="center"><?php echo $top5->name ?></td>
                                            <td align="center">
                                                <?php echo strtoupper($top5->kurir).' - '.$top5->service ?></td>
                                            <td align="center">
                                                <?php if($top5->status == '0'){ ?>
                                                <button type="button" name="status" class="btn btn-danger">BELUM
                                                    CHECKOUT</button>
                                                <?php }elseif($top5->status == '1'){ ?>
                                                <button type="button" name="status"
                                                    class="btn btn-warning">CHECKOUT</button>
                                                <?php } elseif($top5->status == '2'){ ?>
                                                <button type="button" name="status" class="btn btn-success">SUDAH
                                                    DIBAYAR</button>
                                                <?php } elseif($top5->status == '3'){ ?>
                                                <button type="button" name="status" class="btn btn-success">SUDAH
                                                    DIKIRIM</button>
                                                <?php } elseif($top5->status == '4'){ ?>
                                                <button disabled type="button" name="status"
                                                    class="btn btn-success">MENUNGGU KONFIRMASI BARANG</button>
                                                <?php } elseif($top5->status == '5'){?>
                                                <button disabled type="button" name="status"
                                                    class="btn btn-success">TRANSAKSI SELESAI</button>
                                                <?php } elseif($top5->status == '6'){?>
                                                <button disabled type="button" name="status"
                                                    class="btn btn-danger">TRANSAKSI DIBATALKAN</button>
                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="box-footer">
                                <button type="button" name="button" class="btn btn-primary">Lihat Selengkapnya</button>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
    </div>

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
