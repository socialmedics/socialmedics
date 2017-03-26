<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<%@ page import="com.socialMedicals.entity.MedicalHistory" %>
<!DOCTYPE html>
<html>
<head>
    <title>Historial Médico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<h1>1. DATOS DE IDENTIFICACION DEL PACIENTE</h1>

<%--<%
    for (MedicalHistory medicalHistory : (List<MedicalHistory>)request.getAttribute("medicalhistory")) {
        out.println(medicalHistory.getDoctor());
    }
%>--%>

<select>
    <%
        for (MedicalHistory medicalHistory : (List
                <MedicalHistory>) request.getAttribute("medicalhistory")) {
    %>
    <option>
        <%=
        medicalHistory.getName()
        %>
    </option>
    <%
        }
    %>
</select>
<%--
    No puedo obtener datos de la tabla patients desde otro jsp
<select>
    <%
        for (Patient patient : (List
                <Patient>) request.getAttribute("patients")) {
    %>
    <option>
        <%=
        patient.getName()
        %>
    </option>
    <%
        }
    %>
</select>
--%>


<table>
    <tr>
        <td>
            Apellidos y Nombre:
        </td>
        <td>
            Sexo:
        </td>
        <td>
            Fecha de nacimiento:
        </td>
        <td>
            Lugar de nacimiento:
        </td>
    </tr>
    <tr>
        <td>
            Fecha de elaboracion del historial:
        </td>
        <td>
            Hora de elaboracion:
        </td>
        <td>
            Atentido por:
        </td>
    </tr>
</table>

</body>
</html>