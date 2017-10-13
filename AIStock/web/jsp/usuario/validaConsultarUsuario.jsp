
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.UsuarioControler"%>
<%@page import="java.util.List"%>

<%
String nome = request.getParameter("NOME");
Usuario  usu = new Usuario(0,nome,"","","","");
UsuarioControler usucont = new UsuarioControler();
List<Usuario> usus = usucont.listarUsuario(usu);
Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
%>

<html>
    <title>Lista Usuários</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <body>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th data-field="Id">Id</th>
                    <th data-field="Login">Login</th>
                    <th data-field="Senha">Senha</th>
                    <th data-field="Status">Status</th>
                    <th data-field="Tipo">Tipo</th>
                    <th data-field="Excluir">Excluir</th>
                    <th data-field="Alterar">Alterar</th>
                </tr>
            </thead>
            <% if (!(usus.isEmpty())) { %>
                <tbody>
                    <% for (Usuario listaUsuario : usus) { %>
                        <tr>
                            <td>
                                <%=listaUsuario.getId()%>
                            </td>
                            <td>
                                <%=listaUsuario.getLogin()%>
                            </td>
                            <td>
                                <%=listaUsuario.getSenha()%>
                            </td>
                            <td>
                                <%=listaUsuario.getStatus()%>
                            </td>
                            <td>
                                <%=listaUsuario.getTipo()%>
                            </td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirUsuario.jsp?COD=<%=listaUsuario.getId()%>">Excluir</a></td>
                                <td><a href="alterarUsuario.jsp?COD=<%=listaUsuario.getId()%>">Alterar</a></td>
                                <% } %>
                        </tr>
                        <% } %>
                </tbody>
                <% } %>
    </body>

</html>