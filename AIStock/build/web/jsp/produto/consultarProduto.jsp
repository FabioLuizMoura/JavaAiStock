<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Produto</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>

    <body>
        <div class="container">
            <form name="consultarProduto" action="validaConsultarProduto.jsp" method="post">
                <input type="text" class="form-control" name="NOME" placeholder="Nome" value=""> <br>
                <input type="submit" class="btn btn-primary btn-block" name="Enviar" value="Enviar"> <br>
            </form>
        </div>
    </body>

    </html>