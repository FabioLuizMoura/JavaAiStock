<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.UsuarioControler"%>

<%
    String cod = request.getParameter("COD");
    int id = Integer.parseInt(cod);
    Usuario usu = new Usuario(id,"","","","","");
    UsuarioControler usuCont = new UsuarioControler();
    usu = usuCont.buscarUsuario(usu);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALTERAR - SISTEMA</title>
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <form name="alterarUsuario" action="validaAlterarUsuario.jsp" method="post">
                Nome: <input type="text" class="form-control" name="NOME" value="<%=usu.getNome()%>"> <br>
                Login: <input type="text" name="LOGIN" class="form-control" value="<%=usu.getLogin()%>"> <br>
                Senha: <input type="password" name="SENHA" class="form-control" value="<%=usu.getSenha()%>"> <br>
                Status: <input type="text" name="STATUS" class="form-control" value="<%=usu.getStatus()%>"> <br>
                Tipo: <input type="text" name="TIPO" class="form-control" value="<%=usu.getTipo()%>"> <br>
                <input type="HIDDEN" name="ID" value="<%=usu.getId()%>" class="form-control"> <br>

                <input type="submit" name="Enviar" value="OK">
            </form>
        </div>
    </body>
</html>