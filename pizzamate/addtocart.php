<?php
@session_start();
if(isset($_SESSION['cart'])){
	if(isset($_GET['deletecart'])){
			$id = $_GET['deletecart'];
			for($i = 0; $i < count($_SESSION['cart']);$i++){
			if($_SESSION['cart'][$i]['id'] == $id){
				$_SESSION['cart'][$i]['count'] = $_SESSION['cart'][$i]['count'] - $_SESSION['cart'][$i]['count'];				
			}
		}
	}
}
if(isset($_GET['addcart'])){
    $id = $_GET['addcart'];
    if(isset($_SESSION['cart']) && is_array($_SESSION['cart'])){
        $count = count ($_SESSION['cart']);
        $flag = false;
        for($i = 0; $i < $count; $i++){
            if ($_SESSION['cart'][$i]["id"] == $id){
                $_SESSION['cart'][$i]["count"] += 1;
                $flag = true;
                break;
            }
        }
        if($flag == false){
            $_SESSION['cart'][$count]["id"] = $id;
            $_SESSION['cart'][$count]["count"] = 1;
        }
    }
    else{
        $_SESSION['cart'] = array();
        $_SESSION['cart'][0]["id"] = $id;
        $_SESSION['cart'][0]["count"] = 1;
    }
	//header("Location: products.php");
}


if(isset($_POST['clear'])){
	unset($_SESSION['cart']);
}

?>