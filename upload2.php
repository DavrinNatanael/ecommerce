<?php
include_once "conn.php";
//Getting the server ip
$server_ip = gethostbyname(gethostname());
//creating the upload url
$upload_url = 'http://'.$server_ip.'/ecommerce/assets/images/user/';

//response array
	$response = array();
  $username = $_POST['user'];
	$temp = explode(",",$username);
	$user = $temp[0];
	$trans = $temp[1];
	$status = $temp[2];
	// $trans_id = $_POST['trans_id'];
  //getting file info from the request
  $fileinfo = pathinfo($_FILES['image']['name']);
  //getting the file extension
  $extension = '.'.$fileinfo['extension'];
  $file_url = $user.time();
  $file_path = 'assets/images/komplain/' . $file_url . $extension;
  $uploadPath = 'assets/images/komplain/';
  $result = array("success" => $_FILES["image"]["name"]);
  try{
  				//saving the file$sourceProperties = getimagesize($fileName);
          $fileName = $_FILES['image']['tmp_name'];
					// $fileName = $file_url;
          $sourceProperties = getimagesize($fileName);
          $fileExt = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
          $uploadImageType = $sourceProperties[2];
          $sourceImageWidth = $sourceProperties[0];
          $sourceImageHeight = $sourceProperties[1];
          switch ($uploadImageType) {
             case IMAGETYPE_JPEG:
                 $resourceType = imagecreatefromjpeg($fileName);
                 $imageLayer = resizeImage($resourceType,$sourceImageWidth,$sourceImageHeight);
                 imagejpeg($imageLayer,$uploadPath.$file_url."_thumb".'.'. $fileExt);
                 break;

             case IMAGETYPE_GIF:
                 $resourceType = imagecreatefromgif($fileName);
                 $imageLayer = resizeImage($resourceType,$sourceImageWidth,$sourceImageHeight);
                 imagegif($imageLayer,$uploadPath.$file_url."_thumb".'.'. $fileExt);
                 break;

             case IMAGETYPE_PNG:
                 $resourceType = imagecreatefrompng($fileName);
                 $imageLayer = resizeImage($resourceType,$sourceImageWidth,$sourceImageHeight);
                 imagepng($imageLayer,$uploadPath.$file_url."_thumb".'.'. $fileExt);
                 break;

             default:
                 $imageProcess = 0;
                 break;
         }

          // File successfully uploaded
  				//adding the path and name to database

  				if(move_uploaded_file($_FILES['image']['tmp_name'],$file_path)){
            $sql =  "UPDATE komplain SET foto='$file_url', foto_type='$extension', status='$status' WHERE user = '$user' AND trans_id = $trans";
            mysqli_query($conn,$sql);
						mysqli_query($conn, "UPDATE transaksi set status='5' WHERE id_trans=$trans");
            $response['message'] = 'File uploaded successfully!';
		        $response['status'] = 'success';
		        $response['file_path'] = $upload_url."/ecommerce". $file_url . $extension;
  				}
  			//if some error occurred
  }catch(Exception $e){
          $response['status'] = 'fail';
		      $response['message'] = $e->getMessage();
  }
echo mysqli_error($conn);
echo json_encode($response, JSON_PRETTY_PRINT);

function resizeImage($resourceType,$image_width,$image_height) {
    $resizeWidth = 250;
    $resizeHeight = 250;
    $imageLayer = imagecreatetruecolor($resizeWidth,$resizeHeight);
    imagecopyresampled($imageLayer,$resourceType,0,0,0,0,$resizeWidth,$resizeHeight, $image_width,$image_height);
    return $imageLayer;
}
