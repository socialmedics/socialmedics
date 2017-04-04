<%@ page import="com.socialMedicals.entity.Patient" %>
<!DOCTYPE html>
<html>
<head>

    <title>RegisterDoctor</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styleRegisterPatient.css">
</head>
<body>
<div class="container">
    <%Patient patient =(Patient) request.getAttribute("patient");%>
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <form action="/modifyPatient" method ="post">
                <div class="form-group row">
                    <h4><label for="example-text-input" class="col-2 col-form-label "><strong>Nombre</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="name" value ="<%= patient.getName()%> " id="example-text-input" required>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="surname-input" class="col-2 col-form-label"><strong>Apellido</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="surname" value="<%=patient.getSurname()%>" id="surname-input" required>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="email-input" class="col-2 col-form-label"><strong>Correo</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="email" value="<%=patient.getEmail()%>" id="email-input" readonly="readonly">
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="center-input" class="col-2 col-form-label"><strong>Centro</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="center" value="<%=patient.getCenter()%>" id="center-input" required>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="password-input" class="col-2 col-form-label"><strong>Clave</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="password" name="password" value="<%=patient.getPassword()%>" id="password-input" required>
                    </div>
                </div>
                <input type="submit" class="btn btn-info" value="Modificar"><br />
            </form>
            <form action="/welcomePatient">
                <input type="submit" class="btn btn-info" value="Cancelar">
            </form>
        </div>
    </div>
</div>
</body>
</html>