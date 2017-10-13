<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.UsuarioControler"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usu = new Usuario(0,"",login,senha,"","");
    UsuarioControler usucont = new UsuarioControler();
    usu = usucont.validaUsuario(usu);
    session.setAttribute("UsuarioLogado",usu);
    session.setAttribute("id", usu.getId());
%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MENU</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
    a{
        margin: 0px;
        padding: 0px;
    }
    h1{
        font-family: arial;
    }
    </style>
</head>

<body>
    <div class="container">
        <h1 style="text-align:center">Bem Vindo <%=usu.getNome()%>
        </h1>
        <% if (usu.getTipo().equals("ADM")) { %>
            <a class="btn btn-default col-md-6" href="../usuario/inserirUsuario.jsp">Inserir Usuario</a>
            <a class="btn btn-default col-md-6" href="../usuario/consultarUsuario.jsp">Consultar Usuario</a>
            <a class="btn btn-default col-md-6" href="../produto/inserirProduto.jsp">Inserir Produto</a>
            <a class="btn btn-default col-md-6" href="../produto/consultarProduto.jsp">Consultar Produto</a>
        <% } %>
            <a class="btn btn-default col-md-6" href="../produtousuario/inserirProdutoUsuario.jsp">Vincular Produto</a>
            <a class="btn btn-default col-md-6" href="../produtousuario/validaConsultarProdutoUsuario.jsp">Consultar Vinculo Produto</a>
    </div>
</body>

</html>