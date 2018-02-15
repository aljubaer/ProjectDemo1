<?php

	function getCropName($variationName){
		$dbhost = "localhost";
		$dbuser = "root";
		$dbpass = "";
		$db = "hi";
		$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
		$query = "select * FROM `crop_class` WHERE variation = '$variationName'";

		$res = mysqli_query($conn, $query);
		//To print out the answer
		/*while($row = mysqli_fetch_assoc($res)){
			echo $row['crop']."<br>";
		}*/
		return $row;
		//All information (crop name and class including variation name) will be returned
		//As variation name is the primary key only one row will be returned.

	}

	$ans = getCropName("BRRI dhan29");

?>