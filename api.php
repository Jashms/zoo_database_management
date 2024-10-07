<?php

// MySQL database connection details
$servername = "localhost";
$username = "root";
$password = "";
$database = "zoo";

// Replace 'YOUR_API_KEY' with your actual API key
$apiKey = '7y61jTqxElUvCSDi4Mxi2ld02skImcpQK0sFMMH0';

// Add the name of the new animal
$animalName = 'kangaroo'; // Replace with the desired animal name

// API endpoint
$apiUrl = "https://api.api-ninjas.com/v1/animals?name=" . urlencode($animalName);

// Create a MySQL connection
$conn = new mysqli($servername, $username, $password);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Select the database
$conn->select_db($database);

// Function to fetch data from the API
function fetchDataFromAPI($apiUrl, $apiKey) {
    $options = [
        'http' => [
            'header' => 'X-Api-Key: ' . $apiKey,
        ],
    ];

    $context = stream_context_create($options);
    $response = file_get_contents($apiUrl, false, $context);

    if ($response !== false) {
        return json_decode($response, true);
    } else {
        return null;
    }
}

// Example usage
$apiData = fetchDataFromAPI($apiUrl, $apiKey);

// Store API data in MySQL
if ($apiData && isset($apiData[0])) {
    $name = $apiData[0]['name'];
    $taxonomy = isset($apiData[0]['taxonomy']) ? json_encode($apiData[0]['taxonomy']) : null;
    $locations = isset($apiData[0]['locations']) ? json_encode($apiData[0]['locations']) : null;

    // Insert data into the table
    $sqlInsertData = "INSERT INTO animal_table (
        name, taxonomy, locations
    ) VALUES (
        '$name', '$taxonomy', '$locations'
    )";

    if ($conn->query($sqlInsertData) === TRUE) {
        echo "Data for $name inserted successfully!";
    } else {
        echo "Error inserting data: " . $conn->error;
    }
} else {
    echo "Failed to fetch data from the API or invalid response.";

    // Debugging: Display the API response
    echo "<pre>";
    print_r($apiData);
    echo "</pre>";
}

// Close the MySQL connection
$conn->close();

?>
