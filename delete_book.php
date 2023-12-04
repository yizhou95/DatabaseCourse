
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <link href="leafletstyle.css" rel="stylesheet" type="text/css" />
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <title>eReader</title>
</head>

<body>

<?php
// Start the session
session_start();
if (!isset($_SESSION['username'])) {
  header("Location: login.php");
  exit();
}
$user_id = $_SESSION['user_id'];

// Set up connection to MySQL (adjust as needed)
$servername = "localhost";
$user = "root";
$pass = "";
$database = "Leaflet";

// Create connection
$conn = new mysqli($servername, $user, $pass, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['book_id'])){
    $book_id = $_POST['book_id'];
    
    $deleteQuery = "DELETE FROM library WHERE user_id= $user_id AND book_id=$book_id";

    $result_delete_query = mysqli_query($conn, $deleteQuery);

    if($result_delete_query){
        echo "Book deleted successfully";
    }else{
        echo $book_id;
        echo "Error deleting book: " . $conn->error;
    }

}
else{
    echo "error";
}
$conn->close();
?>


</body>

</html>