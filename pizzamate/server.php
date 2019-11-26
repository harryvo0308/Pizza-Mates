<?php
session_start();
$servername = "localhost";
$username="root";
$password="";
$dbname="web";

$error = array();

//create connection
$conn = new mysqli($servername,$username,$password,$dbname);
//check connection
if($conn->connect_error){
    die("Connection failed: ".$conn->connect_error);
}

if(isset($_POST['Signup'])){

    $Name=$_POST["Name"];
    $Email = $_POST["Email"];
    $Password = MD5($_POST["Password"]);
    $query= $conn->prepare("INSERT INTO users (Name,Email,Password) VALUES (?,?,?)");
    $query->bind_param("sss",$Name,$Email,$Password);

    $query->execute();
    echo "<script type='text/javascript'>alert('Sign up Successfully!')</script>";
    mysqli_close($conn);
    $query->close();
    header('location: index.php'); 
}
if(isset($_POST['logout'])) {
	unset($_SESSION['Email']);
	session_destroy();
}


if(isset($_POST['Login'])){
    $Email=$_POST["email"];
    $Password=$_POST["password"];
    if(empty($Email)){
        array_push($error,"Email IS REQUIRED");
    }
	
    if(empty($Password)){
        array_push($error,"Password IS REQUIRED");
    }
	
    if (count($error) == 0){
        $Pass= md5($Password);
        $query = $conn->prepare("SELECT * FROM users WHERE Email=? AND Password=?");
        $query->bind_param("ss",$Email, $Pass);
        $query->execute();
        $result= $query->get_result();
        if(!$result->fetch_assoc()){
            array_push($error,"Incorrect email or password");
        }else{
          $_SESSION['Email']=$Email;
          $_SESSION['Success']="You are logged";
        	header('location:index.php');
        }
		
        $query->close();
    }
}

if(isset($_GET['product_id'])){

	$C_ID = $_GET["product_id"];
	$query = $conn->prepare("SELECT * FROM categories WHERE C_ID = ?");
    $query->bind_param("s",$C_ID);
    $query->execute();
    $row= $query->get_result()->fetch_assoc();
    $name = $result['C_NAME'];
    return $row;
}
?>
