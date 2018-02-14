<?php

    require "init.php";

    $name = $_POST["name"];
    $id = $_POST["id"];
    $passwd = $_POST["password"];
    $email = $_POST["email"];

    $sql_query = "insert into ok (name,id,password,email) values('$name','$id','$passwd','$email');";

    if (mysqli_query($connection, $sql_query)){
        echo "Data inserted\n";
    }
    else {
        echo "Error!!!\n";
    }

?>