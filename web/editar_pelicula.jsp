<%-- 
    Document   : editar_pelicula
    Created on : 25/11/2016, 07:38:56 AM
    Author     : Marlon
--%>

<%@page import="Modelo.Peliculas"%>
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
            ArrayList<Peliculas> Lista_p = (ArrayList<Peliculas>) session.getAttribute("Lista_p");

            /* 
            
            ACA SE RECUPERAN TODOS LOS VALORES EL ARRAYLIST LISTA_P QUE VIENEN, 
            DEL SERVLET EDITAR_PELICULA, PARA DESPUES SER PASADOS COMO VALUE EN 
            CADA INPUT DEL FORMULARIO
            
             */
            int Id = 0;
            String Nombre = "";
            int genero_id = 0;
            int Duracion = 0;
            String Estado = "";
            int Ejemplar = 0;
            String Descripcion = "";

            for (Peliculas ele : Lista_p) {
                Id = ele.getId();
                Nombre = ele.getNombre();
                genero_id = ele.getGeneroId().getId();
                Duracion = ele.getDuracion();
                Estado = ele.getEstado();
                Ejemplar = ele.getEjemplar();
                Descripcion = ele.getDescripcion();

            }
        %>
        <div class="container bordes-form">

            <h1 class="titulo-forms text-center">Editar Película</h1>
            <hr>
            <br><br>
            <div class="row">
                
                <form method="POST" action="Guarda_edicion_pelicula?id_editar=<%= Id %>" id="RPelicula">

                    <div class="col-md-12">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre" value="<%= Nombre%>"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="genero">Género</label>

                            <select class="form-control" name="genero">
                                <option value="">Seleccione Genero</option>
                                <% for (Generos ele : Listar){
                                        if (ele.getId() == genero_id) {%>
                                <option value="<%=ele.getId()%>" selected="selected"><%= ele.getNombre()%></option>
                                <%} else {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre()%></option>
                                <%}%>
                                <% }%>
                            </select>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="duracion">Duración</label>
                            <input type="text" class="form-control" id="duracion" placeholder="Duracion" name="duracion" value="<%= Duracion%>"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="estado">Estado</label>
                            <input type="text" class="form-control" id="estado" placeholder="Estado" name="estado" value="<%= Estado%>"/>
                        </div>

                    </div>



                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="ejemplar">Ejemplar</label>
                            <input type="text" class="form-control" id="ejemplar" placeholder="Ejemplar" name="ejemplar" value="<%= Ejemplar%>"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="descripcion">Descripción</label>
                            <input type="text" class="form-control" id="descripcion" placeholder="Descripción" name="descripcion" value="<%= Descripcion%>"/>
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