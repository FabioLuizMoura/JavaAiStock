<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
    String cod = request.getParameter("COD");
    int id = Integer.parseInt(cod);
    Produto pro = new Produto(id,"");
    ProdutoControler proCont = new ProdutoControler();
    pro = proCont.buscarProduto(pro);
    pro = proCont.excluirProduto(pro);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir produto</title>
    </head>
    <body>
        <h1>produto excluido com sucesso = <%=pro.getNome()%> </h1>
    </body>
</html>