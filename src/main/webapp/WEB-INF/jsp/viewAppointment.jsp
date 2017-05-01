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
</head>
<body>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h2>Citas</h2>
            <% for (Date date : (List<Date>) request.getAttribute("appointments")) { %>
            <form action="/acceptAppointment" method="post">
                <input type="hidden" name="id" value=<%= date.getId() %>>
                <input type="text" name="patientname" value=<%= date.getPatientname() %>>
                <input type="text" name="patientemail" value=<%= date.getPatientemail() %>>
                <input type="text" name="day" value=<%= date.getDay() %>>
                <input type="text" name="hour" value=<%= date.getHour() %>>
                <input type="text" name="center" value=<%= date.getCenter() %>>
                <input type="submit" name="accept" value="accept">
                <input type="submit" name="accept" value="reject"><br>
            </form>
            <% } %>
            <form action="/doctorHome">
                <input type="submit" class="btn btn-info" value = "Home">
            </form>
        </div>
    </div>
</div>

</body>

</html>