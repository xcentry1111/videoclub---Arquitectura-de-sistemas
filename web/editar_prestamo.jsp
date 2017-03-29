<%-- 
    Document   : editar_prestamo
    Created on : 30/11/2016, 08:18:00 AM
    Author     : ficha1020611
--%>

<%@page import="java.util.Date"%>
<%@page import="Modelo.Empleados"%>
<%@page import="Modelo.Clientes"%>
<%@page import="Modelo.Peliculas"%>
<%@page import="Modelo.Prestamos"%>
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
            ArrayList<Prestamos> Lista_pres = (ArrayList<Prestamos>) session.getAttribute("Lista_pres");

            /* 
            
            ACA SE RECUPERAN TODOS LOS VALORES EL ARRAYLIST LISTA_PRES QUE VIENEN, 
            DEL SERVLET EDITAR_PRESTAMO, PARA DESPUES SER PASADOS COMO VALUE EN 
            CADA INPUT DEL FORMULARIO
            
             */
            int Id = 0;
            int cliente_id = 0;
            int pelicula_id = 0;
            Date Fecha_devolucion = null;
            int Pago = 0;
            int empleado_id = 0;

            for (Prestamos ele : Lista_pres) {
                Id = ele.getId();
                cliente_id = ele.getClienteid().getId();
                pelicula_id = ele.getPeliculaid().getId();
                Fecha_devolucion = ele.getFechaDevolucion();
                Pago = ele.getPago();
                empleado_id = ele.getEmpleadoid().getId();

            }
        %>


        <div class="container bordes-form">

            <h1 class="titulo-forms text-center">Editar Préstamo</h1>
            <hr>
            <br><br>
            <div class="row">

                <form method="POST" action="Guarda_edicion_prestamo?id_editar=<%= Id %>" id="RPrestamo">

                    <div class="col-md-12">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="cliente">Cliente</label>
                            <select class="form-control" name="cliente">
                                <option value="">Seleccione Cliente</option>
                                <% for (Clientes ele : Listar_clientes) {
                                        if (ele.getId() == cliente_id) {%>
                                <option value="<%=ele.getId()%>" selected="selected"><%= ele.getNombre() + " " + ele.getApellido()%></option>
                                <% } else {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre() + " " + ele.getApellido()%></option>
                                <%}%>
                                <%}%>
                            </select>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="pelicula">Pelicula</label>
                            <select class="form-control" name="pelicula">
                                <option value="">Seleccione Pelicula</option>
                                <% for (Peliculas ele : Listar_peliculas) {
                                        if (ele.getId() == pelicula_id) {%>
                                <option value="<%=ele.getId()%>" selected="selected"><%= ele.getNombre()%></option>
                                <% } else {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre()%></option>
                                <% }%>
                                <%}%>
                            </select>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="fecha_devolucion">Fecha Devolución</label>
                            <input type="date" class="form-control" id="fecha_devolucion" placeholder="Fecha Devolución" name="fecha_devolucion" value="<%= Fecha_devolucion%>"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="pago">Pago</label>
                            <input type="text" class="form-control" id="pago" placeholder="Pago" name="pago" value="<%= Pago%>"/>
                        </div>

                    </div>



                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="empleado">Empleado</label>
                            <select class="form-control" name="empleado">
                                <option value="">Seleccione Empleado</option>
                                <% for (Empleados ele : Listar_empleados) {
                                        if (ele.getId() == empleado_id) {%>
                                <option value="<%=ele.getId()%>" selected="selected"><%= ele.getNombre() + " " + ele.getApellido()%></option>
                                <% } else {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNombre() + " " + ele.getApellido()%></option>
                                <% }%>
                                <%}%>
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