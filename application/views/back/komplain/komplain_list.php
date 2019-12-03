<?php $this->load->view('back/meta') ?>
  <div class="wrapper">
    <?php $this->load->view('back/navbar') ?>
    <?php $this->load->view('back/sidebar') ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1><?php echo $title ?></h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#"><?php echo $module ?></a></li>
					<li class="active"><?php echo $title ?></li>
        </ol>
      </section>
      <!-- Main content -->
      <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-12">
						<div class="box box-primary">
              <div class="box-body">
			          <a href="#" class="btn btn-default" onclick="reload_table()"><i class="fa fa-refresh"></i> Refresh</a>
								<hr>
								<?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
                <div class="table-responsive no-padding">
									<table id="datatable" class="table table-striped">
										<thead>
											<tr>
												<th style="text-align: center">No.</th>
												<th style="text-align: center">Nama User</th>
												<th style="text-align: center">Status</th>
                        <th style="text-align: center">Aksi</th>
											</tr>
										</thead>
										<tbody>
                      <?php $no=1; foreach (array_reverse($komplain_data) as $komplain):?>
											<tr>
												<td style="text-align:center"><?php echo $no++; ?></td>
												<td style="text-align:center"><?php echo $komplain->name ?></td>
												<td style="text-align:center">
                          <?php if($komplain->selesai == 0){ ?>
														<button type="button" name="" class="btn btn-danger">PENDING</button>
													<?php }elseif($komplain->selesai == 1){ ?>
														<button type="button" name="" class="btn btn-success">DALAM PROSES</button>
													<?php } elseif($komplain->selesai == 2){ ?>
														<button type="button" name="" class="btn btn-success">SELESAI</button>
													<?php } else{?>
                            <button type="button" name="" class="btn btn-warning">DITOLAK</button>
                          <?php } ?>
												</td>
                        <form action="<?php echo base_url('admin/komplain/view/').$komplain->transid;?>">
                          <td style="text-align:center">
                          <input name="komid" type="hidden" value="<?php echo $komplain->id_komplain?>">
                          <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-search-plus"></i></button>
                          </td>
                        </form>
											</tr>
											<?php endforeach;?>
                    </tbody>
									</table>
                </div>
							</div>
						</div>
          </div><!-- ./col -->
        </div><!-- /.row -->
      </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    <?php $this->load->view('back/footer') ?>
  </div><!-- ./wrapper -->
  <?php $this->load->view('back/js') ?>
  <!-- DATA TABLES-->
  <link href="<?php echo base_url('assets/plugins/') ?>datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
  <script src="<?php echo base_url('assets/plugins/') ?>datatables/jquery.dataTables.min.js" type="text/javascript"></script>
  <script src="<?php echo base_url('assets/plugins/') ?>datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
  <script type="text/javascript">
    function confirmDialog() {
      return confirm('Apakah anda yakin?')
    }
    $('#datatable').dataTable({
      "bPaginate": true,
      "bLengthChange": true,
      "bFilter": true,
      "bSort": true,
      "bInfo": true,
      "bAutoWidth": false,
      "aaSorting": [[0,'asc']],
      "lengthMenu": [[10, 25, 50, 100, 500, 1000, -1], [10, 25, 50, 100, 500, 1000, "Semua"]]
    });
  </script>
</body>
</html>
