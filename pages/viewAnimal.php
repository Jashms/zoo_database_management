<?php
	session_start();

	if (!isset($_GET['id'])) {
		header('Location: animals-user.php');
		die();
	}

	$conn = mysqli_connect("localhost", "root", "", "zoo");
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	$animal_id = $_GET['id'];
	$GLOBALS['animalID'] = $animal_id;

	$sql_get = "SELECT * FROM animals WHERE id = $animal_id";

	$result = mysqli_fetch_assoc(mysqli_query($conn, $sql_get));

	$GLOBALS['animal'] = $result;
	mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Zoo Manegment</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="../style.css">
	<script src="https://kit.fontawesome.com/413ecd623f.js" crossorigin="anonymous"></script>
</head>

<body>
	<?php

		$habitat = $GLOBALS['animal']['habitat'];
		$format = strtolower($habitat);

    	echo <<<"EOD"
			<div class='panel' style='background-image: url("../media/$format-bg.png");'>
		EOD;	
	?>
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

		<?php
			$conn = mysqli_connect("localhost", "root", "", "zoo");
			if (!$conn) {
				die("Connection failed: " . mysqli_connect_error());
			}		
				$name = $GLOBALS['animal']['name'];
				$age = $GLOBALS['animal']['age'];
				$type = $GLOBALS['animal']['type'];
				$habitat = $GLOBALS['animal']['habitat'];
				$desc = $GLOBALS['animal']['description'];

				$format = strtolower($habitat);
				
				$animalID = $GLOBALS['animalID'];

			if(isset($_COOKIE['logged'])){
				$userID = $_SESSION['user_id'];
				
				$sql = "SELECT * FROM wishlist WHERE user_id = $userID AND animal_id = $animalID";
				$check = mysqli_query($conn, $sql);
			
				if(mysqli_num_rows($check)>0){
					$theHeart = '<i class="fa-solid fa-heart"></i>';
				}else{
					$theHeart = '<i class="fa-regular fa-heart"></i>';					
				}
			}

        	echo <<<"EOD"
				<div class='animal-main $format'>
					<div class="animal-info-container">
						<div class="nameAndHeart">
							<h1 class="nameInViewAnimal">$name</h1>
			EOD;
				
			if(isset($_COOKIE['logged'])){
						echo <<<"EOD"
							<span class="heart">
								$theHeart
								<div style="display: none;" id="animalID">$animalID</div>
								<div style="display: none;" id="userID">$userID</div>
							</span>
						EOD;
			}

			echo <<<"EOD"
						</div>
						<div> Age: <h4>$age</h4> </div>
						<div> Habitat: <h4 id="$format">$habitat</h4></div>
						<div> Family: <h4>$type</h4> </div>
					</div>
					
					<div class="animal-img-container">
						<div class="animal-img">
			EOD;
			
			$sql_images = "SELECT url FROM images WHERE animal_id = $animal_id";
			$images = mysqli_query($conn, $sql_images);

			$row_count = 0;
			while ($row = mysqli_fetch_assoc($images)) {
				$row_count++;
				$url = $row['url'];

				echo <<<"EOD"
						<img class="slide-img" src="$url"/>
				EOD;
			}
			
			if ($row_count === 0) {
						echo "<img class='slide-img' src='../media/flipcard_sample.png'/>";
			}

			echo <<<"EOD"
							<div id="sliders">
								<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
								<a class="next" onclick="plusSlides(1)">&#10095;</a>
							</div>
						</div>
					</div>
					
					<div class="animal-desc-container">$desc
					   
					</div>
				</div>
			EOD;

			mysqli_close($conn);
		?>
        
    </div>

<script src="../index.js"></script>
<script>

let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
	let i;
	let slides = document.getElementsByClassName("slide-img");

	if (n > slides.length) {slideIndex = 1}

	if (n < 1) {slideIndex = slides.length}

	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	slides[slideIndex-1].style.display = "flex";
}

</script>
</body>

</html>
