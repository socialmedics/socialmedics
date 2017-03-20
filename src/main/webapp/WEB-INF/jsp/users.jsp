<%@ page import="com.socialMedicals.entity.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<head>

    <title>Spring Framework Guru</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<h1>Hello</h1>

<h2>Patients</h2>
<%
    for (User user : (List<User>)request.getAttribute("users")) {
        System.out.println((user.getName() + "<br>")); ;
    }
%>


</body>
</html>