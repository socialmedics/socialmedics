<%@ page import="com.socialMedicals.entity.Prescription" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
    <title>WelcomePatient</title>
</head>
<body>
<% Prescription prescription = (Prescription) request.getAttribute("prescription"); %>
<div class="topnav">
    <a class="active" href="/welcomePatient"><%= prescription.getName()%></a>
    <a href="/logoutPatient" id="login">Cerrar sesion</a>
</div>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1> Receta del Paciente:   <%= prescription.getName() %>
            </h1>
            <table>
                <tr>
                    <th>
                        Nombre:
                    </th>
                    <td>
                        <%= prescription.getName() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Email:
                    </th>
                    <td>
                        <%= prescription.getEmail() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Sexo:
                    </th>
                    <td>
                        <%= prescription.getSex() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Enfermedad:
                    </th>
                    <td>
                        <%= prescription.getIllness() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Medicamentos:
                    </th>
                    <td>
                        <%= prescription.getMedicament() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Fecha del Historial:
                    </th>
                    <td>
                        <%= prescription.getHistorydate() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Hora:
                    </th>
                    <td>
                        <%= prescription.getHistorytime() %>
                    </td>
                </tr>
                <tr>
                    <th>
                        Medico:
                    </th>
                    <td>
                        <%= prescription.getDoctor() + " ( " + prescription.getDepartment() + " )"%>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>

</body>
</html>