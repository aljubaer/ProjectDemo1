<?php

	function getAllCrops(){
		require_once("initialize.php");
		$conn = initialize();
		$query = "SELECT distinct `crop_name` FROM `crop_class` ORDER BY `crop_name`;";
		$res = mysqli_query($conn, $query);

		$crops = array();
		while($row = mysqli_fetch_assoc($res)){

			//array_push($crops, $row['crop_name']);
			array_push($crops, array("crop_name"=>$row['crop_name']));
		}
		$json = json_encode(array('result'=>$crops));

		echo $json;

		return $json;


	}
	//No Parameters
	$json = getAllCrops();
	//echo $json."<br>";
	return $json;



?>