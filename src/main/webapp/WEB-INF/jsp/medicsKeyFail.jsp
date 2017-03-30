<%@ page import="java.util.List" %>
<%@ page import="com.socialMedicals.entity.Users" %>
<%@ page import="com.socialMedicals.entity.Medics" %>
<!DOCTYPE html>
<html>
<head>

    <title>Users</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div>
    <form action="/medicsRegisterFail" method = "post">

        <label>nombre: </label>
        <input type="text" name="name" required><br />
        <label>apellido: </label>
        <input type="text" name="surname" required><br />
        <label>email: </label>
        <input type="text" name="email" required><br />
        <label>centro: </label>
        <input type="text" name="center" required><br />
        <label>password: </label>
        <input type="password" name="password" required><br />
        <label>especialidad: </label>
        <input type="text" name="especialidad" required/><br />
        <label>identificacion: </label>
        <input type="password" name="access" required/><br />
        <input type="submit" value="registrar"><br />
    </form>
    <form action="/">
        <input type="submit" value="inicio">
    </form>
</div>
</body>
</html>