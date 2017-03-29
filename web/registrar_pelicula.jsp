<%-- 
    Document   : registrar_pelicula
    Created on : 9/09/2016, 07:52:55 AM
    Author     : Marlon
--%>

<%@page import="Modelo.Generos"%>
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

        <jsp:include page="consulta_a_db_para_generos.jsp" />

        <%
            ArrayList<Generos> Listar = (ArrayList<Generos>) session.getAttribute("Lista");
        %>
        <div class="container bordes-form">

            <h1 class="titulo-forms text-center">Registrar Película</h1>
            <hr>
            <br><br>
            <div class="row">

                <form method="GET" action="Insercion_pelicula" id="RPelicula">

                    <div class="col-md-12">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="genero">Género</label>

                            <select class="form-control" name="genero">
                                <option value="">Seleccione Genero</option>
                                <% for (Generos ele : Listar) {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre()%></option>
                                <% }%>
                            </select>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="duracion">Duración</label>
                            <input type="text" class="form-control" id="duracion" placeholder="Duracion" name="duracion"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="estado">Estado</label>
                            <input type="text" class="form-control" id="estado" placeholder="Estado" name="estado"/>
                        </div>

                    </div>



                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="ejemplar">Ejemplar</label>
                            <input type="text" class="form-control" id="ejemplar" placeholder="Ejemplar" name="ejemplar"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="descripcion">Descripción</label>
                            <input type="text" class="form-control" id="descripcion" placeholder="Descripción" name="descripcion"/>
                        </div>

                    </div>




                    <br><br><br>

                    <button type="submit" class="btn btn-success col-md-offset-5 espacio-boton">Guardar</button>
                    <a class="btn btn-info col-md-offset-1 espacio-boton" href="Listar_peliculas">Atrás</a>

                </form>
            </div>
        </div>
        <br><br><br><br><br><br>




        <jsp:include page="footer.jsp" />
    </body> 
</html>


