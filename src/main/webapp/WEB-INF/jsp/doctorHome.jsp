<!DOCTYPE html>
<html>
<head>
    <title>Pagina Principal</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class = "container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1>Bienvenido <%=(String)request.getAttribute("name")%> </h1>
            <a href="doctorMedicalHistory">Ver historial de Pacientes</a>
            <a href="doctorFormMedicalHistory">Redactar Historial Medico</a>
        </div>
    </div>
</div>

</body>
</html>