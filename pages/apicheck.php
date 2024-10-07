<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/413ecd623f.js" crossorigin="anonymous"></script>
    
    <title>Document</title>
    <link rel="stylesheet" href="../style.css">
</head>

<body id="animals-user-body" style="background-color: burlywood;">
    <div class="animals_panel" id="topOfPage">
        <nav class="nav">
            <img src="../media/logo.png" id="logo" />
            <div class="nav-items">
                <div class="nav-item"><a href="../index.php">Home</a></div>
                <div class="nav-item"><a href="../pages/habitatMap.php">Habitats</a></div>
                <div class="nav-item"><a href="../pages/animalFacts.php">AnimalFacts</a></div>
                <div class="nav-item"><a href="../pages/ticket.php">Tickets</a></div>
                <div class="nav-item"><a href="../pages/about.php">About</a></div>
                <?php
                if (isset($_COOKIE['logged'])) {
                    $user_fname = $_SESSION['user_fname'];
                    $user_power = $_SESSION['user_power'];

                    switch ($user_power) {
                        case "User":
                            echo "<i class='user-icon user fa-solid fa-user'></i>";
                            break;
                        case "Helper":
                            echo "<i class='user-icon helper fa-solid fa-shield-halved'></i>";
                            break;
                        case "Admin":
                            echo "<i class='user-icon admin fa-solid fa-crown'></i>";
                            break;
                    }

                    echo "<div class='nav-item'><a href='../pages/account.php'>$user_fname</a></div>";
                } else
                    echo '<div class="nav-item"><a href="../pages/signup.php">Log In</a></div>';
                ?>
            </div>
            <div class="hamburger">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </nav>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h1>API Based Search Result</h1>
        <div class="results">
            <?php
            $selectedLocation = $_GET['locations'];

            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "zoo"; // Replace with your actual database name

            $conn = new mysqli($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT * FROM animal_table WHERE locations like '%$selectedLocation%'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                echo '<div class="table-responsive">';
                echo '<table class="table table-hover table-borderless table-dark">';
                echo '<thead>';
                echo '<tr>';
                echo '<th scope="col">ID</th>';
                echo '<th scope="col">Name</th>';
                echo '<th scope="col">Taxonomy</th>';
                echo '<th scope="col">Locations</th>';
                // Add other column headings as needed
                echo '</tr>';
                echo '</thead>';
                echo '<tbody>';

                while ($row = $result->fetch_assoc()) {
                    // Access the columns you want to display from the $row variable
                    echo '<tr>';
                    echo '<td>' . $row['id'] . '</td>';
                    echo '<td>' . $row['name'] . '</td>';
                    echo '<td>' . $row['taxonomy'] . '</td>';
                    echo '<td>' . $row['locations'] . '</td>';
                    // Add other columns as needed
                    echo '</tr>';
                }

                echo '</tbody>';
                echo '</table>';
                echo '</div>';
            } else {
                echo "0 results";
            }

            $conn->close();
            ?>
        </div>
    </div>
</body>
