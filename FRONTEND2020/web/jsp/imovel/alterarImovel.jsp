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
    ControleImovel imoCout = new ControleImovel();
    imo = imoCout.buscaImovelPorId(imo);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - IMOVEL</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR IMOVEL</h1>
        <form name="alterarImovel" action="validaAlterarImovel.jsp" method="post">
            Nome do proprietario: <input type="text" name="NOME" value="<%=imo.getProprietario()%>"> <br>
            Endereco: <input type="text" name="ENDERECO" value="<%=imo.getEndereco()%>"> <br>
            Valor Aluguel: <input type="text" name="VALOR" value="<%=imo.getValorAluguel()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=imo.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>