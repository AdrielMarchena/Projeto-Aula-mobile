<%-- 
    Document   : excluirUsuario
    Created on : 31/08/2017, 09:57:18
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.bean.Inquilino"%>
<%@page import="br.com.fatec.controler.ControleInquilino"%>
<%@page import="br.com.fatec.bean.Imovel"%>
<%@page import="br.com.fatec.controler.ControleImovel"%>
<%@page import="br.com.fatec.bean.InquilinoImovel"%>
<%@page import="br.com.fatec.controler.ControleImoInq"%>

<%

    ControleImovel imoCont = new ControleImovel();
    List<Imovel> imos = imoCont.listaTodos();

    ControleInquilino inqCont = new ControleInquilino();
    List<Inquilino> inqs = inqCont.listaTodos();

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    InquilinoImovel inqImo = new InquilinoImovel(id,0,0,"");
    ControleImoInq contInqImo = new ControleImoInq();
    inqImo = contInqImo.buscarInquilinoImovelPorId(inqImo);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - INQ - IMO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - INQ IMO</h1>
        <form name="alterarInquilinoImovel" action="validaAlterarRelacaoInqImo.jsp" method="post">
            <table>
                <tr>
                    <td>Imovel:</td>
                        <td>
                            <select NAME="ID_IMO" class="browser-default">
                                <% for (Imovel imo : imos) { %>
                                <% if( imo.getId()== inqImo.getIdImovel()) { %>
                                        <option selected value="<%=imo.getId()%>"><%=imo.getProprietario()%></option>
                                    <% } else { %>
                                        <option value="<%=imo.getId()%>"><%=imo.getProprietario()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Inquilino:</td>
                        <td>
                            <select NAME ="ID_INQ" class="browser-default">
                                <% for (Inquilino inq : inqs) { %>
                                <% if( inq.getId() == inqImo.getIdinquilino()) { %>
                                        <option selected value="<%=inq.getId()%>"><%=inq.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=inq.getId()%>"><%=inq.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=inqImo.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=inqImo.getIdImoInq()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
