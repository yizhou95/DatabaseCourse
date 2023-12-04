<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Leaflet Login</title>
  <link href="leafletstyle.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="script.js"></script>
  <link id="tab-icon" rel="shortcut icon" type="image/x-icon" href="Images/leaf_icon.png" />
  <style>
    body{
      background-image: url('Images/login.png');
      background-size: cover;
      background-attachment: fixed;
    }
  </style>
  <?php error_reporting(0); ?>
</head>
<body>

	<div id="loginWrapper">
		<h1>LeafLet E-book Reader Website</h1>
	</div>	
  <div id="loginWrapper">
    <form method="POST" id="LoginForm" action="">
      <h1>Login</h1>
      <div class="group">
        <input type="input" class="textbox" placeholder="Username" id="username" name="username" required />
        <label for="username" class="label">Username</label>
      </div>
      <div class="group">
        <input type="password" class="textbox" placeholder="Password" id="password" name="password" required />
        <label for="password" class="label" id="passwordLabel">Password</label>
        <i id="togglePass" class="fa fa-eye"></i>
      </div>
      <label for="visibleBox"></label>
      <br>
      <input type="submit" class="bttn" id="Login" name="Login" value="Login" />
    </form>
    <?php
    $password = $username = "";
    $servername = "localhost";
    $user = "root";
    $pass = "";
    $database = "Leaflet";
    $conn = new mysqli($servername, $user, $pass, $database);
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    if ($_POST['Login']) {
      // Start session
      session_start();
      $username = $_POST["username"];
      $password = $_POST["password"];
      $_SESSION['username'] = $username;
      $sql = "SELECT * FROM `user_login` WHERE `username`=\"{$username}\" AND `login_password`=\"{$password}\"";
      $result = mysqli_query($conn, $sql);
      if (mysqli_num_rows($result) == 0)
        echo "Account doesn't Exist!";
      else {
        // Retrieve user_id and store it in the session
        $id_query = "SELECT user_id FROM user_login WHERE username='{$username}'";
        $result_id_query = mysqli_query($conn, $id_query);
        if (!$result_id_query) {
          die("Query failed: " . mysqli_error($conn));
        }
        $row = mysqli_fetch_assoc($result_id_query);
        $_SESSION['user_id'] = $row['user_id'];
        // Redirect to mylibrary.php upon successful login
        echo '<script>window.location="mylibrary.php";</script>';
      }
    }
    ?>
  </div>
</body>
</html>
