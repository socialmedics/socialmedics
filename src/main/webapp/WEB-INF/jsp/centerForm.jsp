<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Centros</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/css/tether.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class="container">
            <div class="m-y-2 border-bottom">
                <h1>Centros <small>Registrar</small></h1>
            </div>

            <form action="/centerForm" method="post">
                <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">Nombre del Centro</label>

                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="name" name="name" placeholder="Nombre del Centro">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="address" class="col-sm-2 col-form-label">Dirección</label>

                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="address" name="name" placeholder="Dirección">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="location" class="col-sm-2 col-form-label">Localidad</label>

                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="location" name="location" placeholder="Localidad">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="province" class="col-sm-2 col-form-label">Provincia</label>

                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="province" name="province" placeholder="Provincia">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="postalcode" class="col-sm-2 col-form-label">Código Postal</label>

                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="postalcode" name="postalcode" placeholder="Código Postal">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
