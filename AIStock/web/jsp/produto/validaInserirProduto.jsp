<%@page import="java.lang.Integer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
    String nome = request.getParameter("NOME");
    Produto pro = new Produto(0,nome);
    ProdutoControler procont = new ProdutoControler();
    pro = procont.inserirProduto(pro);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Id      =  <%=pro.getId()%></h1>
        <h1>Nome    =  <%=pro.getNome()%></h1>
    </body>
</html>
