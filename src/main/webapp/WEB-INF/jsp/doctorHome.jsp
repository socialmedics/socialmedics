<!DOCTYPE html>
<html>
<head>
    <title>Pagina Principal</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
    <a href="/login" id="login">Iniciar sesion</a>
</div>
<div class = "container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <a href="doctorMedicalHistory">Ver historial de Pacientes</a>
            <a href="doctorFormMedicalHistory">Redactar Historial Medico</a>
            <a href="/timetable/<%=(Integer)request.getAttribute("id")%>">Horario de atención</a>
            <form action="/modifyDoctor">
                <input type="submit" class="btn btn-link" value="modificarPerfil">
            </form>
            <a href="prescriptionForm">Redactar Recetas</a>
            <form action="/viewAppointment">
                <input type="submit" class="btn btn-info" value="viewAppointment">
            </form>
        </div>
    </div>
</div>

</body>
</html>