<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.InquilinoImovel"%>
<%@page import="br.com.fatec.controler.ControleImoInq"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idImo = Integer.parseInt(request.getParameter("ID_IMO"));
    int idInq = Integer.parseInt(request.getParameter("ID_INQ"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    InquilinoImovel inqImo = new InquilinoImovel(id,idImo,idInq,obs);
    ControleImoInq contInqImo = new ControleImoInq();
    inqImo = contInqImo.alterarInquilinoImovel(inqImo);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoInqImo.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    