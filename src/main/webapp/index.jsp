<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Facebook Login Page Clone</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background: #f0f2f5;
    margin: 0;
    padding: 0;
  }
  .container {
    max-width: 980px;
    margin: 0 auto;
    padding: 50px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .left {
    max-width: 400px;
  }
  .left h1 {
    color: #1877f2;
    font-size: 50px;
    font-weight: 700;
    margin-bottom: 20px;
  }
  .left p {
    font-size: 22px;
    color: #1c1e21;
  }
  .right {
    background: white;
    padding: 20px 40px 40px 40px;
    box-shadow: 0 2px 4px rgb(0 0 0 / 0.1);
    border-radius: 8px;
    width: 350px;
  }
  .right input[type="text"],
  .right input[type="password"] {
    width: 100%;
    padding: 14px 16px;
    margin: 6px 0 12px;
    font-size: 17px;
    border: 1px solid #dddfe2;
    border-radius: 6px;
    box-sizing: border-box;
  }
  .right button {
    width: 100%;
    background-color: #1877f2;
    color: white;
    border: none;
    padding: 14px;
    font-size: 20px;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
  }
  .right button:hover {
    background-color: #165ec9;
  }
  .right .forgot {
    display: block;
    margin: 15px 0;
    text-align: center;
    color: #1877f2;
    text-decoration: none;
    font-size: 14px;
  }
  .right .create-account {
    margin-top: 20px;
    text-align: center;
  }
  .right .create-account button {
    background-color: #42b72a;
    font-size: 17px;
    padding: 12px 20px;
    width: auto;
  }
</style>
</head>
<body>
  <div class="container">
    <div class="left">
      <h1>facebook</h1>
      <p>Connect with friends and the world around you on Facebook.</p>
    </div>
    <div class="right">
      <form action="/login" method="POST">
        <input type="text" name="email" placeholder="Email or phone number" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Log In</button>
        <a href="#" class="forgot">Forgot Password?</a>
      </form>
      <div class="create-account">
        <button>Create New Account</button>
      </div>
    </div>
  </div>
</body>
</html>
