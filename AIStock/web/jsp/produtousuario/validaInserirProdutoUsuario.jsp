<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.ProdutoUsuarioControler"%>
<%@page import="br.com.aistock.bean.ProdutoUsuario"%>
<%@page import="java.lang.Integer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
    int idProduto = Integer.parseInt(request.getParameter("IDPRODUTO"));
    double preco = Double.parseDouble(request.getParameter("PRECO"));
    int qtd = Integer.parseInt(request.getParameter("QTD"));

    ProdutoUsuario proUsu = new ProdutoUsuario(0, idProduto, qtd, preco, (int) session.getAttribute("id"));
    ProdutoUsuarioControler proUsuCon = new ProdutoUsuarioControler();
    proUsuCon.inserirProdutoUsuario(proUsu);
    proUsu.setPro(new ProdutoControler().buscarProduto(proUsu.getIdProduto()));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterações</title>
    </head>
    <body>
        <h1>Id      =  <%=proUsu.getIdUsuPro()%></h1>
        <h1>Nome    =  <%=proUsu.getPro().getNome()%></h1>
        <h1>Preco    =  <%=proUsu.getPreco()%></h1>
        <h1>Qtd    =  <%=proUsu.getQtd()%></h1>
    </body>
</html>
