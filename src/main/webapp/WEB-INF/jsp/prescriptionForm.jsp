<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<div class="topnav">
    <a class="active" href="/doctorHome">Inicio</a>
    <a href="https://my.livechatinc.com" target="_blank">Live Chat</a>
</div>
<section class="text-muted" id="banner">
    <div class="input-center">
                <h1>Receta</h1>
        <div class="row" id="principal">
            <div class="col m3 offset-md-3">
                <form action="/prescriptionForm" method="post">
                    <table>
                        <tr>
                            <td>
                                Nombre:
                            </td>
                            <td>
                                <input type="text" placeholder="Nombre" name="name">
                            </td>
                            <td>
                                Email:
                            </td>
                            <td>
                                <input type="text" placeholder="Email" name="email">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Fecha:
                            </td>
                            <td>
                                <input type="text" placeholder="Fecha" name="historydate">
                            </td>
                            <td>
                                Hora:
                            </td>
                            <td>
                                <input type="text" placeholder="Hora" name="historytime">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Enfermedad:
                            </td>
                            <td>
                                <input placeholder="Diagnostico" name="illness">
                            </td>
                            <td>

                                Sexo:
                            </td>
                            <td>
                                <input type="text" placeholder="Sexo" name="sex">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Recetario:
                            </td>
                            <td>
                                <textarea placeholder="Medicamentos" name="medicament"></textarea>
                            </td>
                            <td>
                                <input class="btn btn-info" type="submit" value="Guardar Receta">
                            </td>
                        </tr>
                    </table>


                </form>
            </div>
            <div class="input-center">
            </div>
        </div>
    </div>
</section>
</body>
</html>
