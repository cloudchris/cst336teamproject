<?php
session_start();

 if (!isset($_SESSION['cart'])) {
     $_SESSION['cart'] = array();  //initializing session variable
  }
  
    $cart = $_GET['cart'];
    foreach($cart as $element )
    {   
        if (!in_array($element, $SESSION['cart'])) { //avoid duplicate device Ids
       $_SESSION['cart'][] = $element;
        }
        //    echo $element . "<br/>";
    }

    echo "Your items: <br/>";
    
    foreach($_SESSION['cart'] as $element ) {
        echo $element . "<br/>";
    }

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Your Cart</title>
        <link rel="stylesheet" href="./css/stylesheet.css" type="text/css"> 
    </head>

<br />
<form>
<input type="submit" value="Check Out" />
</form>
</html>