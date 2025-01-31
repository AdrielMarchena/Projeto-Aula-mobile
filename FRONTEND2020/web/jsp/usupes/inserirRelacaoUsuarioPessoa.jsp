<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.fatec.bean.Funcionario"%>
<%@page import="br.com.fatec.bean.Dependente"%>

<%@page import="br.com.fatec.controler.ControleFuncionario"%>
<%@page import="br.com.fatec.controler.ControleDependente"%>

<%
    ControleFuncionario funCont = new ControleFuncionario();
    List<Funcionario> funs = funCont.listaTodos();

    ControleDependente depCont = new ControleDependente();
    List<Dependente> deps = depCont.listarTodos();

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR USUARIO PESSOA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Usuario Pessoa</h1>
            <form name="inseriUsuarioPessoa" action="validaRelacaoUsuarioPessoa.jsp" method="POST">
                <table>
                    <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_PESSOA" class="browser-default">
                                <% for (PessoaFisica pes : pess) { %>
                                    <option value="<%=pes.getIdPessoa()%>"><%=pes.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_USUARIO" class="browser-default">
                                <% for (Usuario usu : usus) { %>
                                    <option value="<%=usu.getId()%>"><%=usu.getNome()%></option>
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
