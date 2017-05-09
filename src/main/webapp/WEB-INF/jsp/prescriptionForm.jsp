<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/doctorHome">Inicio</a>
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
</div>
<section class="text-muted" id="banner">
    <div class="input-center">
       <%-- <div class="row" id="principal">
            <div class="col m2 offset-md-2">--%>
                <h1>Receta</h1>
                <form action="/prescriptionForm" method="post">
                                Nombre:

                                <input type="text" placeholder="Nombre" name="name">

                                Email:

                                <input type="text" placeholder="Email" name="email">

                                Sexo:

                                <input type="text" placeholder="Sexo" name="sex">

                                Fecha:

                                <input type="text" placeholder="Fecha" name="historydate">

                                Enfermedad:

                                <input placeholder="Diagnostico" name="illness">

                                Hora:

                                <input type="text" placeholder="Hora" name="historytime">

                </form>
            </div>
    <div class="input-center">
        <br><br>
        <textarea placeholder="Medicamentos" name="medicament"></textarea>
    </div>
    <div class="input-center">
        <input class="btn btn-info" type="submit" value="Guardar Receta">
    </div>
 <%--       </div>
    </div>--%>
</section>
</body>
</html>
