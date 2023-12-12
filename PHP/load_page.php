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
  <div class="topnav">  
    <a class="active" href="mylibrary.php">Home</a>
    <a href="store.php">Store</a>
    <a href="recommendations.php">My Recommendations</a>
    <img src="https://cdn.discordapp.com/attachments/1174578118892199976/1180729973183627345/Untitled_design.png?ex=657e7b7a&is=656c067a&hm=311166cd95be3d50254a3016&" height=65px width=200px>
    <div class="topnav-right">
      <a href="logout.php">Log Out</a>
    </div>
  </div>

  <?php
  // Include the necessary database connection code here

  // Get book_id and page_number from the Ajax request
  $book_id = $_GET['book_id'];
  $page_num = $_GET['page_num'];

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

  // Get content based on book_id and page_number
  $page_query = "select * from book_content where book_id=$book_id and page_num=$page_num";

  $result_page_query = mysqli_query($conn, $page_query);

  // Check if the query was successful
  if (!$result_page_query) {
    die("Query failed: " . mysqli_error($conn));
  }

  // Fetch content
  while ($row = mysqli_fetch_assoc($result_page_query)) {
    echo "<div class='readerClass'>{$row['content']}</div>";
  }

  $conn->close();
?>


  

</body>

</html>
