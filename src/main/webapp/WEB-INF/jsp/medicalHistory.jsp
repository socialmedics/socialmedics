<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<%@ page import="com.socialMedicals.entity.MedicalHistory" %>
<%@ page import="javax.xml.stream.Location" %>
<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
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


<%--
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
--%>

<form action="" method="post">
    <input type="text" placeholder="Nombre" name="name">
    <input type="text" placeholder="Sexo" name="sex">
    <input type="text" placeholder="Fecha de Nacimiento" name="borndate">
    <input type="text" placeholder="Nacionalidad" name="nationality">
    <input type="text" placeholder="Lugar de Nacimiento" name="birthplace">
    <input type="text" placeholder="Fecha del Informe" name="historydate">
    <input type="text" placeholder="Hora del Informe" name="historytime">
    <input type="text" placeholder="Doctor" name="doctor">
    <input type="submit" value="submit">
</form>

</body>
</html>