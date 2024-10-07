function goLogin() {
	let signup_overlay = document.getElementById("signup-overlay");
	let login_overlay = document.getElementById("login-overlay");

	signup_overlay.style.display = "flex";
	login_overlay.style.display = "none";
}

function editOverlay(overlayId) {
	let update_overlay = document.getElementById(overlayId);
	let overlays = document.getElementsByName("update-overlay");
	overlays.forEach(overlay =>
		overlay.style.display = "none"
	);

	update_overlay.style.display = "flex";
}

function checkRepeatPass(inputID, checkID) {
	let password = document.getElementById(inputID).value;

	let box = document.getElementById(checkID);
	let repeatPassword = document.getElementById("cpass-input").value;

	if (password != repeatPassword) {
		box.style.backgroundColor = "rgba(255, 99, 71, 0.3)";
		return false;
	}
	else {
		box.style.backgroundColor = "rgba(255, 255, 255, 0)";
	}

	return true;
}

const hamburger = document.querySelector(".hamburger");
const navItems = document.querySelector(".nav-items");

hamburger.addEventListener("click", () => {
	hamburger.classList.toggle("active");
	navItems.classList.toggle("active");
	console.log("click")
})

document.querySelectorAll(".nav-item").forEach(n => n.addEventListener("click", () => {
	hamburger.classList.remove("acitve");
	navItems.classList.remove("active")
}))

// let animals = []
// let resultDiv;



function animalFact() {
	let slogan = document.getElementById('sloggan');
	let input = document.getElementById('animal-name')
	let resultDiv = document.getElementById("results");

	console.log(input.value)
	fetch(`https://api.api-ninjas.com/v1/animals?name=${input.value}`, {
		method: 'GET', // or 'PUT'
		headers: {
			'X-Api-Key': 'Pur9eqmmJr015qIRkmq2sg==3E5SKV3pvhXJANTU',
		}
	})
		.then(response => response.json())
		.then(data => {
			// animals = data;
			console.log('Success:', data);
			// slogan.innerHTML = data;
			resultDiv.innerHTML = ''
			for (let i = 0; i < data.length; i++) {
				createCard(data[i])
			}

			// data.map(
			//     createCard()
			// )
		})
		.catch((error) => {
			console.error('Error:', error);
		});
	console.log("outside" + data);
}




function createCard(animal) {

	// Add the HTML code as a child of the result div
	let resultDiv = document.getElementById("results");

	resultDiv.innerHTML +=
		`<div class="animal" >
			<h1 class="animal-name" style="margin-top: 1rem;">${animal.name}</h1>
			<p class="animal-info">
			<p>Slogan: ${animal.characteristics.slogan}</p>
			<p>Top Speed: ${animal.characteristics.top_speed}</p>
			<p>Origin: ${animal.characteristics.origin}</p>
			<p>Name of Young: ${animal.characteristics.name_of_young}</p>
			<p>Habitat: ${animal.characteristics.habitat}</p>
			<p>Weight: ${animal.characteristics.weight}</p>
			<p>Kingdom: ${animal.taxonomy.Kingdom}</p></p>
		</div>`;
}

// createCard();

// Arita's Part in View Animal
function toggleWishlist(e) {
	var heartBtn = e.currentTarget;

	console.log(heartBtn.innerHTML);
	// let clicked = String(heartBtn.innerHTML);

	var i = heartBtn.firstElementChild;
	// if (i.classList.contains('fa-regular')) {
	// 	i.classList.remove('fa-regular');
	// 	i.classList.add('fa-solid');
	// }
	// else {
	// 	i.classList.add('fa-regular');
	// 	i.classList.remove('fa-solid');
	// }

	let animalID = document.getElementById('animalID').innerHTML;
	let userID = document.getElementById('userID').innerHTML;
	// console.log(animalID);
	let url = './toggleWishlist.php?animal=' + animalID + '&user=' + userID;
	console.log(url);
	loadDoc(url, changeHeart, i);
	// if (clicked == '<i class="fa-regular fa-heart"></i>'){
	// 	heartBtn = '<i class="fa-solid fa-heart"></i>';
	// }else if(heartBtn.innerHTML === '<i class="fa-solid fa-heart"></i>'){
	// 	heartBtn = '<i class="fa-regular fa-heart"></i>';
	// }

}
function changeHeart(xhttp, i) {
	console.log(xhttp.responseText);
	// xhttp.responseText == 'Finished';
	if (xhttp.responseText == 'Finished') {
		// var heartBtn = e.currentTarget;
		console.log('Arita')
		// console.log(heartBtn.innerHTML);
		// let clicked = String(heartBtn.innerHTML);

		// var i = heartBtn.firstElementChild;
		if (i.classList.contains('fa-regular')) {
			i.classList.remove('fa-regular');
			i.classList.add('fa-solid');
		}
		else {
			i.classList.add('fa-regular');
			i.classList.remove('fa-solid');
		}
	}
	else{

		alert(xhttp.responseText);
	}
}
const hearts = document.getElementsByClassName('heart');
for (let i = 0; i < hearts.length; i++) {
	hearts[i].addEventListener('click', toggleWishlist);
}

function loadDoc(url, cFunction, target) {
	const xhttp = new XMLHttpRequest();
	xhttp.onload = function () { cFunction(this, target); }
	xhttp.open("GET", url);
	xhttp.send();
}
function animalFact() {
    let input = document.getElementById('animal-name').value;

    fetch(`api.php?name=${input}`)
        .then(response => response.text())
        .then(data => {
            console.log('Success:', data);
            alert(data); // Show a message indicating success or failure
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Failed to insert data into the database');
        });
}


function deleted(xhttp, target) {
	if (xhttp.responseText == 'Finished')
		target.remove();
	else {
		alert('Please LogIn to add or remove to your favourites!');
	}
}