<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styleRegisterPatient.css">
</head>
<body>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1 class="col-form-label">Iniciar sesion</h1>
            <div>
                <form action="/login" method = "post">
                    <div class="form-group row">
                        <h4><label for="email-input" class="col-2 col-form-label "><strong>Email</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="text" name="email" id="email-input" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <h4><label for="password-input" class="col-2 col-form-label "><strong>Clave</strong></label></h4>
                        <div class="col-7">
                            <input class="form-control" type="password" name="password" id="password-input" required>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-info" value="login"><br />
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