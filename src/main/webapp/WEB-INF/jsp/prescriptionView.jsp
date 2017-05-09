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
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
    <a href="/logoutPatient" id="login">Cerrar sesion</a>
</div>
<section id="banner">
    <div class="container">
        <div class="row" id="principal">
            <%--<h1> <%= prescription.getName() %> </h1>--%>
            <div class="col m2 offset-md-5">
                <table>
                    <tr>
                        <th class="text-muted">
                            Nombre:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getName() %>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-muted">
                            Email:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getEmail() %>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-muted">
                            Sexo:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getSex() %>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-muted">
                            Enfermedad:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getIllness() %>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-muted">
                            Medicamentos:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getMedicament() %>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-muted">
                            Fecha del Historial:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getHistorydate() %>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-muted">
                            Hora:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getHistorytime() %>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-muted">
                            Medico:
                        </th>
                        <td class="text-muted">
                            <%= prescription.getDoctor() + " ( " + prescription.getDepartment() + " )"%>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</section>
</body>
</html>