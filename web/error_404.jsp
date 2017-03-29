<%-- 
    Document   : error_404
    Created on : 12/09/2016, 10:50:58 PM
    Author     : Marlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Films Fender</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        
        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />
        
        <section class="center cont-error">
            <article>
                <h1 class="header-error">404</h1>
                <p class="error">ERROR</p>
            </article>
            <article>
                <img src="http://i62.tinypic.com/vovg1x.png" alt="Funny Face">
            </article>
            <article>
                <p class="ups">¡Ups! Ha ocurrido un error.</p>
            </article>
            <br><br><br><br><br><br><br><br>
        </section>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>
