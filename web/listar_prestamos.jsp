<%-- 
    Document   : listar_prestamos
    Created on : 9/09/2016, 09:07:29 AM
    Author     : Marlon
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Prestamos"%>
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

        <h1 class="titulo-forms text-center">Listar Prestamos</h1><br><br><br>
        <div class="container">
            <%
                ArrayList<Prestamos> Listar = (ArrayList<Prestamos>) session.getAttribute("Lista");
            %>

            <div class="table-responsive-no">
                <table class="table table-striped table-hover" id="prestamos">
                    <thead>
                        <tr>
                            <th>Cliente</th>
                            <th>Pelicula</th>
                            <th>Fecha Devolucion</th>
                            <th>Pago</th>
                            <th>Empleado</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <% try {
                                for (Prestamos ele : Listar) {%>
                        <tr>
                            <td><%= ele.getClienteid().getNombre() + " " + ele.getClienteid().getApellido()%></td>
                            <td><%= ele.getPeliculaid().getNombre()%></td>
                            <td><%= ele.getFechaDevolucion()%></td>
                            <td><%= ele.getPago()%></td>
                            <td><%= ele.getEmpleadoid().getNombre() + " " + ele.getEmpleadoid().getApellido()%></td>
                    <form action="Ver_prestamo?id_ver=<%= ele.getId()%>" method="POST">
                        <td><button type="submit" class="btn btn-primary">Ver</button></td>
                    </form>
                    <form action="Editar_prestamo?id_editar=<%= ele.getId()%>" method="POST">
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
                                            <a class="btn btn-primary" href="Eliminar_prestamo?id_eliminar=<%= ele.getId()%>" >Si</a>
                                            <button type="button" class="btn btn-success" data-dismiss="modal">No</button>
                                        </div>

                                    </div>

                                </div>

                            </form>

                        </div>
                    </div>

                    </tr>
                    <% } %>
                    <%} catch (Exception e) {
                            e.printStackTrace();
                        }%>

                    </tbody>
                </table>
            </div>

            <form action="generar_pdf_prestamos.jsp" target="_blank">
                <input type="submit" class="btn btn-primary" value="Generar PDF"/>
            </form>
        </div>

        <br><br><br><br><br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body> 
</html>
