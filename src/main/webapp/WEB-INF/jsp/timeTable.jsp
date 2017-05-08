<%@ page import="com.socialMedicals.entity.TimeTable" %>
<%@ page import="com.socialMedicals.entity.Medics" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Horario de atenci&oacute;n</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/css/tether.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">

</head>

<body>
<div class="topnav">
    <a href="/modifyDoctor" class="active"><%= (String) request.getAttribute("name") %></a>
    <a href="/timetable/<%=(Integer)request.getAttribute("id")%>">Horario</a>
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
    <a href="/logoutDoctor" id="login">Cerrar Sesion</a>
</div>
<div class="container">
    <div class="my-5 border-bottom">
        <h1>Horarios de atenci&oacute;n
            <small>
                Dr. <%= ((Medics) request.getAttribute("medic")).getName() %> <%= ((Medics) request.getAttribute("medic")).getSurname() %>
            </small>
        </h1>
    </div>

    <div class="row my-5">
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>Semana</th>
                <th>Inicio</th>
                <th>Fin</th>
                <th>Acciones</th>
            </tr>
            </thead>

            <tbody>
            <form name="timeTableForm" id="timeTableForm" action="/timetable/create" method="POST">
                <input type="hidden" name="medicId" value="<%= ((Medics) request.getAttribute("medic")).getId() %>">
                <tr>
                    <td></td>
                    <td>
                        <div class="form-group">
                            <select name="weekday" id="weekday" class="form-control">
                                <option value="Lunes">Lunes</option>
                                <option value="Martes">Martes</option>
                                <option value="Mi&eacute;rcoles">Mi&eacute;rcoles</option>
                                <option value="Jueves">Jueves</option>
                                <option value="Viernes">Viernes</option>
                                <option value="S&aacute;bado">S&aacute;bado</option>
                                <option value="Domingo">Domingo</option>
                            </select>
                        </div>
                    </td>
                    <td>
                        <div class="form-group">
                            <input type="time" name="timeStart" id="timeStart" class="form-control">
                        </div>
                    </td>
                    <td>
                        <div class="form-group">
                            <input type="time" name="timeEnd" id="timeEnd" class="form-control">
                        </div>
                    </td>
                    <td>
                        <button class="btn btn-success" type="submit">Agregar</button>
                    </td>
                </tr>
            </form>

            <% for (TimeTable timeTable : (List<TimeTable>) request.getAttribute("timeTables")) { %>
            <tr>
                <td><%= timeTable.getId() %>
                </td>
                <td><%= timeTable.getWeekday() %>
                </td>
                <td><%= timeTable.getTimeStart().toString().substring(0, timeTable.getTimeStart().toString().length() - 3) %>
                </td>
                <td><%= timeTable.getTimeEnd().toString().substring(0, timeTable.getTimeEnd().toString().length() - 3) %>
                </td>
                <td>
                    <a id="timetable-delete" href="/timetable/delete/<%= timeTable.getId() %>"
                       class="btn btn-danger">X</a>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</div>
<script>
    $('#timeTableForm').submit(function () {
        $('#timeStart').val($('#timeStart').val() + ':00');
        $('#timeEnd').val($('#timeEnd').val() + ':00');

        return true;
    });
</script>
</body>
</html>
