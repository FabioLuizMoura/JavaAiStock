<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    float preco = Float.parseFloat(request.getParameter("PRECO"));
    int qtd = Integer.parseInt(request.getParameter("QTD"));

    Produto pro = new Produto(id,nome,preco,qtd);
    ProdutoControler proCont = new ProdutoControler();
    if(proCont.validaProduto(pro))
    pro = proCont.alterarProduto(pro);
%>