<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Leaflet Login</title>
  <link href="leafletstyle.css" rel="stylesheet" type="text/css" />
<body>

  <?php
  // Start the session
  session_start();

  // Unset all session variables
  $_SESSION = array();

  // Destroy the session
  session_destroy();

  // Redirect to the login or home page
  header("Location: login.php");
  exit();
  ?>



</body>

</html>