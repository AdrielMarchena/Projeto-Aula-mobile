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
    inq = inqCont.buscaInquilinoPorId(inq);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - INQUILINO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR INQUILINO</h1>
        <form name="alterarInquilino" action="validaAlterarInquilino.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=inq.getNome()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=inq.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>