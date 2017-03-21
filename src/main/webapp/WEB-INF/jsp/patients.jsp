<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>Users</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<h1>Hello</h1>

<h2>Patients</h2>
<%
    for (Patient patient : (List<Patient>)request.getAttribute("patients")) {
        out.println((patient.getName() + "<br>")); ;
        out.println((patient.getSurname() + "<br>")); ;
    }
%>


</body>
</html>