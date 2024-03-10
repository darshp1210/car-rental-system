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
        <h2>Add new car</h2>
        <form class="form-horizontal" action="addNewCar.php" method="post">
            <div class="form-group">
                <label class="control-label col-sm-2" for="model">Model name:</label>
                <div class="col-sm-10">
                    <input type="model" class="form-control" id="model" placeholder="Enter model here.." name="model">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="year">Year:</label>
                <div class="col-sm-10">
                    <input type="year" class="form-control" id="year" placeholder="Enter year here.." name="year">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="oid">Owner Id:</label>
                <div class="col-sm-10">
                    <input type="oid" class="form-control" id="oid" placeholder="Enter your owner ID here.." name="oid">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="cartype">Car type:</label>
                <div class="col-sm-10">
                    <select class="form-control" name="cartype">
                        <option>SUV</option>
                        <option>MEDIUM</option>
                        <option>LARGE</option>
                        <option>COMPACT</option>
                        <option>TRUCK</option>
                        <option>VAN</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="dr">Daily rates:</label>
                <div class="col-sm-10">
                    <input type="dr" class="form-control" id="dr" placeholder="Enter Daily rates here.." name="dr">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="wr">weekly rates:</label>
                <div class="col-sm-10">
                    <input type="wr" class="form-control" id="wr" placeholder="Enter Weekly rates here.." name="wr">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="availdate">Available start date</label>
                <div class="col-sm-10">
                    <input type="availdate" class="form-control" id="availdate" placeholder="Enter available start date here.." name="availdate">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="ccat">Car category:</label>
                <div class="col-sm-10">
                    <select class="form-control" name="ccat">
                        <option>LUXURY</option>
                        <option>REGULAR</option>
                    </select>
                </div>
            </div>
            <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                    <button style="background-color:#228B22" type="submit" class="btn btn-default" name="submit">Submit</button>
                </div>
            </div>
        </form>
    </div>

</body>
</html>

</body>