<?php
	function initialize(){
		$dbhost = "localhost";
		$dbuser = "root";
		$dbpass = "";
		$db = "project_demo1";

		$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
		return $conn;

	}


?>