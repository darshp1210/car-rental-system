<?php
    $servername = "academicmysql.mysql.database.azure.com";
    $username = "dxp2913";
    $password = "Dpat@1210";
    $dbname = "dxp2913";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    if(isset($_POST['submit'])){
        $cname = $_POST['name'];
        $phno = $_POST['phno'];
        $type = $_POST['ctype'];
        $state = $_POST['state'];

        $sqlquery = "INSERT INTO CUSTOMER (name, phoneNo, cType,state) VALUES ('$cname','$phno','$type','$state')";

        echo $sqlquery;

        if (mysqli_query($conn, $sqlquery)) {
            echo "New record created successfully";
            header('Location: index.php');
        } else {
            echo "Error: " . $sqlquery . "<br>" . mysqli_error($conn);
        }
    }
    mysqli_close($conn);
?>