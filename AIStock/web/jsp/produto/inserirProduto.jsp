<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Produto</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>

    <body>
        <div class="container">
            <form name="inserirProduto" action="validaInserirProduto.jsp" method="post">
                <input type="text" placeholder="Nome" class="form-control" name="NOME" value=""> <br/>
                <input type="submit" name="Enviar" class="btn btn-primary btn-block" value="OK">
            </form>
        </div>
    </body>

    </html>