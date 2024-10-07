<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="icon" type="image/png" href="../media/logo.png">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Zoo Management</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="../style.css">
    <style>
        .result-table {
            background-color: rgba(255, 255, 255, 0.8); /* Adjust opacity here (0.8) */
            border-radius: 10px; /* Make table edges rounder */
            border-collapse: separate; /* Separate table borders */
            border-spacing: 10px; /* Add space between table cells */
        }
        .result-table th,
        .result-table td {
            padding: 10px; /* Add padding to table cells */
        }
    </style>
    <script src="https://kit.fontawesome.com/413ecd623f.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="panel" style="background-image: url('../media/Safari.png');">
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

        <div class="inner-panel" style="overflow-y: scroll; display: flex; justify-content: center">
            <div class="result-container">
                <p class="main-content">Enter an animal name to get facts about it.</p>
                <div class="search-fact-bar">
                    <input type="text" placeholder="Enter Animal" id="animal-name">
                    <button onclick="fetchAnimalFact()" id="search-btn">Submit</button>
                </div>
                <div id="results">
                    <!-- Results will be displayed here -->
                </div>
            </div>
        </div>
    </div>

    <script>
        function fetchAnimalFact() {
            var animalName = document.getElementById("animal-name").value;
            var apiUrl = "https://api.api-ninjas.com/v1/animals?name=" + animalName;
            var apiKey = "7y61jTqxElUvCSDi4Mxi2ld02skImcpQK0sFMMH0";

            fetch(apiUrl, {
                headers: {
                    'x-api-key': apiKey
                }
            })
                .then(response => response.json())
                .then(data => {
                    var resultsDiv = document.getElementById("results");
                    resultsDiv.innerHTML = ""; // Clear previous results
                    if (data.length > 0) {
                        var table = "<table class='result-table'>";
                        table += "<tr><th>Name</th><th>Kingdom</th><th>Phylum</th><th>Class</th><th>Order</th><th>Family</th><th>Genus</th><th>Scientific Name</th></tr>";
                        data.forEach(animal => {
                            table += "<tr>";
                            table += "<td>" + animal.name + "</td>";
                            table += "<td>" + animal.taxonomy.kingdom + "</td>";
                            table += "<td>" + animal.taxonomy.phylum + "</td>";
                            table += "<td>" + animal.taxonomy.class + "</td>";
                            table += "<td>" + animal.taxonomy.order + "</td>";
                            table += "<td>" + animal.taxonomy.family + "</td>";
                            table += "<td>" + animal.taxonomy.genus + "</td>";
                            table += "<td>" + animal.taxonomy.scientific_name + "</td>";
                            table += "</tr>";
                        });
                        table += "</table>";
                        resultsDiv.innerHTML = table;
                    } else {
                        resultsDiv.innerHTML = "<p>No data found for the given animal name.</p>";
                    }
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                });
        }
    </script>
</body>

</html>