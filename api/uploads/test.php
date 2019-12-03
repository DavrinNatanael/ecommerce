<?php
header('Content-Type: application/json');
class Algo{
	var $id_users;
 var $id_produk;
 var $umur;
 var $rating;
 var $nrating;
 var $rata;
 var $kata;
 function __construct($id_users,$id_produk,$umur,$rating,$nrating,$rata,$kata)
 {
	 $this->id_users = $id_users;
  $this->id_produk = $id_produk;
  $this->umur = $umur;
  $this->rating = $rating;
  $this->nrating = $nrating;
	$this->rata = $rata;
	$this->kata = $kata;
 }
}
$conn = new mysqli("localhost", "root", "", "testalgo");
// if ($conn->connect_errno) {
//   die("ERROR : ->".$conn->connect_error);
// }
$sql = mysqli_query($conn,"SELECT id_produk,id_users,umur,rating FROM rating2");
$data = [];
$i=0;


echo mysqli_error($conn);
while($row = mysqli_fetch_object($sql)) {
	$a = $row->id_produk;
	$c = $row->id_users;
	$d = $row->umur;
	$f = $row->rating;
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
	$cr = mysqli_query($conn, "SELECT AVG(rating) FROM rating2 WHERE id_produk='$a'");
  list($h) = mysqli_fetch_array($cr);


	 if ($h > 0) {
	 	$k = "good";
	 }
	 else {
		 $k = "bad";
	 }
	 $data[$i] = new Algo($c,$a,$e,$g,$f,$h,$k);

	$i++;
}
$json = json_encode($data,JSON_PRETTY_PRINT);
echo $json;
