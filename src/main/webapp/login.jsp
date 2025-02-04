<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        /* Navbar Styles */
        nav ul {
            list-style: none;
            padding: 0;
            display: flex;
            background-color: #333;
            justify-content: space-around;
        }
        nav ul li {
            margin: 0;
        }
        nav ul li a {
            color: white;
            padding: 14px 20px;
            display: block;
            text-decoration: none;
        }
        nav ul li a:hover {
            background-color: #575757;
        }
        /* Responsive Navbar */
        @media (max-width: 600px) {
            nav ul {
                flex-direction: column;
                align-items: center;
            }
        }

        /* Page Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
        }
        form {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background: #f9f9f9;
        }
        label, input, button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
        }
        button {
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }
        /* Signup Link */
        .signup-link {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
        .signup-link a {
            color: #333;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="signup.jsp">Sign Up</a></li>
        </ul>
    </nav>
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>

        <button type="submit">Login</button>
    </form>
    <div class="signup-link">
        <p>New user? <a href="signup.jsp">Sign up here</a></p>
    </div>
</body>
</html>
