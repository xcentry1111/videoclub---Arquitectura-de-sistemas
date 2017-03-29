<%--
    Document   : listar_empleados
    Created on : 9/09/2016, 08:16:28 AM
    Author     : Marlon
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Empleados"%>
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

        <h1 class="titulo-forms text-center">Listar Empleados</h1><br><br><br>
        <div class="container">
            <%
                ArrayList<Empleados> Listar = (ArrayList<Empleados>) session.getAttribute("Lista");
            %>
            <div class="table-responsive-no">
                <table class="table table-striped table-hover" id="empleados">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Telefono</th>
                            <th>Email</th>
                            <th>Cargo</th>
                            <th>Documento</th>
                            <th>Fecha de Inicio</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <% try {
                                for (Empleados ele : Listar) {%>
                        <tr>
                            <td><%= ele.getNombre()%></td>
                            <td><%= ele.getApellido()%></td>
                            <td><%= ele.getTel()%></td>
                            <td><%= ele.getEmail()%></td>
                            <td><%= ele.getCargo()%></td>
                            <td><%= ele.getDocumento()%></td>
                            <td><%= ele.getFechaInicio()%></td>
                    <form action="Ver_empleado?id_ver=<%= ele.getId()%>" method="POST">
                        <td><button type="submit" class="btn btn-primary">Ver</button></td>
                    </form>
                    <form action="Editar_empleado?id_editar=<%= ele.getId()%>" method="POST">
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
                                            <a class="btn btn-primary" href="Eliminar_empleado?id_eliminar=<%= ele.getId()%>" >Si</a>
                                            <button type="button" class="btn btn-success" data-dismiss="modal">No</button>
                                        </div>

                                    </div>

                                </div>

                            </form>

                        </div>
                    </div>
                    </tr>
                    <% } %>
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








