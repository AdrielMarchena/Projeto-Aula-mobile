<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - IMOVEL</title>
    <body>
       <div class="container"/>
        <h1>INSERIR IMOVEL</h1>
        <form name="inserirImovel" action="validaInserirImovel.jsp" method="post">
            PROPRIETARIO:<input type="text" name="NOME" value=""> <br>
            ENDERECO:<input type="text" name="ENDERECO" value=""> <br>
            VALOR:<input type="text" name="VALOR" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
