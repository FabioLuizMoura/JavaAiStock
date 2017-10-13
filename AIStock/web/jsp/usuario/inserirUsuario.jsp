<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSERIR - SISTEMA</title>
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <form name="inserirUsuario" action="validaInserirUsuario.jsp" method="post">
                Nome: <input type="text" class="form-control" name="NOME" value=""> <br>
                Login: <input type="text" class="form-control" name="LOGIN" value=""> <br>
                Senha: <input type="password" class="form-control" name="SENHA" value=""> <br>
                Status: <input type="text" class="form-control" name="STATUS" value=""> <br>
                Tipo: <input type="text" class="form-control" name="TIPO" value=""> <br>
                <input type="submit" class="form-control" name="Enviar" value="OK">
            </form>
        </div>
    </body>
</html>
