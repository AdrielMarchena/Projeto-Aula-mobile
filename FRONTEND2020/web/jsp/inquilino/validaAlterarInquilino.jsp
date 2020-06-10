<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Inquilino"%>
<%@page import="br.com.fatec.controler.ControleInquilino"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String pbusca = request.getParameter("PBUSCA");

    Inquilino inq = new Inquilino(id,nome);
    ControleInquilino inqCont = new ControleInquilino();
    inq = inqCont.alteraInquilino(inq);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarInquilino.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>