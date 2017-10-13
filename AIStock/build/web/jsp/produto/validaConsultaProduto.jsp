<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Produto"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.ProdutoControler"%>

<%
String nome = request.getParameter("NOME");
Produto  pro = new Produto(0,nome,0,0);
ProdutoControler procont = new ProdutoControler();
List<Produto> pros = procont.listarProduto(pro);
Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
%>

<html>
<%@include file="../../inc/materalizeWeb.inc" %>
    <title>lista podutos</title>

    <body>
        <table class="striped responsive-table">
            <thead>
                <tr>
                    <th data-field="Id">Id</th>
                    <th data-field="Login">Nome</th>
                    <th data-field="Preco">Preco</th>
                    <th data-field="Qtd">Quantidade</th>
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
                                <%=listaProduto.getPreco()%>
                            </td>
                            <td>
                                <%=listaProduto.getQtd()%>
                            </td>
                        </tr>
                        <% } %>
                </tbody>
                <% } %>
    </body>
</html>