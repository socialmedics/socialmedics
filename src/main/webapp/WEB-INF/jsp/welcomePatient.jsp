<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
    <title>WelcomePatient</title>
</head>
<body>

<div class="topnav">
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
    <a href="/login" id="login">Iniciar sesion</a>
</div>

<div class="container">
    <div class="row" id="opcionespaciente">
        <div class="col m2 offset-md-5">
            <h1>Bienvenido, <%= (String) request.getAttribute("name") %></h1><br>
            <h3>¿Que desea hacer?</h3>
            <div id="cajaBotonesPaciente">
                <form action="/patientMedicalHistory" method="post">
                    <Button class="botones" type="submit" name="email" value=<%= (String) request.getAttribute("email") %>> Ver Historial Medico
                    </Button>
                </form>
                <form action="/modifyPatient">
                    <input type="submit" class="botones" value = "Modificar perfil"><br/>
                </form>
                <form action="/pedirCita">
                    <input type="submit" class="botones" value = "Pedir cita"><br/>
                </form>
                <form action="/prescriptionPatientView">
                    <input type="submit" class="botones" value = "Ver recetas"><br/>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>