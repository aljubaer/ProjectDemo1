<?php
	

	function getInterpretation($nutrient, $value, $textureClass){
		
		require_once('initialize.php');
		$conn = initialize();
		$query = "SELECT `interpretation` FROM `soil_test_values_interpretation` WHERE `nutrient` = '$nutrient' AND `lower_limit` <= $value AND `upper_limit` >= $value AND `texture_class` = '$textureClass' " ;
	
	//	echo $query.'<br>';

		$res = mysqli_query($conn, $query);
		/*while($row = mysqli_fetch_assoc($res)){
			echo $row['Interpretation']."<br>";
		}*/
		$row = mysqli_fetch_assoc($res);

		return $row['interpretation'];
	}

	function getRange($nutrient, $textureClass){ //Cs
		
		require_once('initialize.php');
		$conn = initialize();
		$query = "SELECT `upper_limit` FROM `soil_test_values_interpretation` WHERE `nutrient` = '$nutrient' AND `texture_class` = '$textureClass' AND `interpretation` = 'Very Low' "; //This is the range

		$res = mysqli_query($conn, $query);
		$row = mysqli_fetch_assoc($res);

		return $row['upper_limit']; 
	}
	//echo getInterpretation('N', .093, 'C').' got <br>';
	
	function getLowerLimit($nutrient, $interpretation, $textureClass){
		require_once('initialize.php');
		$conn = initialize();
		$query = "SELECT `lower_limit` FROM `soil_test_values_interpretation` WHERE `nutrient` = '$nutrient' AND `texture_class` = '$textureClass' AND `Interpretation` = '$interpretation' " ;
		//echo $query."S <br>";
		$res = mysqli_query($conn, $query);
		$row = mysqli_fetch_assoc($res);
		//echo $row['Lower limit']." lll<br>";

		return $row['lower_limit']; 
	
	}

?>