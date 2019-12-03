<div>
	<h1>Pembayaran Sukses</h1>
  <h4>Mohon menunggu selagi halaman anda dialihkan secara otomatis...</h4>
  <?php
  require_once 'config.php';
  include_once 'dbConnect.php';
  $kode_value = $_SESSION['kode'];
  $sqlstat = "UPDATE transaksi set status='2' where id_trans='$kode_value'";
  $insertstat = $db->query($sqlstat);
  header('Refresh: 1; URL=http://localhost/ecommerce/cart/history');
  die();
