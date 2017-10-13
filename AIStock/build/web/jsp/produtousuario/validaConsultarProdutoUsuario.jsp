<%@page import="java.io.PrintWriter"%>
<%@page import="br.com.aistock.controler.ProdutoUsuarioControler"%>
<%@page import="br.com.aistock.bean.ProdutoUsuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
ProdutoUsuario proUsu = new ProdutoUsuario((int) session.getAttribute("id"));
ProdutoUsuarioControler proUsuCont = new ProdutoUsuarioControler();
List<ProdutoUsuario> proUsus = proUsuCont.listarProdutoUsuario(proUsu);
%>


<html>
    <title>lista produtos usuario</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <body>
        <table class="table striped responsive-table">
            <thead>
                <tr>
                    <th data-field="Id">Id</th>
                    <th data-field="Login">Nome</th>
                    <th data-field="Preco">Preco</th>
                    <th data-field="Qtd">Quantidade</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <% if (!(proUsus.isEmpty())) { %>
                <tbody>
                    <% for (ProdutoUsuario listaProduto : proUsus) { %>
                        <tr>
                            <td>
                                <%=listaProduto.getIdUsuPro()%>
                            </td>
                            <td>
                                <%=listaProduto.getPro().getNome()%>
                            </td>
                            <td>
                                <%=listaProduto.getPreco()%>
                            </td>
                            <td>
                                <%=listaProduto.getQtd()%>
                            </td>
                            <td>
                                <a class="btn btn-default" href="../produtousuario/alterarProdutoUsuario.jsp?COD=<%= listaProduto.getIdUsuPro()%>">Alterar Produto</a>
                            </td>
                            <td>
                                <a class="btn btn-danger" href="../produtousuario/excluirProdutoUsuario.jsp?COD=<%= listaProduto.getIdUsuPro()%>">Excluir Produto</a>
                            </td>
                        </tr>
                        <% } %>
                </tbody>
                <% } %>
    </body>
</html>