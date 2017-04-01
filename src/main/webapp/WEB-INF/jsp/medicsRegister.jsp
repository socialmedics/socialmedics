<%@ page import="java.util.List" %>
<%@ page import="com.socialMedicals.entity.Users" %>
<%@ page import="com.socialMedicals.entity.Medics" %>
<!DOCTYPE html>
<html>
<head>

    <title>RegisterDoctor</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div>
    <%Users users =(Users) request.getAttribute("lastUser");%>
    <form action="/medicsRegister" method = "post">

        <label>nombre: </label>
        <input type="text" name="name" value="<%= users.getName()%>" required><br />
        <label>apellido: </label>
        <input type="text" name="surname" value="<%=users.getSurname()%>" required><br />
        <label>email: </label>
        <input type="text" name="email" value="<%=users.getEmail()%>" required><br />
        <label>centro: </label>
        <input type="text" name="center" value="<%=users.getCenter()%>" required><br />
        <label>password: </label>
        <input type="password" name="password" value="<%=users.getPassword()%>" required/><br />
        <label>especialidad: </label>
        <input type="text" name="especialidad" required/><br />
        <label>identificacion: </label>
        <input type="password" name="access" required/><br />
        <input type="submit" value="registrar"><br />
    </form>
    <form action="/">
        <input type="submit" value="inicio">
    </form>
    <%
        for (Medics medics : (List<Medics>)request.getAttribute("medics")) {
            out.println((medics.getName() + "<br>")); ;
            out.println((medics.getEmail() + "<br>")); ;
        }
    %>
</div>
</body>
</html>