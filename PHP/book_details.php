<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link href="leafletstyle.css" rel="stylesheet" type="text/css" />
    <title>Book Details</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        #details-container {
            display: flex;
            max-width: 60%;
            margin-top: 20px;
            padding: 40px;
            border: 1px solid #ddd;
            background-color: azure; /* Lighter box color with transparency */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        #cover-image {
            width: 60vh;
            height: 85vh;
            margin-right: 40px;
        }

        #details-container div {
            max-width: 50%;
        }

        #purchase-message {
            color: green;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <?php
    $servername = "localhost";
    $user = "root";
    $pass = "";
    $database = "Leaflet";

    $conn = new mysqli($servername, $user, $pass, $database);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    session_start();

    if (!isset($_SESSION['username'])) {
        header("Location: login.php");
        exit();
    }

    $book_id = $_GET['book_id'];
    $user_id = $_SESSION['user_id'];

    $details_query = "SELECT * FROM book_info WHERE book_id = {$book_id}";
    $result_detail = mysqli_query($conn, $details_query);

    if ($row_detail = mysqli_fetch_assoc($result_detail)) {
    ?>
        <div id="details-container">
            <img id="cover-image" src="<?php echo $row_detail['book_cover']; ?>" alt="<?php echo $row_detail['title']; ?>">
            <div>
                <h2><?php echo $row_detail['title']; ?></h2>
                <p>by <?php echo $row_detail['author']; ?><br>
                    Published <?php echo $row_detail['pub_date']; ?> by <?php echo $row_detail['publisher']; ?><br>
                    ISBN: <?php echo $row_detail['isbn']; ?><br>
                    Summary: <?php echo $row_detail['summary']; ?>
                </p>
                <p>
                    <?php
                        $ownership_query = "SELECT * FROM library WHERE book_id = '$book_id' AND user_id = '$user_id'";
                        $result_ownership = mysqli_query($conn, $ownership_query);

                        if (mysqli_num_rows($result_ownership) == 0) {
                    ?>
                        <button onclick="purchaseBook('<?php echo $book_id; ?>', '<?php echo $user_id; ?>')">Purchase</button>
                        <br>
                    <?php
                        }
                    ?>
                </p>
                <?php
                    if (isset($_GET['purchase'])) {
                        $insertQuery = "INSERT IGNORE INTO library (book_id, user_id) VALUES ('$book_id', '$user_id')";
                        $conn->query($insertQuery);
                        echo "<p id='purchase-message'>Purchase successful</p>";
                    }
                ?>
                <a href="javascript:history.go(-1)">Click here to go back</a>
            </div>
        </div>
    <?php
    } else {
        echo "<p>Book not found</p>";
    }

    $conn->close();
    ?>

    <script>
        function purchaseBook(bookId, userId) {
            window.location.replace('book_details.php?book_id=' + bookId + '&purchase=1&user_id=' + userId);
        }
    </script>
</body>

</html>
