<%-- 
    Document   : validaConsultarDependente
    Created on : 25/08/2017, 19:54:19
    Author     : ProfAlexandre
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.bean.Inquilino"%>
<%@page import="br.com.fatec.controler.ControleInquilino"%>

<%
    String nome = request.getParameter("NOME");
    Inquilino  inq = new Inquilino(0,nome);
    ControleInquilino inqCont = new ControleInquilino();
    List<Inquilino> inquis = inqCont.listaInquilino(inq);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + inq.getNome() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA INQUILINO</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(inquis.isEmpty())) { %>    
                <tbody>
                    <% for (Inquilino listaDep : inquis) { %>
                        <tr>
                            <td><%=listaDep.getId()%></td>
                            <td><%=listaDep.getNome()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                              <td><a href="excluirInquilino.jsp?<%=url + listaDep.getId()%>">Excluir</a></td>
                              <td><a href="alterarInquilino.jsp?<%=url + listaDep.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>