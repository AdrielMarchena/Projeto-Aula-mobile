<%-- 
    Document   : validaConsultarUsuario
    Created on : 25/08/2017, 19:54:19
    Author     : ProfAlexandre
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.bean.InquilinoImovel"%>
<%@page import="br.com.fatec.controler.ControleImoInq"%>

<%
    String obs = request.getParameter("OBS");
    InquilinoImovel inqImo = new InquilinoImovel(0,0,0,obs);
    ControleImoInq inqImoCont = new ControleImoInq();
    List<InquilinoImovel> inqImos = inqImoCont.listarInquilinoImovel(inqImo);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + inqImo.getObs() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdInqImo">Id</th>
                  <th data-field="IdImo">IdImo</th>
                  <th data-field="NomeProprietario">NomeProprietario</th>
                  <th data-field="IdInq">IdInq</th>
                  <th data-field="NomeInq">NomeInq</th>
                  <th data-field="Observacao">Observacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(inqImos.isEmpty())) { %>    
                <tbody>
                    <% for (InquilinoImovel listFD : inqImos) { %>
                        <tr>
                            <td><%=listFD.getIdImoInq()%></td>
                            <td><%=listFD.getIdImovel()%></td>
                            <td><%=listFD.getImovel().getProprietario()%></td>
                            <td><%=listFD.getIdinquilino()%></td>
                            <td><%=listFD.getInquilino().getNome()%></td>
                            <td><%=listFD.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoInqImo.jsp?<%=url + listFD.getIdImoInq()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoInqImo.jsp?<%=url + listFD.getIdImoInq()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>