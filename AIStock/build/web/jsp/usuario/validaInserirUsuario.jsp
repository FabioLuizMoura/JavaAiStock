<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.UsuarioControler"%>

<%
    String nome = request.getParameter("NOME");
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String tipo = request.getParameter("TIPO");
    Usuario usu = new Usuario(0,login,nome,senha,status,tipo);
    UsuarioControler usucont = new UsuarioControler();
    usu = usucont.inserirUsuario(usu);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{
                font-family: arial;
                text-align: center;
                font-size: 23px;
            }
        </style>
    </head>
    <body>
        <h1>Id      =  <%=usu.getId()%></h1>
        <h1>Nome    =  <%=usu.getNome()%></h1>
        <h1>Login   =  <%=usu.getLogin()%></h1>
        <h1>Senha   =  <%=usu.getSenha()%></h1>
        <h1>Status  =  <%=usu.getStatus()%></h1>
        <h1>Tipo    =  <%=usu.getTipo()%></h1>
    </body>
</html>
