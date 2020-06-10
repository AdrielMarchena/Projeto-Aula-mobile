<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - INQUILINO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR INQUILINO</h1>
        <form name="inserirInquilino" action="validaInserirInquilino.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
