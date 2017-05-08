<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
</div>
<div class="pen-title">

</div>
<!-- Form Module-->
<div class="module form-module">
    <div class="toggle"><i class="fa fa-times fa-pencil"></i>
        <div class="tooltip">Click Me</div>
    </div>
    <div class="form" action="/login" method=post">
        <img id="logologin" src="<%= request.getContextPath() %>/img/minilogo.png">
        <h2>Iniciar sesion</h2>
        <form action="/login" method="post">
            <input class="form-control" type="text" placeholder="Correo" name="email" id="email-input"/>
            <input class="form-control" type="password" name="password" id="password-input" placeholder="Contrase&ntilde;a"/>
            <input type="submit" class="greenButton" value="Login">
        </form>
    </div>
</div>
</body>
</html>