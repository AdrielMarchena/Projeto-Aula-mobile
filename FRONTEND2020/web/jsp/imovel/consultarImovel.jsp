<%-- 
    Document   : consultaUsuario
    Created on : 25/08/2017, 19:48:39
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - IMOVEL</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR IMOVEL</h1>
       <form name="consultarImovel" action="validaConsultarImovel.jsp" method="post">
           Nome do Proprietario: <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
