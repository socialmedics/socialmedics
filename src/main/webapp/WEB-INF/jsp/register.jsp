<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>RegisterPatient</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styleRegisterPatient.css">
</head>
<body>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1>Registro</h1>
            <div>
                <form action="/register" method="post">
                    <label class ="col-2 col-form-label">nombre: </label>
                    <div class="col-10">
                        <input type="text" name="name" required><br/>
                    </div>
                    <label>apellido: </label>
                    <input type="text" name="surname" required><br/>
                    <label>email: </label>
                    <input type="text" name="email" required><br/>
                    <label>centro: </label>
                    <input type="text" name="center" required><br/>
                    <label>password: </label>
                    <input type="password" name="password" required/><br/>
                    <label>historial medico: </label>
                    <textarea rows="4" cols="50" name="medicalhistory"></textarea><br/>
                    <input type="radio" name="usuario" value="paciente" checked/>paciente<br/>
                    <input type="radio" name="usuario" value="medico"/>medico<br/>
                    <input type="submit" value="registrar"><br/>
                </form>

                <form action="/">
                    <input type="submit" value="inicio">
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>