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
        <input type="text" name="name" required><br />
        <input type="text" name="surname" required/>
        <input type="submit" value="login">
    </form>

</div>
</body>
</html>