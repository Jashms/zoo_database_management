<?php
    session_start();

    if(isset($_COOKIE['logged'])) {
        $user_power = $_SESSION['user_power'];

        if($user_power !== 'User') {
            header('Location: animals.php');
            die();
        }
    }
?>

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
                }
                else
                    echo '<div class="nav-item"><a href="../pages/signup.php">Log In</a></div>';
            ?>
        </div>

        <div class="hamburger">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </div>

    </nav>

    <div class="animals-main-panel">

    <form class="search-bar" action="apicheck.php" method="get" autocomplete="off">
    <div style="display: flex; align-items: center;">
        <label for='locations' style="margin-bottom: 0; margin-right: 0.5rem;">Locations:</label>
        <select name="locations" id="locations">
            <option value=""></option>
            <option value="Asia">Asia</option>
            <option value="Africa">Africa</option>
            <option value="Eurasia">Eurasia</option>
            <option value="Antarctica">Antarctica</option>
            <option value="North-America">North-America</option>
            <option value="South-America">South-America</option>
            <option value="Central-America">Central-America</option>
        </select>
    </div>
    <input class="btn btn-success" type="submit" value="Submit">
</form>

</body>

</html>
            
            
