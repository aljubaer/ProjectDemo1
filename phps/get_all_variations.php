<?php


	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$db = "project_demo1";
	$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
	$crop_name = $_POST["crop_name"];
	$query = "select * FROM `crop_class` WHERE `crop_name` = '$crop_name'";
	$res = mysqli_query($conn, $query);


	// convert to JSON

	$result = array();

	while($row = mysqli_fetch_array($res)){
		array_push($result,array(
			'crop_name'=>$row['crop_name'],
			'crop_variation'=>$row['crop_variation'],
			'crop_class'=>$row['crop_class']
		));
	}
	echo json_encode(array('result'=>$result));		

	return $result;

?>