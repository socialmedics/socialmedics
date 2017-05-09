<%@ page import="com.socialMedicals.entity.Medics" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>SocialMedics</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
    <a href="/login" id="login">Iniciar sesion</a>
</div>

<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h2>Citas</h2>
            <form action="/changeDoctor" method="post">
                <select name="medics" id="medics-input" class="form-control">
                    <% for (Medics medics : (List<Medics>) request.getAttribute("medics")) { %>
                    <%if (medics.getCenter().equals(String.valueOf(request.getAttribute("center")))) { %>
                    <option value="<%= medics.getName() %>" selected><%= medics.getName() %>
                    </option>
                    <% } %>
                    <% } %>
                </select>
                <input type="submit" class="btn btn-info" value="Change">
            </form>
            <form action="/doctorHome">
                <input type="submit" class="btn btn-info" value="Home">
            </form>
        </div>
    </div>
</div>

</body>

</html>