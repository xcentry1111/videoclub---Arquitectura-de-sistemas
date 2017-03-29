<%-- 
    Document   : ver_pelicula
    Created on : 09/12/2016, 08:33:13 AM
    Author     : ficha1020611
--%>

<%@page import="java.util.*"%>
<%@page import="Modelo.Peliculas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />

        <h1 class="titulo-forms text-center">Información Película</h1>

        <%
            ArrayList<Peliculas> Lista_p = (ArrayList<Peliculas>) session.getAttribute("Lista_p");


            int Id = 0;
            String Nombre = "";
            String genero_id = "";
            int Duracion = 0;
            String Estado = "";
            int Ejemplar = 0;
            String Descripcion = "";

            for (Peliculas ele : Lista_p) {
                Id = ele.getId();
                Nombre = ele.getNombre();
                genero_id = ele.getGeneroId().getNombre();
                Duracion = ele.getDuracion();
                Estado = ele.getEstado();
                Ejemplar = ele.getEjemplar();
                Descripcion = ele.getDescripcion();

            }
        %>

        <div class="container">
            <div class="col-md-offset-5"> 
                <br>

                <p><strong>Nombre: </strong><%= Nombre%></p>


                <p><strong>Género: </strong><%= genero_id %></p>


                <p><strong>Duración: </strong><%= Duracion %></p>


                <p><strong>Estado: </strong><%= Estado %></p>


                <p><strong>Ejemplar: </strong><%= Ejemplar %></p>


                <p><strong>Descripción: </strong><%= Descripcion %></p>


                <br>
                <p class="tamano-regresa">Regresa a <a href="Listar_peliculas" class="tamano-regresa">Peliculas</a>.</p>
            </div>
        </div>

        <br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body>
</html>