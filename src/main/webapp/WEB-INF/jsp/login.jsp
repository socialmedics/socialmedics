<%@ page import="com.socialMedicals.entity.Patient" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>Users</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div>
    <form action="/login" method = "post">
        <label>email: </label>
        <input type="text" name="email" required><br />
        <label>password: </label>
        <input type="password" name="password" required/>
        <input type="submit" value="login"><br />
    </form>
    <form action="/">
        <input type="submit" value="inicio">
    </form>


</div>
</body>
</html>