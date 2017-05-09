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
    <a href="/doctorHome" class="active"><%= (String) request.getAttribute("name") %></a>
    <a href="/modifyDoctor">Perfil</a>
    <a href="/timetable/<%=(Integer)request.getAttribute("id")%>">Horario</a>
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
    <a href="/logoutDoctor" id="login">Cerrar Sesion</a>
</div>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-2">
            <h1>Formulario Historial Medico</h1>
            <form action="/doctorFormMedicalHistory" method="post">
                <table>
                    <tr>
                        <th>
                            Nombre:
                        </th>
                        <th>
                            <input type="text" placeholder="Nombre" name="name">
                        </th>
                        <th>
                            Sexo:
                        </th>
                        <th>
                            <input type="text" placeholder="Sexo" name="sex">
                        </th>
                        <th>
                            Email:
                        </th>
                        <th>
                            <input type="text" placeholder="Email" name="email">
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Fecha de Nacimiento:
                        </th>
                        <th>
                            <input type="text" placeholder="Fecha de Nacimiento" name="borndate">

                        </th>
                        <th>
                            Nacionalidad:
                        </th>
                        <th>
                            <input type="text" placeholder="Nacionalidad" name="nationality">

                        </th>
                        <th>
                            Lugar de Nacimiento:
                        </th>
                        <th>
                            <input type="text" placeholder="Lugar de Nacimiento" name="birthplace">

                        </th>
                    </tr>
                    <tr>
                        <th>
                            Alergias:
                        </th>
                        <th>
                            <textarea placeholder="Alergias del paciente" name="allergy"></textarea>
                        </th>
                        <th>
                            Enfermedad:
                        </th>
                        <th>
                            <textarea placeholder="Enfermedad presente" name="illness"></textarea>
                        </th>
                        <th>
                            Diagnostico:
                        </th>
                        <th>
                            <textarea placeholder="Diagnostico" name="diagnosis"></textarea>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Fecha:
                        </th>
                        <th>
                            <input type="text" placeholder="Fecha" name="historydate">
                        </th>
                        <th>
                            Hora:
                        </th>
                        <th>
                            <input type="text" placeholder="Hora" name="historytime">
                        </th>
                        <th>
                            Doctor:
                        </th>
                        <th>
                            <input type="text" placeholder="Doctor" name="doctor">
                        </th>
                        <th>
                            Especialidad:
                        </th>
                        <th>
                            <input type="text" placeholder="Especialidad" name="department">
                        </th>
                    </tr>
                </table>
                <input type="submit" value="Guardar Historial">
            </form>
        </div>
    </div>
</div>
</body>
</html>