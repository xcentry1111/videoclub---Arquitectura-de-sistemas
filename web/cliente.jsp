<%-- 
    Document   : cliente.jsp
    Created on : 21/10/2016, 10:38:33 AM
    Author     : Marlon
--%>

<!-- ESTE ARCHIVO MUESTRA LOS DATOS DE UN OBJETO CLIENTE -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información Cliente</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />
        
        <h1 class="titulo-forms text-center">Información Cliente</h1>
        
        <div class="container">
            <div class="col-md-offset-5"> 

                <br>
                <p>
                    <strong>Id:</strong>
                    ${requestScope.cliente.id}
                </p>

                <p>
                    <strong>Nombre:</strong>
                    ${requestScope.cliente.nombre}
                </p>

                <p>
                    <strong>Apellido:</strong>
                    ${requestScope.cliente.apellido}
                </p>

                <p>
                    <strong>Fecha de Nacimiento:</strong>
                    ${requestScope.cliente.fecha_nacimiento}
                </p>

                <p>
                    <strong>Telefono:</strong>
                    ${requestScope.cliente.tel}
                </p>

                <p>
                    <strong>Email:</strong>
                    ${requestScope.cliente.email}
                </p>

                <p>
                    <strong>Carnet:</strong>
                    ${requestScope.cliente.carnet_id}
                </p>

                <p>
                    <strong>Documento:</strong>
                    ${requestScope.cliente.documento}
                </p>

                <p>
                    <strong>Ciudad:</strong>
                    ${requestScope.cliente.ciudad}
                </p>

                <p>
                    <strong>Direccion:</strong>
                    ${requestScope.cliente.direccion}
                </p>

                <br>
                <p class="tamano-regresa">Regresa a <a href="Listar_clientes_autocomplete" class="tamano-regresa">Clientes</a>.</p>
            </div>
        </div>

        <br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body>
</html>
