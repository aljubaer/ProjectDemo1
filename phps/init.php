<?php

    $db_name = "hello";
    $mysql_user = "root";
    $server_name = "localhost";

    $connection = mysqli_connect($server_name, $mysql_user, "", $db_name);

    if(!$connection){
        echo "Connection not successful\n";
    }
    else {
        echo "Connection successful\n";
    }

?>