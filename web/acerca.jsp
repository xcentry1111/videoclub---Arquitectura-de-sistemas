<%-- 
    Document   : acerca
    Created on : 9/09/2016, 09:17:46 AM
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
        <div class="container">
            <div class="panel panel-primary col-md-5">
                <div class="panel-heading">
                    <h1 class="panel-title"> <p class="titulo-acerca"><span class="glyphicon glyphicon-info-sign"></span>Acerca de Nosotros</p></h1>
                </div>
                <div class="panel-body">
                    <hr/>
                    <p class="texto-acerca">

                        Films Fender es una tienda que haciendo 
                        las cosas bien, contribuye el entretenimiento de sus clientes y brinda facilidad a las personas
                        , ofreciendo productos y servicios innovadores, competitivos y 
                        rentables para garantizar un desarrollo sostenible.</p>
                    <br><br>
                    <hr>
                </div>
            </div>
            <div class="col-md-4 col-md-offset-2">
                <img src="Imagenes/perro-cine.jpg" class="img-perro-cine">
            </div>
        </div>



        <br><br><br><br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body>
</html>
