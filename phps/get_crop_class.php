<?php

	function getCropClass($cropName, $variationName){
		require_once("initialize.php");
		$conn = initialize();
		$query = "SELECT `crop_class` FROM `crop_class` WHERE `crop_name` = '$cropName' 
					AND `crop_variation` = '$variationName'";

		$res = mysqli_query($conn, $query);

		$row = mysqli_fetch_assoc($res);

		return $row['crop_class'];

		/*

		//To print out the answer
		$crop = array();
		while($row = mysqli_fetch_assoc($res)){
			echo $row['class']."<br>";
			array_push($crop, $row['class']);
		}
		$json = json_encode($crop);
		echo $json."<br>";
		return $json;
		//All information (crop name and class including variation name) will be returned
		//As variation name is the primary key only one row will be returned.
		*/

	}

	//$variationName = $_POST["variation"];
	//$cropClass = getCropClass("Boro rice", "BRRI dhan29");
	//echo $cropClass;
	//return $cropClass;

?>