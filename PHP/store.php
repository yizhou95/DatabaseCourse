<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <link href="leafletstyle.css" rel="stylesheet" type="text/css" />
  <title>Leaflet Store</title>
  <style>
    #infoBox {
      background-color: azure; /* Lighter box color with transparency */
      border-radius: 5px; /* Rounded corners for the box */
      padding: 10px; /* Padding inside the box */
      margin-bottom: 10px; /* Margin between each book */
    }
  </style>
</head>

<body>
  <div class="topnav">
    <a href="mylibrary.php">Home</a>
    <a class="active" href="store.php">Store</a>
    <a href="recommendations.php">My Recommendations</a>
    <img src="https://cdn.discordapp.com/attachments/1174578118892199976/1180729973183627345/Untitled_design.png?ex=657e7b7a&is=656c067a&hm=b661541f897b5af28219f34ab4437050e9045477311166cd95be3d50254a3016&" height=65px width=200px>
    <div class="topnav-right">
      <a href="logout.php">Log Out</a>
    </div>
  </div>

  <h1 class="pagetitle">Leaflet Store</h1>
  <?php
  session_start();
  if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
  }
  // Retrieve the username from the session
  $username = $_SESSION['username'];
  ?>
  <!--<h1>Welcome, <?php echo $username; ?>!</h1>-->

  <?php
  // Set up connection to MySQL
  $servername = "localhost";
  $user = "root";
  $pass = "";
  $database = "Leaflet";

  // Create connection
  $conn = new mysqli($servername, $user, $pass, $database);
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $sessionid = $_SESSION['user_id'];
  // Return books that aren't already owned by the session user
  $sql = "SELECT * FROM book_info WHERE book_id NOT IN(SELECT book_id FROM library WHERE user_id='{$sessionid}') ORDER BY title";
  $result = mysqli_query($conn, $sql);
  if (!$result) {
    die("Query failed: " . mysqli_error($conn));
  }
  // Iterate through rows of results
  echo "<br><div class='tableWrapper'>";
  echo "<table id='searchResult'>";
  while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td><a href='book_details.php?book_id={$row['book_id']}'>";
    echo "<img src='{$row['book_cover']}' alt='{$row['title']}' width='250' height='250'></a></td>";
    echo "<td id='infoBox'>";
    echo "<h3>{$row['title']}</h3>";
    echo "<p>{$row['author']}<br>";
    echo "</td>";
    echo "</tr>";
  }
  echo "</table>";
  echo "<br>";
  echo "<center><input id='topButton' type='BUTTON' value='Back to top of page' onclick='window.location.href=\"#top\"'></center>";
  echo "</div>";
  $conn->close();
  ?>
</body>

</html>
