<%-- 
    Document   : excluirUsuario
    Created on : 31/08/2017, 09:57:18
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Imovel"%>
<%@page import="br.com.fatec.controler.ControleImovel"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Imovel imo = new Imovel(id,"","",0);
    ControleImovel imoCont = new ControleImovel();
    imo = imoCont.excluiImovel(imo);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarImovel.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>