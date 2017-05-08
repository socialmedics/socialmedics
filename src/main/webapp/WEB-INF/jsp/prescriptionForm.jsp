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
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
    <a href="/login" id="login">Iniciar sesion</a>
</div>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-2">
            <h1>Formulario Historial Medico</h1>
            <form action="/prescriptionForm" method="post">
                <table>
                    <tr>
                        <th>
                            Nombre:
                            <input type="text" placeholder="Nombre" name="name">
                        </th>
                        <th>
                            Email:
                            <input type="text" placeholder="Email" name="email">
                        </th>
                        <th>
                            Sexo:
                            <input type="text" placeholder="Sexo" name="sex">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Fecha:
                            <input type="text" placeholder="Fecha" name="historydate">
                        </th>
                        <th>
                            Hora:
                            <input type="text" placeholder="Hora" name="historytime">
                        </th>
                        <th>
                            Doctor:
                            <input type="text" placeholder="Doctor" name="doctor">
                        </th>
                        <th>
                            Especialidad:
                            <input type="text" placeholder="Especialidad" name="department">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Enfermedad:
                            <input placeholder="Diagnostico" name="illness">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Recetario:
                            <textarea placeholder="Medicamentos" name="medicament"></textarea>
                        </th>
                    </tr>
                </table>
                <input type="submit" value="Guardar Receta">
            </form>
        </div>
    </div>
</div>
</body>
</html>