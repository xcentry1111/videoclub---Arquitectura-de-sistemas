<%-- 
    Document   : error_login
    Created on : 24/08/2016, 08:48:19 PM
    Author     : Marlon
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Video Club</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        
        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />
        
        <section class="center cont-error">
            <article>
                <h1 class="header-error-login">ERROR</h1>
                <p class="error-login-p">Usuario No existe</p>
            </article>
            <article>
                <img src="Imagenes/150974-200 copia.png">
            </article>
            <article>
                <p class="ups-log">Usuario o Clave incorrecta</p>
            </article>
            <br><br><br><br><br><br><br><br>
        </section>
        
        <jsp:include page="footer.jsp" />
        
    </body>
</html>