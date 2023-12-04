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


  <div id="content-container">
  <!-- Content will be dynamically updated here -->
  <?php
  // Start the session
  session_start();
  if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
  }

  // Get book_id and set default page_number
  $book_id = $_GET['book_id'];

  // Set up connection to MySQL
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

  $page_num = isset($_GET['page_num']) ? $_GET['page_num'] : 1;
  // Get content based on book_id and page_number
  $page_query = "select * from book_content where book_id=$book_id and page_num=$page_num ";
  $result_page_query = mysqli_query($conn, $page_query);

  // Check if the query was successful
  if (!$result_page_query) {
    die("Query failed: " . mysqli_error($conn));
  }

  // Fetch content
  while($row = mysqli_fetch_assoc($result_page_query)) {
    echo "<div class='readerClass'>{$row['content']}</div>";
  }


  $conn->close();
  ?>
</div>


  <div class="buttons">
    <button id="prevBtn">Previous Page</button>
    <button id="nextBtn">Next Page</button>
  </div> 

<script>
 $(document).ready(function(){
    var page_num = 1;

    // Function to load content based on page number
    function loadContent(pageNum) {
      $.ajax({
        url: 'load_page.php', // Use the same file for handling the request
        type: 'GET',
        data: {
          book_id: <?php echo $book_id; ?>,
          page_num: pageNum
        },
        success: function(data) {
          $('#content-container').html(data);
          page_num = pageNum; // Update the page number
        },
        error: function(error) {
          console.error('Error:', error);
        }
      });
    }

    // Initial load
    loadContent(page_num);

    // Button click event handlers
    $('#prevBtn').click(function() {
      if (page_num > 1) {
        loadContent(--page_num);
      }
    });

    $('#nextBtn').click(function() {
      loadContent(++page_num);
    });

  });
  </script>


  

</body>

</html>