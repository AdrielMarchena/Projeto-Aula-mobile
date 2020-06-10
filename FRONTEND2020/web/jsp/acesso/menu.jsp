<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.ControleUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usu = new Usuario(0,"",login,senha,"","");
    ControleUsuario usucont = new ControleUsuario();
    usu = usucont.validaUsuario(usu);
    session.setAttribute("UsuarioLogado",usu);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (!usu.getStatus().equals("")) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Controle de Usuario</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Controle de Usuario & Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Controle de Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Manter Controle de Inquilino</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown6'>Manter Controle de Imovel</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Manter Controle de Imovel & Inquilino</a>        
            
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> InseriUsuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } %>

            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> InseriUsuarioPessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } %>

            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> InseriPessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>

            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../inquilino/inserirInquilino.jsp"> InseriInquilino </a></li>
                    <li><a href="../inquilino/consultarInquilino.jsp"> ConsultaInquilino </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../pessoa/consultarInquilino.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>
            
             <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../imovel/inserirImovel.jsp"> InseriImovel </a></li>
                    <li><a href="../imovel/consultarImovel.jsp"> ConsultaImovel </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../pessoa/consultarImovel.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>
            
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../inqImo/inserirRelacaoInqImo.jsp"> InseriInquilinoImovel </a></li>
                    <li><a href="../inqImo/consultarRelacaoInqImo.jsp"> ConsultaInquilinoImovel </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../pessoa/consultarInquilino.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>

            
        <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>
