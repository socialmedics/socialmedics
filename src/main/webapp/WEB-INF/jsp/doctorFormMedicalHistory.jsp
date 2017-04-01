<!DOCTYPE html>
<html>
<head>
    <title>Historial Medico</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=UTF-8"/>
</head>
<body>
<h1>Formulario Historial Medico</h1>

<form action="/doctorFormMedicalHistory" method="post">
    <table>
        <tr>
            <th>
                Nombre:
            </th>
            <th>
                <input type="text" placeholder="Nombre" name="name">
            </th>
            <th>
                Sexo:
            </th>
            <th>
                <input type="text" placeholder="Sexo" name="sex">
            </th>
            <th>
                Email:
            </th>
            <th>
                <input type="text" placeholder="Email" name="email">
            </th>
        </tr>
        <tr>
            <td>
                Fecha de Nacimiento:
            </td>
            <td>
                <input type="text" placeholder="Fecha de Nacimiento" name="borndate">

            </td>
            <td>
                Nacionalidad:
            </td>
            <td>
                <input type="text" placeholder="Nacionalidad" name="nationality">

            </td>
            <td>
                Lugar de Nacimiento:
            </td>
            <td>
                <input type="text" placeholder="Lugar de Nacimiento" name="birthplace">

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
            <td>
                Doctor:
            </td>
            <td>
                <input type="text" placeholder="Doctor" name="doctor">
            </td>
        </tr>
    </table>
    <input type="submit" value="submit">
</form>

</body>
</html>