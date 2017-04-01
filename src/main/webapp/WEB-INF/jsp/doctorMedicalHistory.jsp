<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<%@ page import="com.socialMedicals.entity.MedicalHistory" %>
<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
</head>
<body>
<h1>PACIENTES</h1>


<%
        for (Patient patient : (List<Patient>) request.getAttribute("patients")) {
%>
<form action="/doctorMedicalHistory" method="post">
    <Button name="email" value=<%= patient.getEmail() %> type="submit"><%= patient.getName() + " " + patient.getSurname() %> </Button>
</form>
<%
    }
%>


<%--<form action="/medicalHistoryForm" method="post">
    <input type="text" placeholder="Nombre" name="name">
    <input type="text" placeholder="Sexo" name="sex">
    <input type="text" placeholder="Fecha de Nacimiento" name="borndate">
    <input type="text" placeholder="Nacionalidad" name="nationality">
    <input type="text" placeholder="Lugar de Nacimiento" name="birthplace">
    <input type="text" placeholder="Fecha del Informe" name="historydate">
    <input type="text" placeholder="Hora del Informe" name="historytime">
    <input type="text" placeholder="Doctor" name="doctor">
    <input type="submit" value="submit">
</form>--%>

</body>
</html>