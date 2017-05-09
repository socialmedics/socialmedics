<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
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
        <div class="col m2 offset-md-4">

            <h1>Pacientes</h1>

            <%
                for (Patient patient : (List<Patient>) request.getAttribute("patients")) {
            %>
            <form action="/patientMedicalHistory" method="post">
                <Button class="botones" name="email"
                        value=<%= patient.getEmail() %> type="submit"><%= patient.getName() + " " + patient.getSurname() %>
                </Button>
            </form>
            <%
                }
            %>

        </div>
    </div>
</div>

</body>
</html>
