<%-- 
    Document   : quienes_somos
    Created on : 9/09/2016, 09:17:25 AM
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
    <body class="color-body-quienes">
        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />

        <div class="container">
            <div class="col-md-4">
                
                <div class="list-group">
                    <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading">Misión</h4>
                        <p class="list-group-item-text texto-quienes">Somos una empresa líder en el mercado, orientada a ofrecer la mejor calidad y variedad en productos y servicios de venta, brindándole a nuestros clientes las mejores opciones de compra.</p>
                    </a>
                    <a href="#" class="list-group-item">
                        <h4 class="list-group-item-heading">Visión</h4>
                        <p class="list-group-item-text texto-quienes">Ser la cadena de tiendas por departamentos en la región centroamericana que ofrezca la mejor calidad y variedad en servicios de venta y productos a sus clientes</p>
                    </a>

                    <img src="Imagenes/bannerQuienesSomos.png" class="img-quienes">
                    
                </div>
            </div>


            <div class="col-md-5 ">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1667.6751825267609!2d-75.566882
                        68267315!3d6.2078858921365345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbb
                        4db855e091e895!2sDVD+HOME+VIDEO!5e0!3m2!1ses!2ses!4v1473808403207" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>

        </div>
        <br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body>
</html>
