<?php

	function getAllTextures(){
		require_once("initialize.php");
		$conn = initialize();
		$query = "SELECT DISTINCT `texture` FROM `texture_class`;";
		$res = mysqli_query($conn, $query);

		$texture = array();
		while($row = mysqli_fetch_assoc($res)){

			//array_push($crops, $row['crop_name']);
			array_push($texture, array("texture"=>$row['texture']));
		}
		$json = json_encode(array('result'=>$texture));

		echo $json;

		return $json;


	}
	//No Parameters
	$json = getAllTextures();
	//echo $json."<br>";
	return $json;



?>