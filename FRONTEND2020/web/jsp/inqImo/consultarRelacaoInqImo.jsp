<%-- 
    Document   : consultaUsuario
    Created on : 25/08/2017, 19:48:39
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - INQ - IMO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR INQ - IMO</h1>
       <form name="consultarInqImo" action="validaConsultarRelacaoInqImo.jsp" method="post">
           Observação: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
