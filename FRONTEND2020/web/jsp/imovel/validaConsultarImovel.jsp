<%-- 
    Document   : validaConsultarDependente
    Created on : 25/08/2017, 19:54:19
    Author     : ProfAlexandre
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.bean.Imovel"%>
<%@page import="br.com.fatec.controler.ControleImovel"%>

<%
    String nome = request.getParameter("NOME");
    Imovel  imo = new Imovel(0,"",nome,0);
    ControleImovel imoCont = new ControleImovel();
    List<Imovel> imos = imoCont.listaImovel(imo);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + imo.getProprietario() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA IMOVEL</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome Proprietario</th>
                  <th data-field="Endereco">Endereco</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(imos.isEmpty())) { %>    
                <tbody>
                    <% for (Imovel listaImo : imos) { %>
                        <tr>
                            <td><%=listaImo.getId()%></td>
                            <td><%=listaImo.getProprietario()%></td>
                            <td><%=listaImo.getEndereco()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                              <td><a href="excluirImovel.jsp?<%=url + listaImo.getId()%>">Excluir</a></td>
                              <td><a href="alterarImovel.jsp?<%=url + listaImo.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>