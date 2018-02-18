<?php

	$crop_name = $_POST["crop_name"];
	$crop_variation = $_POST["crop_variation"];
	$texture = $_POST["texture"];
	$_n = $_POST["N"];
	$_p = $_POST["P"];
	$_k = $_POST["K"];
	$_s = $_POST["S"];
	$_zn = $_POST["Zn"];
	$_b = $_POST["B"];


	function getNutrient($Uf, $Ci, $Cs, $St, $Ls){
		if($Uf === 0)return 0.0;
		$Fr = $Uf - ($Ci/$Cs) * ($St - $Ls);
		return $Fr;
	}



	function calc($texture, $nutrient, $cropName, $St){
		//echo $nutrient.' '.$aez.' '.$cropPattern.' '.$cropName."<br>";
		require_once('soilTestValueInterpretation.php');
		$interpretation = getInterPretation($nutrient, $St, $texture);
		//echo $interpretation." int <br>";

		$Cs = getRange($nutrient, $texture);
		$Ls = getLowerLimit($nutrient, $interpretation, $texture);

		require_once('soilAnalysisInterpretation.php');
		$Uf = getUpperLimit($nutrient, $cropName, $interpretation);
		$Ci = getInterval($nutrient, $cropName, $interpretation);
		//echo $Uf."  uf ". $Ci. " Ci ". $Cs." Cs ".$Ls." Ls ".$St." St <br>";
		$val = getNutrient($Uf, $Ci, $Cs, $St, $Ls);
		return $val;

	}

	function factory(){
		
		$string = "N P K S Zn B";
		$nutrients = explode(" ", $string);
		$soilValue = array(.1, 18, .15, 10, 1.0, 0.2);
		$size = sizeof($nutrients);
		$json = array();
		for($i = 0; $i < $size; $i++){
			//echo $nutrients[$i]."<br>";
			$ans = calc('A', $nutrients[$i], 'Wheat (Irrigated)',$soilValue[$i]);
			//echo $ans."<br>";
			
			//$json[$nutrients[$i]] = $ans;

			array_push($json, array($nutrients[$i]=>$ans));
		}
		$jsonFile = json_encode(array('result'=>$json));
		return $jsonFile;	
	}

	/*
	
	function createHTML($jsonFile){
		echo "
		<body style = 'background-color : white;'>
		<h1 style =  'text-align:center; color : blue; '> Nutrient Requirements </h1>"; 
		echo "<table border = '4px solid' align = 'center' style = 'font-size:25px' width = '60%' cellspacing = '0px' cellpadding = '10px'>
			<tr style = 'color: red; text-align: center ; padding : 5px 5px 5px 5px;'> <th width = '60%'> Nutrient Name </th> <th width = '40%'> Amount (Kg/ha) </th> </tr>
		";
		$obj = json_decode($jsonFile, true);
		$string = "N P K S Zn B";
		$string2 = "Nitrogen Phosphorus Potassium Sulphur Zinc Boron";
		$name = explode(" ", $string2);
		$nutrients = explode(" ", $string);
		$size = sizeof($nutrients);
		for($i = 0; $i < $size; $i++){
			$z = number_format(doubleval($obj[$nutrients[$i]]), 2);
			//$z = number_format(doubleval('178880.5'), 2);
			echo "<tr style = 'text-align: center; color : black;'>
					<td>$name[$i] </td> <td> $z </td>
				  </tr>
			";
		}
		echo "</table> 
		<br>
		</body>";

		
	}
	*/
	
	//calc('C', 'N', 'Wheat (Irrigated)', .1);
	$jsonFile = factory();
	//createHTML($jsonFile);
	echo $jsonFile;

	

?>