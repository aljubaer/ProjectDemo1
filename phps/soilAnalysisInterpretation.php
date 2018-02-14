<?php
	
	function getUpperLimit($nutrient, $cropName, $interpretation){
		require_once('initialize.php');
		$conn = initialize();
		$query = "SELECT `upper_limit` FROM `soil_analysis_interpretation` WHERE `nutrient` = '$nutrient' AND `crop_name` = '$cropName' and `interpretation` = '$interpretation' " ;
	
		//echo $query.'<br>';

		$res = mysqli_query($conn, $query);
		/*while($row = mysqli_fetch_assoc($res)){
			echo $row['Interpretation']."<br>";
		}*/
		$row = mysqli_fetch_assoc($res);

		return $row['upper_limit'];
	}
	function getInterval($nutrient, $cropName, $interpretation){ //Ci
		
		require_once('initialize.php');
		$conn = initialize();
		$query = "SELECT `interval` FROM `soil_analysis_interpretation` WHERE `nutrient` = '$nutrient' AND `crop_name` = '$cropName' and `interpretation` = '$interpretation' " ;
	
		//echo $query.'<br>';

		$res = mysqli_query($conn, $query);
		/*while($row = mysqli_fetch_assoc($res)){
			echo $row['Interpretation']."<br>";
		}*/
		$row = mysqli_fetch_assoc($res);

		return $row['interval'];
	}
	//echo getUpperLimit('N', 'Wheat (Irrigated)', 'Optimum').' got <br>';
	

?>