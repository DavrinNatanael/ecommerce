<?php
// include 'conn.php';
header('Content-Type: application/json');
class Algo{
	var $id_users;
 var $id_produk;
 var $kat_id;
 var $umur;
 var $rating;
 var $nrating;
 var $rata;
 var $kata;
 var $judul_produk;
 var $slug_produk;
 var $foto;
 var $foto_type;
 var $harga_diskon;
 var $harga_normal;

 function __construct($id_users,$id_produk,$kat_id,$umur,$rating,$nrating,$rata,$kata,$judul_produk,$slug_produk,$foto,$foto_type,$harga_diskon,$harga_normal)
 {
	$this->id_users = $id_users;
  $this->id_produk = $id_produk;
	$this->kat_id = $kat_id;
  $this->umur = $umur;
  $this->rating = $rating;
  $this->nrating = $nrating;
	$this->rata = $rata;
	$this->kata = $kata;
	$this->judul_produk = $judul_produk;
	$this->slug_produk = $slug_produk;
	$this->foto = $foto;
	$this->foto_type = $foto_type;
	$this->harga_diskon = $harga_diskon;
	$this->harga_normal = $harga_normal;


 }
}
$conn = new mysqli("localhost", "root", "", "skripsi");
if ($conn->connect_errno) {
  die("ERROR : ->".$conn->connect_error);
}
$sql = mysqli_query($conn,"SELECT id_produk,id_users,kat_id,umur,rating,judul_produk,slug_produk,foto,foto_type,harga_diskon,harga_normal FROM rating JOIN produk ON rating.item_id = produk.id_produk JOIN users ON rating.id_users = users.id");
$data = [];
$i=0;


echo mysqli_error($conn);
while($row = mysqli_fetch_object($sql)) {
	$a = $row->id_produk;
	$b = $row->kat_id;
	$c = $row->id_users;
	$d = $row->umur;
	$f = $row->rating;
	$jdl = $row->judul_produk;
	$slug = $row->slug_produk;
	$foto = $row->foto;
	$foto_type = $row->foto_type;
	$hr1 = $row->harga_diskon;
	$hr2 = $row->harga_normal;

	if($d > 11 && $d < 26)
	{
		$e = "teen";
	}
	else
	{
		$e = "adult";
	}

	if($f > 2)
	{
		$g = "good";
	}
	else
	{
		$g="bad";
	}
	$cr = mysqli_query($conn, "SELECT AVG(rating) FROM rating WHERE item_id='$a'");
  list($h) = mysqli_fetch_array($cr);


	 if ($h > 0) {
	 	$k = "good";
	 }
	 else {
		 $k = "bad";
	 }
	 $data[$i] = new Algo($c,$a,$b,$e,$g,$f,$h,$k,$jdl,$slug,$foto,$foto_type,$hr1,$hr2);

	$i++;
}
$json = json_encode($data,JSON_PRETTY_PRINT);
echo $json;
