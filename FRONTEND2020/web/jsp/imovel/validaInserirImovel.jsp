<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Imovel"%>
<%@page import="br.com.fatec.controler.ControleImovel"%>

<%
    String nome = request.getParameter("NOME");
    String endereco = request.getParameter("ENDERECO");
    String valor = request.getParameter("VALOR");
    Imovel imo = new Imovel(0,endereco,nome,Double.parseDouble(valor));
    ControleImovel imoCont = new ControleImovel();
    imo = imoCont.inseriImovel(imo);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirImovel.jsp";
    response.sendRedirect(url);
%>
