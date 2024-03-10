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
        $model = $_POST['model'];
        $year = $_POST['year'];
        $oid = $_POST['oid'];
        $cartype = $_POST['cartype'];
        $dr = $_POST['dr'];
        $wr = $_POST['wr'];
        $availdate = $_POST['availdate'];
        $ccat = $_POST['ccat'];


        $sqlquery = "INSERT INTO CAR(model,year,ownerId,availableStartDate) VALUES('$model',$year,$oid,'$availdate');";

        if (mysqli_query($conn, $sqlquery)) {
            $user_id = $conn->insert_id;
            $sqlquery1 = "INSERT INTO CAR_TYPE VALUES($user_id,'$cartype',$dr,$wr,'$ccat');";
            if (mysqli_query($conn, $sqlquery1)) {
                header('Location: carDetails.php');
            }
        } else {
            echo "Error: " . $sqlquery . "<br>" . mysqli_error($conn);
        }
    }
    mysqli_close($conn);
?>