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

<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1>Bienvenido <%= (String) request.getAttribute("name") %>
            </h1>
            <form action="/patientMedicalHistory" method="post">
                <Button class="btn btn-link" type="submit" name="email"
                        value=<%= (String) request.getAttribute("email") %>> Ver Historial Medico
                </Button>
            </form>
            <form action="/modifyPatient">
                <input type="submit" class="btn btn-link" value="modificarPerfil"><br/>
            </form>
            <a href="/pedirCita" class="btn btn-link">Pedir Cita</a>
            <a href="/prescriptionPatientView" class="btn btn-link">Ver Recetas</a>
        </div>
    </div>
</div>
<script type="text/javascript">
    window.__lc = window.__lc || {};
    window.__lc.license = 8805011;
    (function () {
        var lc = document.createElement('script');
        lc.type = 'text/javascript';
        lc.async = true;
        lc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.livechatinc.com/tracking.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(lc, s);
    })();
</script>
<script>
    if (window.Notification && Notification.permission !== "denied") {
        Notification.requestPermission(function (status) {
            var n = new Notification("Bienvenido", {
                body: 'Bienvenido <%= (String) request.getAttribute("name") %>'
            })
        })
    }
</script>
</body>
</html>