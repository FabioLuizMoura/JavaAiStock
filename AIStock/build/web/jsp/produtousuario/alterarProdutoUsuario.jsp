<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.ProdutoUsuario"%>
<%@page import="br.com.aistock.controler.ProdutoUsuarioControler"%>

<%
    String cod = request.getParameter("COD");
    int id = Integer.parseInt(cod);
    ProdutoUsuario prousu = new ProdutoUsuario(id, (int) session.getAttribute("id"));
    ProdutoUsuarioControler prousuCon = new ProdutoUsuarioControler();
    prousu = prousuCon.buscarProdutoUsuario(prousu);
    ProdutoControler proCont = new ProdutoControler();
    Produto pro = new Produto(prousu.getIdProduto(), "");
    pro = proCont.buscarProduto(pro);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Produto - Sistema</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <form name="alterarProduto" class="jumbotron" action="validaAlterarProdutoUsuario.jsp" method="post">
                Nome: <input class="form-control" type="text" placeholder="Nome" name="NOME" value="<%=pro.getNome()%>" readonly> <br/>
                Quantidade: <input class="form-control" type="text" placeholder="Qtd" name="QTD" value="<%=prousu.getQtd()%>"> <br/>
                Preco: <input class="form-control" type="text" placeholder="Preco" name="PRECO" value="<%=prousu.getPreco()%>"> <br/>
                <input type="HIDDEN" name="ID" value="<%=prousu.getIdUsuPro()%>"> <br/>
                <input type="HIDDEN" name="IDPRODUTO" value="<%=pro.getId()%>"> <br/>
                <input class="btn btn-primary btn-block" type="submit" name="Enviar" value="OK">
            </form>
        </div>
    </body>
</html>