<?php
    include "class/cartegory_class.php";

    $cartegory = new cartegory;
    
    if(!isset($_GET['cartegory_id']) || $_GET['cartegory_id'] == NULL){
        echo " <scrip> windown.location = 'cartegorylist.php' </scrip>";
    }else{
        $cartegory_id = $_GET['cartegory_id'];
    }

    $delete_cartegory = $cartegory -> delete_cartegory($cartegory_id);
    
?>