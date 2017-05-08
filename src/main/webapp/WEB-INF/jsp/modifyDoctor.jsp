<%@ page import="com.socialMedicals.entity.Center" %>
<%@ page import="com.socialMedicals.entity.Medics" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>RegisterDoctor</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styleRegisterPatient.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a href="/modifyDoctor" class="active"><%= (String) request.getAttribute("name") %>
    </a>
    <a href="/timetable/<%=(Integer)request.getAttribute("id")%>">Horario</a>
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
    <a href="/logoutDoctor" id="login">Cerrar Sesion</a>
</div>
<div class="container">
    <%Medics medic =(Medics) request.getAttribute("doctor");%>
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <form action="/modifyDoctor" method = "post">
                <div class="form-group row">
                    <h4><label for="example-text-input" class="col-2 col-form-label "><strong>Nombre</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="name" value ="<%= medic.getName()%> " id="example-text-input" required>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="surname-input" class="col-2 col-form-label"><strong>Apellido</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="surname" value="<%=medic.getSurname()%>" id="surname-input" required>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="email-input" class="col-2 col-form-label"><strong>Correo</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="email" value="<%=medic.getEmail()%>" id="email-input" readonly="readonly" >
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="center-input" class="col-2 col-form-label"><strong>Centro</strong></label></h4>
                    <div class="col-7">
                        <select name="center" id="center-input" class="form-control">
                            <% for (Center center : (List<Center>) request.getAttribute("centers")) { %>
                            <%if(center.getName().equals(medic.getCenter())) { %>
                            <option value="<%= center.getName() %>" selected><%= center.getName() %></option>
                            <% }else{ %>
                            <option value="<%= center.getName() %>"><%= center.getName() %></option>
                            <% } %>
                            <% } %>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="password-input" class="col-2 col-form-label"><strong>Clave</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="password" name="password" value="<%=medic.getPassword()%>" id="password-input" required>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="especialidad-input" class="col-2 col-form-label"><strong>Especialidad</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="text" name="especialidad" value="<%=medic.getEspecialidad()%>" id="especialidad-input" required>
                    </div>
                </div>
                <div class="form-group row">
                    <h4><label for="identificacion-input" class="col-2 col-form-label"><strong>Identificacion</strong></label></h4>
                    <div class="col-7">
                        <input class="form-control" type="password" name="access" value="<%=medic.getAccess()%>" id="identificacion-input" readonly="readonly">
                    </div>
                </div>
                <input type="submit" class="btn btn-info" value="modificar"><br />
            </form>
            <form action="/doctorHome">
                <input type="submit" class="btn btn-info" value="cancelar">
            </form>
        </div>
    </div>
</div>
</body>
</html>