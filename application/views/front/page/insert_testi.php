<?php
$conn = new mysqli("localhost", "root", "", "ecommerce");
if ($conn->connect_errno) {
  die("ERROR : ->".$conn->connect_error);
}
$item = $_POST['prod'];
$user = $_POST['usid'];
$rating = $_POST['rate'];
$testi = $_POST['testi'];
$trans = $_POST['trans'];
$date = date("Y/m/d");
$ratestat = 1;

$s = mysqli_query($conn, "SELECT id_rating FROM rating WHERE item_id=$item AND id_users=$user");
list($id)= mysqli_fetch_array($s);
if(mysqli_num_rows($s)>0){
	$si = mysqli_query($conn,"UPDATE rating SET rating='$rating', date_crate='$date', testi='$testi' WHERE id_rating='$id'");
	if($si)
		echo "1";
}
else {
	$sa = mysqli_query($conn, "INSERT INTO rating(rating,testi,item_id,id_users,date_crate) VALUES ('$rating','$testi','$item','$user','$date')");
	if($sa)
		echo "0";
}
mysqli_query($conn,"UPDATE transaksi_detail SET rating_status='1' WHERE produk_id='$item' AND user='$user' AND trans_id='$trans'");
echo mysqli_error($conn);

header("Location: http://localhost/ecommerce/page/pending/$trans");
die();
