<?php $this->load->view('front/header'); ?>
<?php $this->load->view('front/navbar'); ?>

<div class="container">
	<div class="row">
    <div class="col-sm-12 col-lg-12">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
      	  <li class="breadcrumb-item"><a href="<?php echo base_url() ?>"><i class="fa fa-home"></i> Home</a></li>
      	  <li class="breadcrumb-item active">History Komplain</li>
      	</ol>
      </nav>
    </div>
		</div>
	<div class="col-sm-12"><h1>Riwayat Komplain</h1><hr>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">No</th>
						<th scope="col">Foto komplain</th>
            <th scope="col">Aksi komplain</th>
            <th scope="col">ID komplain</th>
            <th scope="col">Status</th>
						<th scope="col">Tambahan</th>
          </tr>
        </thead>
        <tbody>
        	<?php $no=1; foreach(array_reverse($komplainlist) as $kom){ ?>
					<?php if($kom->transid!=NULL){ ?>
					<tr>
						<th scope="row"><?php echo $no++; ?></th>
						<td><img width="100px" height="100px" src="<?php echo base_url('assets/images/komplain/').$kom->foto_komplain.$kom->foto_komplain_type ?>"></td>
						<?php if($kom->status==1) {?>
							<td>Barang Rusak</td>
						<?php }else if($kom->status==2){?>
							<td>Barang tidak lengkap</td>
						<?php }elseif($kom->status==3){?>
							<td>Barang tidak sesuai</td>
						<?php } elseif($kom->status==4){?>
							<td>Pengembalian Barang</td>
						<?php } else{?>
							<td>Refund</td>
						<?php } ?>
						<td><?php echo $kom->id_komplain; ?></td>
						<?php if($kom->selesai==0) {?>
							<td class="text-primary">Menunggu konfirmasi admin</td>
						<?php }else if($kom->selesai==1 && $kom->status<4){?>
							<td class="text-success"><a href="<?php echo base_url('page/komplain/').$kom->transid; ?>" class="btn btn-primary">Masukkan detail komplain anda</a></td>
						<?php }else if($kom->selesai==1 && $kom->status>3){?>
							<td class="text-success">Komplain sedang diproses admin</td>
						<?php }elseif($kom->selesai==2 && $kom->status==4){?>
							<td class="text-success">Barang telah dikirim ulang</td>
						<?php }elseif($kom->selesai==2 && $kom->status==5){ ?>
							<td class="text-success">Dana telah dikembalikan</td>
						<?php }elseif($kom->selesai==3){ ?>
							<td class="text-danger">Komplain ditolak</td>
						<?php } ?>
						<?php if($kom->status==5){ ?>
							<?php if(empty($kom->foto_rek)){ ?>
								<td>Bukti transfer belum dikirim</td>
							<?php } else{?>
								<td><img width="100px" height="100px" src="<?php echo base_url('assets/images/komplain/').$kom->foto_rek.$kom->foto_rek_type ?>"></td>
							<?php } ?>
						<?php }else{ ?>
							<td class="text-primary">Resi :
								<?php
								if(empty($kom->no_resi)){
									echo "Belum ada resi";
								}else{
									echo $kom->no_resi;
								}
								?>
							</td>
						<?php } ?>
					</tr>
					<?php } ?>
        	<?php } ?>
					</tbody>
        </table>
    </div>

  <?php $this->load->view('front/footer'); ?>
