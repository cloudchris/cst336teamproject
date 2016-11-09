<!DOCTYPE html>
<html>
    <head>
        <h1>Your Cart</h1>
        <link rel="stylesheet" href="css/stylesheet.css" type="text/css">
    </head>
</html>

<?php
include '../../includes/dbConnection.php';
$conn = getDatabaseConnection("bestbuy");

if($conn->connect_error){
        die("Connection to database failed: " . $conn->connect_error);
    }
    
if(isset($_GET['prodyuctID'])){
    global $conn;
    foreach($cart as $element){
        if(!in_array($element, $SESSION['productID'])){
            $_SESSION['productID'][] = $element;
        }
        echo "<table>";
        echo"<tr><td>" . $_SESSION['productID'] . "</td></tr>";
    }
    echo "</table>";
} 


?>


