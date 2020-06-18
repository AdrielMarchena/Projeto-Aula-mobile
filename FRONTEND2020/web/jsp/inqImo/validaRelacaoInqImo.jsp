<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.InquilinoImovel"%>
<%@page import="br.com.fatec.controler.ControleImoInq"%>

<%
    
    int idInq = Integer.parseInt(request.getParameter("ID_INQ"));
    int idImo = Integer.parseInt(request.getParameter("ID_IMO"));
    String obs = request.getParameter("OBS");
    
    InquilinoImovel inqImo = new InquilinoImovel(0,idImo,idInq,obs);
    ControleImoInq inqImoCont = new ControleImoInq();
    inqImo = inqImoCont.inserirInquilinoImovel(inqImo);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoInqImo.jsp";
    response.sendRedirect(url);

%>