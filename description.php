<?php
include '../../includes/dbConnection.php';
$conn = getDatabaseConnection("bestbuy");

if($conn->connect_error){
        die("Connection to database failed: " . $conn->connect_error);
    }
    
if(isset($_GET['productId'])){
    global $conn;
    $sql = "SELECT productName, Description
    FROM products
    WHERE productId = :productId";
                   
  $namedParameters[':productId'] = $_GET['productId'];
                  
        $statement= $conn->prepare($sql); 
        $statement->execute($namedParameters);
        $record = $statement->fetch(PDO::FETCH_ASSOC);
      
      
    echo $record['productName'] . " " . $record['Description'];
      
} 





?>