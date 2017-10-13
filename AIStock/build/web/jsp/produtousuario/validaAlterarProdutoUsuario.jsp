<%@page import="br.com.aistock.controler.ProdutoUsuarioControler"%>
<%@page import="br.com.aistock.bean.ProdutoUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idProduto = Integer.parseInt(request.getParameter("IDPRODUTO"));
    double preco = Double.parseDouble(request.getParameter("PRECO"));
    int qtd = Integer.parseInt(request.getParameter("QTD"));

    ProdutoUsuario proUsu = new ProdutoUsuario(id, idProduto, qtd, preco);
    ProdutoUsuarioControler proUsuCon = new ProdutoUsuarioControler();

    proUsu = proUsuCon.alterarProdutoUsuario(proUsu);
%>

<html>
    <body>
        <h1>Vinculo alterado com sucesso!</h1>
    </body>
</html>