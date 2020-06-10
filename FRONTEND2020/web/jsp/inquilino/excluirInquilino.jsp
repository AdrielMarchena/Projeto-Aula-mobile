<%-- 
    Document   : excluirUsuario
    Created on : 31/08/2017, 09:57:18
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Inquilino"%>
<%@page import="br.com.fatec.controler.ControleInquilino"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Inquilino inq = new Inquilino(id,"");
    ControleInquilino inqCont = new ControleInquilino();
    inq = inqCont.excluiInquilino(inq);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarInquilino.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>