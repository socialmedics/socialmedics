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
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a href="/welcomePatient" class="active"><%= (String) request.getAttribute("name") %></a>
    <a href="/modifyPatient">Perfil</a>
    <a href="/logoutPatient" id="login">Cerrar Sesion</a>
</div>
<%
    MedicalHistory medicalHistory = (MedicalHistory) request.getAttribute("medicalHistory");
%>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">

            <h1> Historial del Paciente:   <%= medicalHistory.getName() %>
            </h1>
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
                        Alergias:
                    </th>
                    <td>
                        <%= medicalHistory.getAllergy() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Enfermedad:
                    </th>
                    <td>
                        <%= medicalHistory.getIllness() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Diagnostico:
                    </th>
                    <td>
                        <%= medicalHistory.getDiagnosis() %>
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
                        <%= medicalHistory.getDoctor() + " ( " + medicalHistory.getDepartment() + " )"%>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
