<%-- 
    Document   : sesion_expirada
    Created on : 14/09/2016, 10:50:13 AM
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
                <h1 class="header-error-login">Su sesión Expiró!</h1>
            </article>
            <article>
                <img src="Imagenes/sesion_expiro.png" class="tamano-expiro">
            </article>
            <article>
            </article>
            <br><br><br><br><br><br><br><br>
        </section>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>