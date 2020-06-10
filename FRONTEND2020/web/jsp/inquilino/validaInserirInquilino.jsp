<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Inquilino"%>
<%@page import="br.com.fatec.controler.ControleInquilino"%>

<%
    String nome = request.getParameter("NOME");
    Inquilino inq = new Inquilino(0,nome);
    ControleInquilino inqCont = new ControleInquilino();
    inq = inqCont.inseriInquilino(inq);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirInquilino.jsp";
    response.sendRedirect(url);
%>
