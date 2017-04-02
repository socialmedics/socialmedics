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
<div class = "container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1>Bienvenido <%=(String)request.getAttribute("name")%> </h1>
            <%
                for (Appointment appointment : (List<Appointment>) request.getAttribute("appointments")){
             %>
             <p> <%= appointment.getAppointmentdate(); %> </p>
             <%
             }
             %>
        </div>
    </div>
</div>

</body>
</html>