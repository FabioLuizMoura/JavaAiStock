<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    Produto pro = new Produto(id,nome);
    ProdutoControler proCont = new ProdutoControler();
    if(proCont.validaProduto(pro))
    pro = proCont.alterarProduto(pro);
%>

<html>
    <body>
        <h1>Produto alterado com sucesso!</h1>
    </body>
</html>