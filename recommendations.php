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
    <a href="store.php">Store</a>
    <a class="active" href="Recommendations.php">My Recommendations</a>
    <img src="https://cdn.discordapp.com/attachments/1174578118892199976/1180729973183627345/Untitled_design.png?ex=657e7b7a&is=656c067a&hm=b661541f897b5af28219f34ab4437050e9045477311166cd95be3d50254a3016&" height=65px width=200px>
    <div class="topnav-right">
      <a href="logout.php">Log Out</a>
    </div>
  </div>

  <?php
  session_start();
  if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
  }
  $sessionid = $_SESSION['user_id'];
  $username = $_SESSION['username'];
  ?>
  <!--<h1>Welcome, <?php echo $username; ?>!</h1>-->


  <?php
    // Set up connection to mySQL
    $servername = "localhost";
    $user = "root";
    $pass = "";
    $database = "Leaflet";

    // Create connection
    $conn = new mysqli($servername, $user, $pass, $database);
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    // Query to retrieve books not already owned by the session user
    $sql = "SELECT
    SUM(gt.fiction) AS total_fiction,
    SUM(gt.nonfiction) AS total_nonfiction,
    SUM(gt.fantasy) AS total_fantasy,
    SUM(gt.action_adventure) AS total_action_adventure,
    SUM(gt.mystery) AS total_mystery,
    SUM(gt.thriller) AS total_thriller,
    SUM(gt.self_help) AS total_self_help,
    SUM(gt.graphic_novel) AS total_graphic_novel,
    SUM(gt.inspirational) AS total_inspirational,
    SUM(gt.romance) AS total_romance,
    SUM(gt.horror) AS total_horror,
    SUM(gt.comedy) AS total_comedy
  FROM library l
  JOIN genre_tags gt ON l.book_id = gt.book_id
  WHERE l.user_id = '{$sessionid}';";

    $result = mysqli_query($conn, $sql);
    if (!$result) {
      die("Query failed: " . mysqli_error($conn));
    }

    $row = mysqli_fetch_assoc($result);

    $array = array(
      "fiction" => $row['total_fiction'],
      "nonfiction" => $row['total_nonfiction'],
      "fantasy" => $row['total_fantasy'],
      "action_adventure" => $row['total_action_adventure'],
      "mystery" => $row['total_mystery'],
      "thriller" => $row['total_thriller'],
      "self_help" => $row['total_self_help'],
      "graphic_novel" => $row['total_graphic_novel'],
      "inspirational" => $row['total_inspirational'],
      "romance" => $row['total_romance'],
      "horror" => $row['total_horror'],
      "comedy" => $row['total_comedy']
    );

    $first = 0;
    $second = 0;
    $third = 0;
    $firstGenre = "";
    $secondGenre = "";
    $thirdGenre = "";

    foreach($array as $k => $v) {
      //echo "<p>{$k} is {$v}</p>";
      if($v > $first) {
        $third = $second;
        $thirdGenre = $secondGenre;
        $second = $first;
        $secondGenre = $firstGenre;
        $first = $v;
        $firstGenre = $k;
      }
      else if($v > $second) {
        $third = $second;
        $thirdGenre = $secondGenre;
        $second = $v;
        $secondGenre = $k;
      }
      else if($v > $third) {
        $third = $v;
        $thirdGenre = $k;
      }
    }

    /*
    echo "<p>{$firstGenre} is first</p>";
    echo "<p>{$secondGenre} is second</p>";
    echo "<p>{$thirdGenre} is third</p>";
    */

    unset($k);
    unset($v);

    $sql2 = "
    SELECT bi.*
    FROM book_info bi
    LEFT JOIN genre_tags gt ON bi.book_id = gt.book_id
    LEFT JOIN library l ON bi.book_id = l.book_id AND l.user_id = '{$sessionid}'
    WHERE l.book_id IS NULL
    ORDER BY
        gt.{$firstGenre} DESC,
        gt.{$secondGenre} DESC,
        gt.{$thirdGenre} DESC;";

    $result2 = mysqli_query($conn, $sql2);
    if (!$result2) {
      die("Query failed: " . mysqli_error($conn));
    }
    // Iterate through rows of results

    echo "<br><div class='tableWrapper'>";
    echo "<table id='searchResult'>";

    while ($row2 = mysqli_fetch_assoc($result2)) {
      //echo "<p>we made it here</p>";
      echo "<tr>";
      echo "<td><a href='book_details.php?book_id={$row2['book_id']}'>";
      echo "<img src='{$row2['book_cover']}' alt='{$row2['title']}' width='265' height='330'></a></td>";
      echo "<td id='infoBox'>";
      echo "<h3>{$row2['title']}</h3>";
      echo "<p>{$row2['author']}<br>";
      echo "</td>";
      echo "</tr>";
    }
    echo "</table>";
    echo "<br>";
    echo "<center><input id='topButton' type='BUTTON' value='Back to top of page' onclick='window.location.href=\"#top\"'></center>";
    echo "</div>";

    // Close the database connection
    $conn->close();
  ?>
</body>

</html>