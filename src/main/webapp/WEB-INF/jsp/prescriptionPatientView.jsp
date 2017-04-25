<%@ page import="com.socialMedicals.entity.Prescription" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>WelcomePatient</title>
</head>
<body>

<div class="container">
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <% for (Prescription prescription : (List<Prescription>) request.getAttribute("prescriptionList")) {
            %>
            <form action="/prescriptionPatientView" method="post">
                <input type="hidden" name="date" value= <%= prescription.getHistorydate() %>>
                <input type="hidden" name="time" value= <%= prescription.getHistorytime() %>>
                <Button class="btn btn-link" name="email"
                        value=<%= prescription.getEmail() %> type="submit"><%= prescription.getName() + " " + prescription.getHistorydate() + " " + prescription.getDepartment() %>
                </Button>
            </form>
            <%
                }
            %>
        </div>
    </div>
</div>

</body>
</html>