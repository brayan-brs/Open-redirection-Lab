<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            background-color: #eee;
        }

        .container {
            margin: auto;
            width: 50%;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            background-color: white;
            box-shadow: 0px 0px 10px #ccc;
        }

        h1 {
            text-align: center;
            font-size: 36px;
            margin-top: 0px;
        }

        label {
            display: block;
            font-size: 18px;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            font-size: 16px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            font-size: 18px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0062cc;
        }

        .error {
            color: red;
            font-size: 16px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form action="/login" method="POST">
            <label for="username">Nome de usuário:</label>
            <input type="text" name="username" id="username"><br>
            <label for="password">Senha:</label>
            <input type="password" name="password" id="password"><br>
            <input type="submit" value="Entrar">
            <p class="error">${error}</p>
        </form>
    </div>
</body>
</html>
