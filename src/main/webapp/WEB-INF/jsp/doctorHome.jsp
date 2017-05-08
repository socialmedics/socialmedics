<!DOCTYPE html>
<html>
<head>
    <title>Pagina Principal</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a href="/modifyDoctor" class="active"><%= (String) request.getAttribute("name") %>
    </a>
    <a href="/timetable/<%=(Integer)request.getAttribute("id")%>">Horario</a>
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
    <a href="/logoutDoctor" id="login" >Cerrar Sesion</a>
</div>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <div class="btn-margin-top">
                <form action="/doctorMedicalHistory">
                    <input type="submit" class="btn btn-info" value="Ver historial de Pacientes"><br/>
                </form>
                <form action="/doctorFormMedicalHistory">
                    <input type="submit" class="btn btn-info" value="Redactar Historial Medico"><br/>
                </form>
                <form action="/prescriptionForm">
                    <input type="submit" class="btn btn-info" value="Redactar Recetas"><br/>
                </form>
                <form action="/viewAppointment">
                    <input type="submit" class="btn btn-info" value="viewAppointment">
                </form>
            </div>
        </div>
    </div>
</div>
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