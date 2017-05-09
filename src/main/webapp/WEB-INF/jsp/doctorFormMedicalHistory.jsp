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
    <link rel="stylesheet" href="css/form.css">
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
            <h1>Nuevo historial m&#233;dico</h1>
            <form action="/doctorFormMedicalHistory" method="post" class="#historialMedico">
                <table>
                    <tr><th> Nombre: </th>
                    <th> <input type="text" placeholder="Nombre" name="name"> </th>

                    <th> Enfermedad: </th>
                    <th> <textarea placeholder="Enfermedad presente" name="illness"></textarea> </th>

                    <tr><th> Sexo: </th>
                    <th> <input type="text" placeholder="Sexo" name="sex">  </th>

                    <th> Diagnostico: </th>
                    <th> <textarea placeholder="Diagnostico" name="diagnosis"></textarea></th>

                    <tr><p><th> Email:  </th>
                    <th> <input type="text" placeholder="Email" name="email"> </th>

                    <th> Fecha: </th>
                    <th> <input type="text" placeholder="Fecha" name="historydate"> </th></tr>

                    <tr><th>Fecha de Nacimiento:</th>
                    <th> <input type="text" placeholder="Fecha de Nacimiento" name="borndate"> </th>

                    <th> Hora: </th>
                    <th> <input type="text" placeholder="Hora" name="historytime"> </th></tr>

                    <tr><th> Nacionalidad: </th>
                    <th> <input type="text" placeholder="Nacionalidad" name="nationality"> </th>

                    <th> Doctor: </th>
                    <th> <input type="text" placeholder="Doctor" name="doctor"> </th></tr>

                    <tr><th> Lugar de Nacimiento: </th>
                    <th> <input type="text" placeholder="Lugar de Nacimiento" name="birthplace"> </th>

                    <th> Especialidad: </th>
                    <th> <input type="text" placeholder="Especialidad" name="department"> </th> </tr>

                    <tr><th> Alergias: </th>
                    <th> <textarea placeholder="Alergias del paciente" name="allergy"></textarea> </th>
                </table>
                <input type="submit" class="botones" value="Guardar Historial">
            </form>
        </div>
    </div>
</div>
</body>
</html>