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
            <h1 class="col-form-label">Registro</h1>
            <div>
                <form action="/register" method="post">
                    <div class="form-group row">
                        <h4><label for="example-text-input" class="col-2 col-form-label "><strong>Nombre</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="text" name="name" id="example-text-input" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="surname-input" class="col-2 col-form-label"><strong>Apellido</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="text" name="surname" id="surname-input" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="email-input" class="col-2 col-form-label"><strong>Correo</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="text" name="email" id="email-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="center-input" class="col-2 col-form-label"><strong>Centro</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="text" name="center" id="center-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="password-input" class="col-2 col-form-label"><strong>Clave</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="password" name="password" id="password-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="history-input" class="col-5 col-form-label"><strong>Historial Medico</strong></label></h4>
                        <div class="col-7">
                            <textarea class= "form-control" rows="4" cols="50" name="medicalhistory" id="history-input"></textarea>
                        </div>
                    </div>
                    <input type="radio" name="usuario" value="paciente" checked/><strong class="col-form-label">Paciente</strong><br/>
                    <input type="radio" name="usuario" value="medico"/><strong class="col-form-label">Medico</strong><br/>
                    <input type="submit" class="btn btn-info" value="registrar"><br/>
                </form>

                <form action="/">
                    <input type="submit" class="btn btn-info" value="inicio">
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>