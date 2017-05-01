<%@ taglib prefix="img" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>

    <title>SocialMedics</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">

</head>
    <body>
        <div class="topnav">
            <a class="active" href="/">Inicio</a>
            <a href="/register">Registro</a>
            <a href="/centerForm">Anadir un centro</a>
            <a href="/login" id="login">Iniciar sesion</a>
        </div>

        <!-- Banner -->
        <section id="banner">
            <img src="<%= request.getContextPath() %>/img/logo.png">
            <p>Medicos y pacientes, siempre en contacto</p>
        </section>

    </body>
</html>