<?php
ini_set('display_errors', 1);
require 'config.inc.php';

$q = "
	SELECT id                 id,
		   img_url            img_url, 
	       status             status
	  FROM products
	 LIMIT 20000
	";

$result           = $conn->query($q);
$pid_exist        = array();
$pid_not_exist    = array();

try {
	if ($result->num_rows > 0) {
	  while($rows = $result->fetch_assoc()) {
	    if (file_exists($rows['img_url'])) {
	    	$pid_exist[]     = $rows['id'];
		} else {
			$pid_not_exist[] = $rows['id'];
		}
	  }
	} else {
		throw new Exception('Record not found for update!');
	}
} 

catch (Exception $e) {
	echo $e->getMessage();
}

$p_img_exist_id  = implode(',', $pid_exist);
$q_exist         = "UPDATE products SET status = 1 WHERE id IN($p_img_exist_id)";
$conn->query($q_exist);
echo sizeof($pid_exist) . ' Row(s) updated for existing image' . '<br>';

$p_img_not_exist_id  = implode(',', $pid_not_exist);
$q_not_exist         = "UPDATE products SET status = 0 WHERE id IN($p_img_not_exist_id)";
$conn->query($q_not_exist);
echo sizeof($pid_not_exist) . ' Row(s) updated for image not existing';

$conn->close();
?>