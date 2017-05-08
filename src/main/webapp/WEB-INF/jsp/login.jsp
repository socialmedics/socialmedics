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
    <a href="/login" id="login">Iniciar sesion</a>
</div>
<div class="pen-title">

</div>
<!-- Form Module-->
<div class="module form-module">
    <div class="toggle"><i class="fa fa-times fa-pencil"></i>
        <div class="tooltip">Click Me</div>
    </div>
    <div class="form">
        <img id="logologin" src="<%= request.getContextPath() %>/img/minilogo.png">
        <h2>Iniciar sesion</h2>
        <form>
            <input type="text" placeholder="Usuario"/>
            <input type="password" placeholder="Contrase&ntilde;a"/>
            <button>Login</button>
        </form>
    </div>
    <div class="form">
        <h2>Create an account</h2>
        <form>
            <input type="text" placeholder="Username"/>
            <input type="password" placeholder="Password"/>
            <input type="email" placeholder="Email Address"/>
            <input type="tel" placeholder="Phone Number"/>
            <button>Register</button>
        </form>
    </div>
</div>
</body>
</html>