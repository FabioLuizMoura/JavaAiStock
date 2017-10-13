<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aistock.bean.Usuario"%>
<%@page import="br.com.aistock.controler.UsuarioControler"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String tipo = request.getParameter("TIPO");

    Usuario usu = new Usuario(id,nome,login,senha,status,tipo);
    UsuarioControler usuCont = new UsuarioControler();
    usu = usuCont.alterarUsuario(usu);
    String url = "../acesso/menu.jsp";
    response.sendRedirect(url);
%>