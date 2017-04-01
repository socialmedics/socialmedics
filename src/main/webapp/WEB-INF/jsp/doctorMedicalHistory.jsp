<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<%@ page import="com.socialMedicals.entity.MedicalHistory" %>
<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">

            <h1>PACIENTES</h1>

            <%
                for (Patient patient : (List<Patient>) request.getAttribute("patients")) {
            %>
            <form action="/doctorMedicalHistory" method="post">
                <Button class="btn btn-link" name="email"
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
