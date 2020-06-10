<%-- 
    Document   : excluirUsuario
    Created on : 31/08/2017, 09:57:18
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.InquilinoImovel"%>
<%@page import="br.com.fatec.controler.ControleImoInq"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    InquilinoImovel inqImo = new InquilinoImovel(id,0,0,"");
    ControleImoInq inqImoCont = new ControleImoInq();
    inqImo = inqImoCont.excluirInquilinoImovel(inqImo);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoInqImo.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

