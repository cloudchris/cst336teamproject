<?php
session_start();
include '../../includes/dbConnection.php';
$conn = getDatabaseConnection("bestbuy");

function listProducts() {
    global $conn;
    $sql = "SELECT productName, type, price
            FROM products
            ORDER BY productName";
            
    $statement = $conn->prepare($sql);
    $statement->execute();
    $products = $statement->fetchAll(PDO::FETCH_ASSOC);
    return $products;
}

function getDepartments() {
    global $conn;
    $sql = "SELECT type
            FROM department
            ORDER BY type";
    
    $statement = $conn->prepare($sql);
    $statement->execute();
    $products = $statement->fetch(PDO::FETCH_ASSOC);
       
}

function getProdByDept(){
    
}

function getEmployee() {
    
}

?>
 

<!DOCTYPE html>
<html>
    <head>
        <title>Team Project: Bestbuy Store</title>
        <link rel="stylesheet" href="./css/stylesheet.css" type="text/css">
        
    </head>
</html>