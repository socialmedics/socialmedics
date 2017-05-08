<%@ page import="com.socialMedicals.entity.Center" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de centros</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/css/tether.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
</head>

<body>
<div class="topnav">
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
    <a href="/login" id="login">Iniciar sesion</a>
</div>
<div class="container">
    <div class="my-5 border-bottom">
        <h1>Nuevo centro</h1>
    </div>

    <form action="/centerForm" method="post">
        <div class="form-group row">
            <label for="name" class="col-sm-2 col-form-label">Nombre del Centro</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="name" name="name" placeholder="Nombre del Centro">
            </div>
        </div>

        <div class="form-group row">
            <label for="address" class="col-sm-2 col-form-label">Direcci&oacute;n</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="address" name="address" placeholder="Direcci&oacute;n">
            </div>
        </div>

        <div class="form-group row">
            <label for="location" class="col-sm-2 col-form-label">Localidad</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="location" name="location" placeholder="Localidad">
            </div>
        </div>

        <div class="form-group row">
            <label for="province" class="col-sm-2 col-form-label">Provincia</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="province" name="province" placeholder="Provincia">
            </div>
        </div>

        <div class="form-group row">
            <label for="postalcode" class="col-sm-2 col-form-label">C&oacute;digo Postal</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="postalcode" name="postalcode" placeholder="C&oacute;digo Postal">
            </div>
        </div>

        <div class="form-group">
            <button class="botones" type="submit">A&ntildeadir centro</button>
        </div><br>

    </form>

    <br><h2>Listado de centros</h2>
    <div class="row my-5">
        <table id="newCenterTable">
            <thead>
            <tr>
                <th>#</th>
                <th>Nombre de Centro</th>
                <th>Direcci&oacute;n</th>
                <th>Localidad</th>
                <th>Provincia</th>
            </tr>
            </thead>

            <tbody>
            <% for (Center center: (List<Center>) request.getAttribute("centers")) { %>
            <tr>
                <td><%= center.getId() %></td>
                <td><%= center.getName() %></td>
                <td><%= center.getAddress() %></td>
                <td><%= center.getLocation() %></td>
                <td><%= center.getProvince() %></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
