<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>My Library</title>
  <link href="leafstyle.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link id="tab-icon" rel="shortcut icon" type="image/x-icon" href="Images/leaf_icon.png" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <style>
    #tableWrapper {
      text-align: center;
    }

    #searchResult {
      display: inline-block;
    }
  </style>
</head>

<body>
  <div class="topnav">
    <a class="active" href="mylibrary.php">Home</a>
    <a href="store.php">Store</a>
    <a href="recommendations.php">My Recommendations</a>
    <img src="https://cdn.discordapp.com/attachments/1174578118892199976/1180729973183627345/Untitled_design.png?ex=657e7b7a&is=656c067a&hm=b661541f897b5af28219f34ab4437050e9045477311166cd95be3d50254a3016&" height=65px width=200px>
    <div class="topnav-right">
      <a href="logout.php">Log Out</a>
    </div>
  </div>

  <h1 class="pagetitle">My Library</h1>

  <?php 
    // Database Connection
    $servername = "localhost";
    $user = "root";
    $pass = "";
    $database = "Leaflet";

    session_start();
    if (!isset($_SESSION['username'])) {
      header("Location: login.php");
      exit();
    }
    $sessionid = $_SESSION['user_id'];
    $username = $_SESSION['username'];

    $conn = new mysqli($servername, $user, $pass, $database);
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve books owned by the session user
    $sql = "SELECT * FROM book_info WHERE book_id IN (SELECT book_id FROM library WHERE user_id='{$sessionid}') ORDER BY title";
    $result = mysqli_query($conn, $sql);

    if (!$result) {
      die("Query failed: " . mysqli_error($conn));
    }

    // Display user's library
    echo "<br><div id='tableWrapper'>";
    echo "<table id='searchResult'>";
    while ($row = mysqli_fetch_assoc($result)) {
      $counter = 0;
      echo "<tr>";
      while($counter < 4) {
        echo "<td><a href='read.php?book_id={$row['book_id']}'><img src='{$row['book_cover']}' alt='{$row['title']}' width='300' height='400'></a></td>";
        $counter = $counter + 1;
        if($row = mysqli_fetch_assoc($result)) {}
        else {break;};
      }
      echo "</tr>";
    }
    echo "</table>";
    echo "<br>";
    echo "<center><input id='topButton' type='button' value='Back to top of page' onclick='window.location.href=\"#top\"'></center>";
    echo "</div>";

    // Close database connection
    $conn->close();
  ?>
</body>

</html>