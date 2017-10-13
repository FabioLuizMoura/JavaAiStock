<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Usuario</title>
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    </head>
    <body>
        <form name="consultarUsuario" action="validaConsultarUsuario.jsp" method="post">
            <label > Nome = &nbsp;</label><input type="text" class="form" name ="NOME" value="">
            <input type="submit" class="btn btn-default" name ="Enviar" value="Enviar"> <br>
        </form>
    </body>
</html>
