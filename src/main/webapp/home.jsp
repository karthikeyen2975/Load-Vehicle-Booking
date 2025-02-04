<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
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
    </style>
</head>
<body>
    <nav>
    <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="booking.jsp">Book a Truck</a></li>
        <li><a href="order.jsp">Order Confirmation</a></li>
        <li><a href="login.jsp">Login</a></li>
    </ul>
</nav>

    <h1>Welcome to the Truck Booking System</h1>
    <h2>Hello, <%= session.getAttribute("username") %>!</h2>
</body>
</html>
