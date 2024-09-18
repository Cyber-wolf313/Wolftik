<?php
// Start the session if needed
session_start();

// Check if 'otp' is set in the POST data
if (isset($_POST['otp'])) {
    $otp = htmlspecialchars($_POST['otp']);
    
    // Process OTP validation here

    // Redirect to zefoy.com after successful OTP submission
    header("Location: https://zefoy.com");
    exit();
} else {
    echo "OTP is required.";
}
?>
