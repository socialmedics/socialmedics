<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>WelcomePatient</title>
</head>
<body>
<<<<<<< HEAD
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1>Bienvenido <%= (String) request.getAttribute("name") %></h1>
            <form action="showMedicalHistory" method="post">
                <Button class="btn btn-link" type="submit" name="email" value=<%= (String) request.getAttribute("email") %>> Ver Historial
                    Medico
                </Button>
            </form>
        </div>
    </div>
</div>

</body>
</html>