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
    <form action="/patients" method = "post">
        <label>nombre: </label>
        <input type="text" name="name"><br />
        <label>apellido: </label>
        <input type="text" name="surname"><br />
        <label>email: </label>
        <input type="text" name="email"><br />
        <label>centro: </label>
        <input type="text" name="center"><br />
        <label>password: </label>
        <input type="password" name="password"/><br />
        <label>historial medico: </label>
        <textarea rows="4" cols="50" name="medicalhistory"></textarea><br />
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