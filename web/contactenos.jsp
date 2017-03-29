<%-- 
    Document   : contactenos
    Created on : 9/09/2016, 09:17:00 AM
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
    <body class="color-body-contact">

        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />

        <div class="container-contact content-contac">
            <div class="row-contact header">
                <h1 class="text-h1-contact">CONTÁCTENOS</h1>
                <h3 class="text-h3-contact">En qué Podemos Ayudarte?</h3>
            </div>
            <div class="row-contact body">
                <form action="#" class="form-contact">
                    <ul>

                        <li>
                            <p class="left">
                                <label for="nombre">Nombre</label>
                                <input type="text" id="nombre" placeholder="Juan" />
                            </p>
                            <p class="pull-right">
                                <label for="apellido">Apellido</label>
                                <input type="text" id="apellido" placeholder="Pérez" />      
                            </p>
                        </li>

                        <li>
                            <p>
                                <label for="email">Email <span class="req">*</span></label>
                                <input type="email" placeholder="juan@gmail.com" id="email" />
                            </p>
                        </li>        
                        <li><div class="divider"></div></li>
                        <li>
                            <label for="com">Describa su problema</label>
                            <textarea cols="46" rows="3" name="comments" id="com"></textarea>
                            <small><strong>En este campo puede describir sus peticiones, quejas, sugerencias y reclamos, con gusto lo atenderemos.</strong></small>
                        </li>

                        <li>
                            <input class="btn-contact btn-submit" type="submit" value="Submit" />

                        </li>

                    </ul>
                </form>  
            </div>
        </div>

        <br><br><br><br><br><br><br><br>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>
