<?php
require_once 'config.php';
include_once 'dbConnect.php';
$sqlstat = "CREATE EVENT `testevent` ON SCHEDULE EVERY 7 DAY STARTS '2019-08-24 00:00:00' ENDS '2019-11-30 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `transaksi` SET `status` = '4' WHERE `status` = '3'";
$insertstat = $db->query($sqlstat);
die();
