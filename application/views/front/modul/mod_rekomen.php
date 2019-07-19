  <?php if(isset($_SESSION['identity']) && $_SESSION['usertype'] == '2'){ ?>
		<input type="hidden" id="user" value="<?php echo $profil->id?>">
    <div id="show_data">
    </div>
  <?php } else { ?>
    <p>Belum ada rekomendasi</p>
    <button type="button" class="btn btn-primary" onclick="window.location.href='<?php echo base_url('auth/login'); ?>'">Login untuk melihat rekomendasi anda</button>
  <?php } ?>
