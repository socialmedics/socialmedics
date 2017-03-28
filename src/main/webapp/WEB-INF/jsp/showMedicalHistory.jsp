<%@ page import="com.socialMedicals.entity.MedicalHistory" %>
<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
</head>
<body>
<h1> Historial del Paciente {} </h1>
<%

    MedicalHistory medicalHistory = (MedicalHistory)request.getAttribute("medicalHistory");
%>
</body>
</html>