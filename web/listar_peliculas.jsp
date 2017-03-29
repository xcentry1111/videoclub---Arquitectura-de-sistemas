<%-- 
    Document   : listar_peliculas
    Created on : 9/09/2016, 09:04:23 AM
    Author     : Marlon
--%>

<%@page import="Modelo.Peliculas"%>
<%@page import="java.util.ArrayList"%>
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

        <h1 class="titulo-forms text-center">Listar Peliculas</h1><br><br><br>
        <div class="container">
            <%
                ArrayList<Peliculas> Listar = (ArrayList<Peliculas>) session.getAttribute("Lista");
            %>     
            <div class="table-responsive-no">
                <table class="table table-striped table-hover" id="peliculas">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Genero</th>
                            <th>Duracion</th>
                            <th>Estado</th>
                            <th>Ejemplar</th>
                            <th>Descripcion</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>

                        <% try {
                                for (Peliculas ele : Listar) {%>
                        <tr>
                            <td><%= ele.getNombre()%></td>
                            <td><%= ele.getGeneroId().getNombre()%></td>
                            <td><%= ele.getDuracion()%></td>
                            <td><%= ele.getEstado()%></td>
                            <td><%= ele.getEjemplar()%></td>
                            <td><%= ele.getDescripcion()%></td>
                    <form action="Ver_pelicula?id_ver=<%= ele.getId()%>" method="POST">
                        <td><button type="submit" class="btn btn-primary">Ver</button></td>
                    </form>

                    <form action="Editar_pelicula?id_editar=<%= ele.getId()%>" method="POST">
                        <td><button type="submit" class="btn btn-warning">Editar</button></td>
                    </form>

                    <td><a href="#" data-toggle="modal" data-target="#ModalEliminar<%= ele.getId()%>" class="btn btn-danger">Eliminar</a></td>

                    <div id="ModalEliminar<%= ele.getId()%>" class="modal fade" role="dialog">
                        <div class="modal-dialog modal-sm">
                            <form method="POST" action="" id="loginForm">

                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title text-center">Está Seguro?</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="col-lg-offset-3">
                                            <a class="btn btn-primary" href="Eliminar_pelicula?id_eliminar=<%= ele.getId()%>" >Si</a>
                                            <button type="button" class="btn btn-success" data-dismiss="modal">No</button>
                                        </div>

                                    </div>

                                </div>

                            </form>

                        </div>
                    </div>

                    </tr>

                    <% }%>


                    <% } catch (Exception e) {
                            e.printStackTrace();
                        }%>

                    </tbody>
                </table>
            </div>
        </div>

        <br><br><br><br><br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body> 
</html>
