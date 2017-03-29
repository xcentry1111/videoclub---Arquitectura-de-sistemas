<%-- 
    Document   : index_Logeado
    Created on : 24/08/2016, 11:49:33 PM
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

            <div class="well well-sm">
                <strong>Peliculas</strong>
                <div class="btn-group">
                    <a href="Listar_peliculas" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
                        </span> Listar</a> 
                </div>
            </div>

            <div id="products" class="row list-group">

                <div class="item  col-xs-4 col-lg-2">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="Imagenes/Will.gif" alt="" />
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading text-center">
                                En Busca de la felicidad</h4>
                            <p class="group inner list-group-item-text">
                                <!-- texto--></p>
                            <div class="row">

                                <p class="lead text-center">$10.000</p>


                                <a class="btn btn-primary col-md-offset-3" href="#">Prestar</a>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="item  col-xs-4 col-lg-2">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="Imagenes/sexto.gif" alt="" />
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading text-center">
                                Sexto Sentido</h4>
                            <p class="group inner list-group-item-text">
                                <!-- texto--></p>
                            <div class="row">

                                <p class="lead text-center">$10.000</p>


                                <a class="btn btn-primary col-md-offset-3" href="#">Prestar</a>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="item  col-xs-4 col-lg-2">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="Imagenes/resplandor.gif" alt="" />
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading text-center">
                                El Resplandor</h4>
                            <p class="group inner list-group-item-text">
                                <!-- texto--></p>
                            <div class="row">

                                <p class="lead text-center">$10.000</p>


                                <a class="btn btn-primary col-md-offset-3" href="#">Prestar</a>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="item  col-xs-4 col-lg-2">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="Imagenes/el padrino.gif" alt="" />
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading text-center">
                                El Padrino</h4>
                            <p class="group inner list-group-item-text">
                                <!-- texto--></p>
                            <div class="row">

                                <p class="lead text-center">$10.000</p>


                                <a class="btn btn-primary col-md-offset-3" href="#">Prestar</a>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="item  col-xs-4 col-lg-2">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="Imagenes/ojos.gif" alt="" />
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading text-center">
                                El secreto de sus ojos</h4>
                            <p class="group inner list-group-item-text">
                                <!-- texto--></p>
                            <div class="row">

                                <p class="lead text-center">$10.000</p>


                                <a class="btn btn-primary col-md-offset-3" href="#">Prestar</a>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="item  col-xs-4 col-lg-2">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="Imagenes/destinos.gif" alt="" />
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading text-center">
                                Los destinos cruzados</h4>
                            <p class="group inner list-group-item-text">
                                <!-- texto--></p>
                            <div class="row">

                                <p class="lead text-center">$10.000</p>


                                <a class="btn btn-primary col-md-offset-3" href="#">Prestar</a>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <br><br><br><br><br>


        <div class="container">

            <div class="panel panel-warning">
                <div class="panel-heading">Alquiler de Peliculas</div>
                <div class="panel-body">
                    <div class="col-md-8">
                        <img src="Imagenes/cine en casa.jpg" alt="imagen-cine-casa" class="img-thumbnail">
                    </div>
                    <div class="col-md-4">
                        <p>Muchas de las películas de FilmsFender están disponibles para ser 
                            solicitadas en préstamo o alquiler. Es el caso de las películas que son programadas y exhibidas 
                            en los diversos espacios de nuestras instalaciones en sus diferentes sedes, asimismo, 
                            puede registrarse en nuestro sistema y acceder a todos nuestro beneficios, estas son de un gran la calidad para el entretenimiento
                            suyo y de toda la familia. </p>
                    </div>
                </div>
            </div>
        </div>




        <br><br><br><br><br><br><br><br>

        <jsp:include page="footer.jsp" />
    </body> 
</html>
