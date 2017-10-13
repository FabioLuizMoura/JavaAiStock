<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="java.util.List"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ProdutoControler pro = new ProdutoControler();
List<Produto> pros = pro.listarProduto(new Produto(0,""));
%>    

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Produto</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>

    <body>
        <div class="container">
            <form  name="inserirProduto" action="validaInserirProdutoUsuario.jsp" method="post">
                    <select NAME="IDPRODUTO" class="form-control">
                            <% for (Produto prod : pros) { %>
                                <option value="<%=prod.getId()%>"><%=prod.getNome()%></option>
                            <% } %>
                    </select> <br/>
                <input type="text" placeholder="Quantidade" class="form-control"  name="QTD" value=""> <br/>
                <input type="text" placeholder="Preco" class="form-control" name="PRECO" value=""> <br/>
                <input type="submit" name="Enviar" class="btn btn-primary btn-block" value="OK">
            </form>
        </div>
    </body>

</html>