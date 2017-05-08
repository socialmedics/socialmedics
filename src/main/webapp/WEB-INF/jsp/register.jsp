<%@ page import="com.socialMedicals.entity.Center" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>RegisterPatient</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styleRegisterPatient.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
    <a href="/login" id="login">Iniciar sesion</a>
</div>
<div class="basic-grey">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1>Nuevo usuario</h1>
            <div>
                <form id="registerForm" action="/register" method="post">
                    <div class="form-group row">
                        <h4><label for="example-text-input"
                                   class="col-2 col-form-label "><strong>Nombre</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="text" name="name" id="example-text-input" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="surname-input" class="col-2 col-form-label"><strong>Apellido</strong></label>
                        </h4>
                        <div class="col-7">
                            <input class="form-control" type="text" name="surname" id="surname-input" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="email-input" class="col-2 col-form-label"><strong>Correo</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="email" name="email" id="email-input">
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="center-input" class="col-2 col-form-label"><strong>Centro</strong></label></h4>
                        <div class="col-7">
                            <select name="center" id="center-input" class="form-control">
                                <% for (Center center : (List<Center>) request.getAttribute("centers")) { %>
                                <option value="<%= center.getName() %>"><%= center.getName() %></option>
                                <% } %>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="password-input" class="col-2 col-form-label"><strong>Clave</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="password" name="password" id="password-input">
                        </div>
                    </div>
                    <div id="medicExtension"></div>
                    <input id="patientButton" type="radio" name="usuario" value="patient" checked/><strong class="col-form-label">Paciente</strong><br/>
                    <input id="medicButton" type="radio" name="usuario" value="medico"/><strong class="col-form-label">Medico</strong><br/>
                </form>
            </div>
        </div>
    </div>
</div>

    <script>
        var medicButton = $("#medicButton");
        var patientButton = $("#patientButton");
        var medicExtension = $("#medicExtension");

        medicButton.on("click", function() {
            var inputs = "<div class=\"form-group row\">" +
                "<h4><label for=\"especialidad-input\" class=\"col-2 col-form-label\"><strong>Especialidad</strong></label></h4>" +
                "<div class=\"col-7\">" +
                "<input class=\"form-control\" type=\"text\" name=\"especialidad\" id=\"especialidad-input\" required>" +
            "</div>" +
            "</div>" +
            "<div class=\"form-group row\">" +
                "<h4><label for=\"identificacion-input\" class=\"col-2 col-form-label\"><strong>Identificacion</strong></label></h4>" +
                "<div class=\"col-7\">" +
                "<input class=\"form-control\" type=\"password\" name=\"access\" id=\"identificacion-input\" required>" +
            "</div>" +
            "</div>";
            medicExtension.append(inputs);
        });

        patientButton.on("click", function() {
            medicExtension.empty();
        });
    </script>
</body>
</html>