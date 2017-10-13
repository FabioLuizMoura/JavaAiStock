<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.ProdutoUsuarioControler"%>
<%@page import="br.com.aistock.bean.ProdutoUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
    String cod = request.getParameter("COD");
    int id = Integer.parseInt(cod);

    ProdutoUsuario proUsu = new ProdutoUsuario(id, (Usuario) session.getAttribute("UsuarioLogado"));
    ProdutoUsuarioControler proUsuCon = new ProdutoUsuarioControler();
    proUsu = proUsuCon.buscarProdutoUsuario(proUsu);
    proUsu = proUsuCon.excluirProdutoUsuario(proUsu);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir produto</title>
    </head>
    <body>
        <h1>Vinculo excluido com sucesso</h1>
    </body>
</html>