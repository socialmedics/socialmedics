<%@ page import="com.socialMedicals.entity.MedicalHistory" %>
<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
</head>
<body>
<%
    MedicalHistory medicalHistory = (MedicalHistory)request.getAttribute("medicalHistory");
%>
<h1> Historial del Paciente:   <%= medicalHistory.getName() %> </h1>
    <table>
        <tr>
            <th>
                Nombre:
            </th>
            <td>
                <%= medicalHistory.getName() %>
            </td>
        </tr>
        <tr>
            <th>
                Email:
            </th>
            <td>
                <%= medicalHistory.getEmail() %>
            </td>
        </tr>
        <tr>
            <th>
                Sexo:
            </th>
            <td>
                <%= medicalHistory.getSex() %>
            </td>
        </tr>
        <tr>
            <th>
                Fecha de Nacimiento:
            </th>
            <td>
                <%= medicalHistory.getBorndate() %>
            </td>
        </tr>
        <tr>
            <th>
                Nacionalidad:
            </th>
            <td>
                <%= medicalHistory.getNationality() %>
            </td>
        </tr>
        <tr>
            <th>
                Lucar de Nacimiento:
            </th>
            <td>
                <%= medicalHistory.getBirthplace() %>
            </td>
        </tr>
        <tr>
            <th>
                Fecha del Historial:
            </th>
            <td>
                <%= medicalHistory.getHistorydate() %>
            </td>
        </tr>
        <tr>
            <th>
                Hora:
            </th>
            <td>
                <%= medicalHistory.getHistorytime() %>
            </td>
        </tr>
        <tr>
            <th>
                Medico:
            </th>
            <td>
                <%= medicalHistory.getDoctor() %>
            </td>
        </tr>
    </table>
</body>
</html>