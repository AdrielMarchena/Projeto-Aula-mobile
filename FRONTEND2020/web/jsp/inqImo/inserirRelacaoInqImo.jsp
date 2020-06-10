<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.bean.Inquilino"%>
<%@page import="br.com.fatec.controler.ControleInquilino"%>
<%@page import="br.com.fatec.bean.Imovel"%>
<%@page import="br.com.fatec.controler.ControleImovel"%>

<%
    ControleInquilino inqCont = new ControleInquilino();
    List<Inquilino> inqs = inqCont.listaTodos();

    ControleImovel imoCont = new ControleImovel();
    List<Imovel> imos = imoCont.listaTodos();
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR INQUILINO IMOVEL</title>
    <body>
        <div class="container"/>
            <h1>Inseri Inquilino Imovel</h1>
            <form name="inseriInqImo" action="validaRelacaoInqImo.jsp" method="POST">
                <table>
                    <tr>
                        <td>Imovel:</td>
                        <td>
                            <select NAME ="ID_INQ" class="browser-default">
                                <% for (Imovel imo : imos) { %>
                                    <option value="<%=imo.getId()%>"><%=imo.getProprietario()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Inquilino:</td>
                        <td>
                            <select NAME="ID_IMO" class="browser-default">
                                <% for (Inquilino inq : inqs) { %>
                                    <option value="<%=inq.getId()%>"><%=inq.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
