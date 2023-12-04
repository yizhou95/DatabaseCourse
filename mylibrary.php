<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>My Library</title>
    <link href="leafletstyle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link id="tab-icon" rel="shortcut icon" type="image/x-icon" href="Images/leaf_icon.png" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <style>
        #tableWrapper {
          text-align: center;
        }

        #searchResult {
          display: inline-block;
        }
        .book-container {
          background-color: azure;
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
    // Start the session
    session_start();

    // Redirect to login if the user is not logged in
    if (!isset($_SESSION['username'])) {
        header("Location: login.php");
        exit();
    }

    // Database Connection
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

    // Retrieve books owned by the session user
    $sessionid = $_SESSION['user_id'];
    $username = $_SESSION['username'];
    $sql = "SELECT * FROM book_info WHERE book_id IN (SELECT book_id FROM library WHERE user_id=?) ORDER BY title";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $sessionid);
    $stmt->execute();
    $result = $stmt->get_result();

    ?>

    <div id='tableWrapper'>
        <table id='searchResult'>
            <?php
            while ($row = $result->fetch_assoc()) {
                $counter = 0;
                echo "<tr>";
                while ($counter < 4 && $row) {
                    $book_id = $row['book_id'];
                    echo "<td><div class='book-container'>
                            <div class='book-cover'>
                                <a href='read.php?book_id={$book_id}'><img src='{$row['book_cover']}' alt='{$row['title']}' width='300' height='400'></a>
                            </div>
                            <div class='delete-container'>
                                <button class='delete-btn' onclick='deleteBook(this, $book_id)'>Delete</button>
                            </div>
                        </div></td>";
                    $counter++;
                    $row = $result->fetch_assoc();
                }
                echo "</tr>";
            }
            ?>
        </table>
        <br>
        <center><input id='topButton' type='button' value='Back to top of page' onclick='window.location.href="#top"'></center>
    </div>

    <?php      
    // Close database connection
    $stmt->close();
    $conn->close();
    ?>

    <script>
        function deleteBook(button, bookID) {
            if (confirm('Are you sure you want to delete this book?')) {
                $.ajax({
                    url: 'delete_book.php',
                    type: 'POST',
                    data: {
                        book_id: bookID
                    },
                    success: function(response) {
                        $(button).closest('td').find('.book-container').hide();
                        alert("Book deleted successfully");
                    },
                    error: function(error) {
                        alert("Error delete book");
                    }
                });
            }
        }
    </script>




</body>

</html>
