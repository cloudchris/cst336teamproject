<?php
session_start();
include '../../includes/dbConn.php';
$conn = getDatabaseConnection("bestbuy");

if($conn->connect_error){
        die("Connection to database failed: " . $conn->connect_error);
    }

function listProducts() {
    global $conn;
    $sql = "SELECT productName, type, price
            FROM products";
            
    if (isset($_GET['submit'])){
            //form has been submitted

        $namedParameters = array();    
        
        if(!empty($_GET['productName'])){
                        //name has been selected
                        
                        $sql = $sql . " AND productName = :productName";
                        
                        $namedParameters[':productName'] = $_GET['productName'];
                    }
        
        if(isset($_GET['inputForm'])) {
            if($_GET['orderBy'] == "nameASC") {
                $sql .= " ORDER BY productName ASC";
            } else if($_GET['orderBy'] == "nameDSC") {
                $sql .= " ORDER BY productName DESC";
            } else if($_GET['orderBy'] == "priceLow") {
                $sql .= " ORDER BY price ASC";
            } else if($_GET['orderBy'] == "priceHigh") {
                $sql .= " ORDER BY price DESC";
            }
        }
    }
            
    $statement = $conn->prepare($sql);
    $statement->execute();
    $products = $statement->fetchAll(PDO::FETCH_ASSOC);
   
    foreach($products as $product) {
        echo $prod['productName'] . " - ". $record['type'] .  " - ". $record['price'] . "<br/> ";
    }
   
    return $products;
}

function getDepartments() {
    global $conn;
    $sql = "SELECT deptName
            FROM department
            ORDER BY deptName";
    
    $statement = $conn->prepare($sql);
    $statement->execute();
    $depts = $statement->fetch(PDO::FETCH_ASSOC);
    
    foreach($depts as $dept) {
        echo $dept['deptName'] . "<br/> ";
    }
    return $dept;
       
}

function getProdByDept(){
    global $conn;
    $sql = "SELECT productName, type, deptName
            FROM products a
            JOIN department b ON a.deptId = b.deptId
            ORDER BY deptName";
    
    $statement = $conn->prepare($sql);
    $statement->execute();
    $prodByDept = $statement->fetch(PDO::FETCH_ASSOC);            

    foreach($prodByDept as $prod) {
        echo $prod['productName'] . " - ". $record['type'] .  " - ". $record['deptName'] . "<br/> ";
    }

    return $prodByDept;
}

function getEmployee() {
    global $conn;
    $sql = "SELECT lastName, firstName, deptName 
    FROM employees e
    LEFT JOIN department d ON e.deptId=d.deptId"; 
    
    $statement = $conn->prepare($sql);
    $statement->execute();
    $employees = $statement->fetch(PDO::FETCH_ASSOC);
    
    print_r($employees);
    return $employees;
}

?>
 

<!DOCTYPE html>
<html>
    <head>
         <style><link rel="stylesheet" href="./css/stylesheet.css" type="text/css"> </style>
        <title>Team Project: Bestbuy Store</title>
        
    </head>
    <body>
        <main>
            <h1>Welcome to Bestbuy!</h1>
            <form method="POST">
                
                <h2><strong>Sort Products By: </strong></h2>
                    <select name="orderBy">
                        <option value="nameASC">Product(A-Z)</option>
                        <option value="nameDSC">Product(Z-A)</option>
                        <option value="priceLow">Price: Low to Highest</option>
                        <option value="priceHigh">Price: High to Lowest</option>
                    </select>
                
                <br /><br />    
                <h2><strong>Filter Products By Type: </strong></h2>
                        <input type="radio" name="filterType" value="Cell Phones" id="Cell"/><label for="Cell">Cell Phones</label>
                        <input type="radio" name="filterType" value="Audio" id="Aud"/><label for="Aud">Audio</label>
                        <input type="radio" name="filterType" value="cameras" id="Cam"/><label for="Cam">Cameras</label>
                        <input type="radio" name="filterType" value="Computers" id="Comp"/><label for="Comp">Computers</label>
                        <input type="radio" name="filterType" value="Mus&Mov" id="M&M"/><label for="M&M">Music & Movies</label>
                        <input type="radio" name="filterType" value="games" id="Games"/><label for="Game">Video Games</label>
                        <input type="radio" name="filterType" value="Appliances" id="App"/><label for="App">Appliances</label>
                        <input type="radio" name="filterType" value="health&fit" id="H&F"/><label for="H&F">Health & Fitness</label>
                
                <input type="submit" name ="submit" value="Search"/>
             
             <?=listProducts()?>
             <?=getDepartments()?>
             <?=getEmployees()?>

        </main>
    </body>
</html>