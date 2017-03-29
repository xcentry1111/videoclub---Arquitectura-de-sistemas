<%-- 
    Document   : registrar_prestamo
    Created on : 9/09/2016, 08:05:56 AM
    Author     : Marlon
--%>

<%@page import="Modelo.Empleados"%>
<%@page import="Modelo.Clientes"%>
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

        <jsp:include page="consulta_a_db_para_clientes,peliculas,empleados.jsp" />


        <%
            ArrayList<Clientes> Listar_clientes = (ArrayList<Clientes>) session.getAttribute("Lista_cli");
            ArrayList<Peliculas> Listar_peliculas = (ArrayList<Peliculas>) session.getAttribute("Lista_peli");
            ArrayList<Empleados> Listar_empleados = (ArrayList<Empleados>) session.getAttribute("Lista_em");
        %>


        <div class="container bordes-form">

            <h1 class="titulo-forms text-center">Registrar Préstamo</h1>
            <hr>
            <br><br>
            <div class="row">

                <form method="GET" action="Insercion_prestamo" id="RPrestamo">

                    <div class="col-md-12">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="cliente">Cliente</label>
                            <select class="form-control" name="cliente">
                                <option value="">Seleccione Cliente</option>
                                <% for (Clientes ele : Listar_clientes) {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre() + " " + ele.getApellido()%></option>
                                <% }%>
                            </select>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="pelicula">Pelicula</label>
                            <select class="form-control" name="pelicula">
                                <option value="">Seleccione Pelicula</option>
                                <% for (Peliculas ele : Listar_peliculas) {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre()%></option>
                                <% }%>
                            </select>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="fecha_devolucion">Fecha Devolución</label>
                            <input type="date" class="form-control" id="fecha_devolucion" placeholder="Fecha Devolución" name="fecha_devolucion"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="pago">Pago</label>
                            <input type="text" class="form-control" id="pago" placeholder="Pago" name="pago"/>
                        </div>

                    </div>



                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="empleado">Empleado</label>
                            <select class="form-control" name="empleado">
                                <option value="">Seleccione Empleado</option>
                                <% for (Empleados ele : Listar_empleados) {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre() + " "+ ele.getApellido() %></option>
                                <% }%>
                            </select>
                        </div>



                    </div>

                    <br><br><br>

                    <button type="submit" class="btn btn-success col-md-offset-5 espacio-boton">Guardar</button>
                    <a href="Listar_prestamos" class="btn btn-info col-md-offset-1 espacio-boton">Atrás</a>

                </form>
            </div>
        </div>
        <br><br><br><br><br><br>




        <jsp:include page="footer.jsp" />
    </body> 
</html>


