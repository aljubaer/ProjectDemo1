<?php

    require "init.php";

    $name = "jubaer";
    $id = "23";
    $passwd = "1";
    $email = "j@gmail.com";

    $sql_query = "SELECT name from hello WHERE name = '$name'
                    AND id = '$id'
                    AND password = '$passwd';";

    $result = mysqli_query($connection, $sql_query);
    if (mysqli_num_rows($result) > 0){
        $row = mysqli_fetch_assoc($result);
        $name = $row["name"];
        echo "$name";
    }else {
        echo "Error";
    }

?>