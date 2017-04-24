<%@ page import="com.socialMedicals.entity.Date" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>SocialMedics</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <table>
                <% for (Date date : (List<Date>) request.getAttribute("appointments")) { %>
                <tr>
                    <th><%= date.getPatientname() %>
                    </th>
                    <th><%= date.getPatientemail() %>
                    </th>
                    <th><%= date.getDay() %>
                    </th>
                    <th><%= date.getHour() %>
                    </th>
                    <th>
                        <input type="submit" name="accept" value="accept">
                    </th>
                    <th>
                        <input type="submit" name="reject" value="reject">
                    </th>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
</div>
</body>

</html>