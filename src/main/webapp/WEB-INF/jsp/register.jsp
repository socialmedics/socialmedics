<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>Users</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<h1>Registro</h1>
<div>
    <form action="/register" method = "post">
        <label>nombre: </label>
        <input type="text" name="name" required><br />
        <label>apellido: </label>
        <input type="text" name="surname" required><br />
        <label>email: </label>
        <input type="text" name="email" required><br />
        <label>centro: </label>
        <input type="text" name="center" required><br />
        <label>password: </label>
        <input type="password" name="password" required/><br />
        <label>historial medico: </label>
        <textarea rows="4" cols="50" name="medicalhistory"></textarea><br />
        <input type="radio" name="usuario" value="paciente" checked/>paciente<br />
        <input type="radio" name="usuario" value="medico"/>medico<br />
        <input type="submit" value="registrar"><br />
    </form>

    <form action="/">
        <input type="submit" value="inicio">
    </form>
</div>

<h2>Patients</h2>
<%
    for (Patient patient : (List<Patient>)request.getAttribute("patients")) {
        out.println((patient.getName() + "<br>")); ;
        out.println((patient.getEmail() + "<br>")); ;
    }
%>


</body>
</html>