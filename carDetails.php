<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="main.css" type="text/css">
    <script type="text/javascript" src="main.js"></script>

</head>
<body style="background-color:#ADD8E6" style="height:1500px">
    <?php
    $servername = "academicmysql.mysql.database.azure.com";
    $username = "dxp2913";
    $password = "Dpat@1210";
    $dbname = "dxp2913";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }?>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">CRS</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Customer</a></li>
                <li><a href="carDetails.php">Car</a></li>
                <li><a href="rentalDetails.php">Rental</a></li>
                <li><a href="ownerDetails.php">Owners</a></li>
                <li><a href="updateRates.php">Update Rates</a></li>
            </ul>
        </div>
    </nav>
    <div class="container" style="margin-top:50px">
        <div style="display:flex; align-items:center;">
            <h2 style="margin-right:50%;">Here are our Cars:</h2>
            <button style="background-color:#FF8C00" type="button" class="btn btn-success" onclick="window.location='newCar.php'"> Add new car </button>
        </div>
        <table id="myTable">
                    <tr class="header">
                        <th style="width:12.5%;">Car ID</th>
                        <th style="width:12.5%;">Model Name</th>
                        <th style="width:12.5%;">Year</th>
                        <th style="width:12.5%;">Cart Type</th>
                        <th style="width:12.5%;">Daily Rate</th>
                        <th style="width:12.5%;">Weekly Rate</th>
                        <th style="width:12.5%;">Category</th>
                        <th style="width:12.5%;">Available Start Date</th>
                    </tr>
                    <?php
                        $sql = "select c.vehicleID,c.model,c.year,ct.Ctype,ct.dailyRate,ct.weeklyRate,ct.category,c.availableStartDate from car as c inner join car_type as ct where c.vehicleID = ct.vehicleID;";
                        $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                        ?>
                        <tr>
                            <td><?php echo $row["vehicleID"]; ?></td>
                            <td><?php echo $row["model"]; ?></td>
                            <td><?php echo $row["year"]; ?></td>
                            <td><?php echo $row["Ctype"]; ?></td>
                            <td><?php echo $row["dailyRate"]; ?></td>
                            <td><?php echo $row["weeklyRate"]; ?></td>
                            <td><?php echo $row["category"]; ?></td>
                            <td><?php echo $row["availableStartDate"]; ?></td>
                        </tr>
            <?php
            }
        }
        ?>
         </table>
    </div>

</body>
</html>

</body>