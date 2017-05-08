<%@ page import="com.socialMedicals.entity.Date" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>SocialMedics</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/doctorHome">Inicio</a>
    <a href="/modifyDoctor">Modificar perfil</a>
    <a href="/welcomePatient"><%= (String) request.getAttribute("name") %></a>
    <a href="/timetable/<%=(Integer)request.getAttribute("id")%>">Horario</a>
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
    <a href="/logoutDoctor" id="login">Cerrar sesion</a>
</div>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-1">
            <h2>Citas pendientes de aceptar</h2>
            <% for (Date date : (List<Date>) request.getAttribute("appointments")) { %>
            <form action="/acceptAppointment" method="post">
                <input class="form-control-static" type="hidden" name="id" value=<%= date.getId() %>>
                <input class="form-control-static" type="text" readonly name="patientname" value=<%= date.getPatientname() %>>
                <input class="form-control-static" type="text" readonly name="patientemail" value=<%= date.getPatientemail() %>>
                <input class="form-control-static" type="text" readonly name="day" value=<%= date.getDay() %>>
                <input class="form-control-static" type="text" readonly name="hour" value=<%= date.getHour() %>>
                <input class="form-control-static" type="text" readonly name="center" value=<%= date.getCenter() %>>
                <input type="submit" name="accept" value="accept">
                <input type="submit" name="accept" value="reasignar">
                <input type="submit" name="accept" value="reject"><br>
            </form>
            <% } %>

            <h2>Citas aceptadas</h2>
            <% for (Date date : (List<Date>) request.getAttribute("acceptedAppointments")) { %>
                <input class="form-control-static" type="text" readonly name="patientname" value=<%= date.getPatientname() %>>
                <input class="form-control-static" type="text" readonly name="patientemail" value=<%= date.getPatientemail() %>>
                <input class="form-control-static" type="text" readonly name="day" value=<%= date.getDay() %>>
                <input class="form-control-static" type="text" readonly name="hour" value=<%= date.getHour() %>>
                <input class="form-control-static" type="text" readonly name="center" value=<%= date.getCenter() %>><br>
            <% } %>

            <form action="/doctorHome">
                <input type="submit" class="btn btn-info" value = "Home">
            </form>
        </div>
    </div>
</div>

</body>

</html>