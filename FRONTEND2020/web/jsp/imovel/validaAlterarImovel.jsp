<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Imovel"%>
<%@page import="br.com.fatec.controler.ControleImovel"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String endereco = request.getParameter("ENDERECO");
    String valor = request.getParameter("VALOR");
    String pbusca = request.getParameter("PBUSCA");

    Imovel imo = new Imovel(id,endereco,nome,Double.parseDouble(valor));
    ControleImovel imoCont = new ControleImovel();
    imo = imoCont.alteraImovel(imo);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarImovel.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>