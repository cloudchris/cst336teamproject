<!DOCTYPE html>
<html>
    <head>
        <h1>Your Cart</h1>
        <link rel="stylesheet" href="css/stylesheet.css" type="text/css">
    </head>
    <body>
        <?=cart()?>
    </body>
</html>

<?php
function cart(){
    session_start();
    if(!isset($_SESSION['cart'])){
        $_SESSION['cart'] = array(); 
    }
    
    $cart = $_GET['cart'];
        if(!empty($cart))
        {
            foreach($cart as $element )
            {   
                if (!in_array($element, $_SESSION['cart'])) { //avoid duplicate device Ids
                   $_SESSION['cart'][] = $element;
                } 
            }
            
            foreach($_SESSION['cart'] as $element ) {
                echo "<p>" . $element . "</p>";
            }   
        }
        else{
            header('Location: index.php');
            
        }
}
?>

