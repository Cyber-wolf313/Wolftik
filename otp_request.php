<?php
// Start the session
session_start();

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Sanitize input
    $phone_email = filter_input(INPUT_POST, 'phone_email', FILTER_SANITIZE_SPECIAL_CHARS);

    // Validate input
    if (!empty($phone_email)) {
        // Store phone/email in session or a database
        $_SESSION['phone_email'] = $phone_email;
        
        // Redirect to the OTP page
        header('Location: otp.html');
        exit(); // Make sure to call exit after header redirection
    } else {
        echo 'Invalid submission.';
    }
} else {
    // Handle the case where the form is not submitted
    echo 'Invalid request.';
}
?>
