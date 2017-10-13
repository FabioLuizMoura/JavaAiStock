<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN - SISTEMA</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>

    <body>
        <div class="container" style="margin: 30px;">
            <div class="col-md-6" style="text-align: right">
                <img src="../../img/icon.svg" style="height: 100px; width: 100px;" alt="logo" />
            </div>

            <div class="col-md-6" style="text-align: left">
                <h1>Ai Stock</h1>
                <h6>Para um melhor controle de seus bens.</h6>
            </div>
        </div>
        <div class="container">
            <div class="container">
                <form name="LoginSistema" class="jumbotron col-md-4 col-md-offset-4" action="menu.jsp" method="post">
                    <input class="form-control" type="text" placeholder="Login" name="LOGIN" value=""> <br>
                    <input class="form-control" type="password" placeholder="Senha" name="SENHA" value=""> <br>
                    <input class="btn btn-primary btn-block" type="submit" name="Enviar" value="OK">
                </form>
            </div>
        </div>
    </body>

    </html>