<?php
// $conn = new mysqli("localhost", "root", "", "ecommerce");
$conn = new mysqli("localhost", "root", "", "ecommerce");
if ($conn->connect_errno) {
  die("ERROR : ->".$conn->connect_error);
}
