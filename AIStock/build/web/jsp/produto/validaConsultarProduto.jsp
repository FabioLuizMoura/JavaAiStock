<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
String nome = request.getParameter("NOME");
Produto  pro = new Produto(0,nome);
ProdutoControler procont = new ProdutoControler();
List<Produto> pros = procont.listarProduto(pro);
Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
%>

<html>
    <title>lista podutos</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <body>
        <table class="table striped responsive-table">
            <thead>
                <tr>
                    <th data-field="Id">Id</th>
                    <th data-field="Login">Nome</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <% if (!(pros.isEmpty())) { %>
                <tbody>
                    <% for (Produto listaProduto : pros) { %>
                        <tr>
                            <td>
                                <%=listaProduto.getId()%>
                            </td>
                            <td>
                                <%=listaProduto.getNome()%>
                            </td>
                            <td>
                                <a class="btn btn-default" href="../produto/alterarProduto.jsp?COD=<%= listaProduto.getId()%>">Alterar Produto</a>
                            </td>
                            <td>
                                <a class="btn btn-danger" href="../produto/excluirProduto.jsp?COD=<%= listaProduto.getId()%>">Excluir Produto</a>
                            </td>
                        </tr>
                        <% } %>
                </tbody>
                <% } %>
    </body>
</html>