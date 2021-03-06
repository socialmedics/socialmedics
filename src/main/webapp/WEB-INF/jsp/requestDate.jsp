<%@ page import="com.socialMedicals.entity.Center" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

    <title>SocialMedics</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.10.0/jquery.timepicker.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/css/tether.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.10.0/jquery.timepicker.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/">Inicio</a>
    <a href="/register">Registro</a>
    <a href="/centerForm">A&ntilde;adir un centro</a>
    <a href="/login" id="login">Iniciar sesion</a>
</div>
<div class="container" >
    <div class="row" id="principal">
        <div class="col m2 offset-md-5">
            <h1>Pedir cita</h1><br>
            <div id="border">
                <form action="/pedirCita" method="post">
                    <label>Fecha</label>
                    <div class="form-group row" id="sandbox-container">
                        <input type="text" class="form-control" name="day" id="requestdate">
                    </div>
                    <label>Hora: </label>
                    <div class="form-group row" id="hour-container">
                        <input type="text" class="form-control" name="hour">
                    </div>
                    <div class="form-group row">
                        <select name="center" id="center-input" class="form-control">
                            <option value="">-- Seleccionar centro --</option>
                            <% for (Center center : (List<Center>) request.getAttribute("centers")) { %>
                            <option value="<%= center.getName() %>"><%= center.getName() %>
                            </option>
                            <% } %>
                        </select>
                        <select name="doctor" id="doctor-input" class="form-control" disabled>
                            <option value="">-- Seleccionar medico --</option>
                        </select>

                    </div>
                    <div class="form-group row">
                        <input type="submit" class="botones" value="Pedir Cita">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $('#sandbox-container input').datepicker({});
</script>
<script>
    $('#hour-container input').timepicker({});
</script>
<script>
    var Select2Cascade = (function (window, $) {

        function Select2Cascade(parent, child, url, select2Options) {
            var afterActions = [];
            var options = select2Options || {};

            // Register functions to be called after cascading data loading done
            this.then = function (callback) {
                afterActions.push(callback);
                return this;
            };

            parent.select2(select2Options).on("change", function (e) {

                child.prop("disabled", true);
                var _this = this;

                $.getJSON(url.replace(':parentId:', $(this).val()), function (items) {
                    var newOptions = '<option value="">-- Seleccionar medico --</option>';
                    for (var id in items) {
                        newOptions += '<option value="' + items[id].name + '">' + items[id].name + '</option>';
                    }

                    child.select2('destroy').html(newOptions).prop("disabled", false)
                        .select2(options);

                    afterActions.forEach(function (callback) {
                        callback(parent, child, items);
                    });
                });
            });
        }

        return Select2Cascade;

    })(window, $);
    $('#center-input').select2();
    $('#doctor-input').select2();
    var options = {width: 'resolve'};
    new Select2Cascade($('#center-input'), $('#doctor-input'), '/doctorsByCenter?center=:parentId:', options);
</script>
</body>
</html>