<%-- 
    Document   : listar_clientes_autocomplete
    Created on : 28/10/2016, 06:10:50 PM
    Author     : Marlon
--%>

<%@page import="java.util.*"%>
<%@page import="Modelo.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Video Club</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body onload="init()">
        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />

        <h1 class="titulo-forms text-center">Listar Clientes</h1><br><br><br>
        <div class="container">
            <form>
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong> Buscar: </strong></td>
                            <td><input type="text" size="20" id="complete-field" onkeyup="doCompletion();" autocomplete="off"> </td>
                        </tr>
                        <tr>
                    
                        <td id="auto-row" colspan="2"><table id="complete-table"/></table></td>
                </tr>

                </tbody>
                </table>

            </form>
        </div>

        <br>

        <div class="container">
            <%
                ArrayList<Clientes> Listar = (ArrayList<Clientes>) session.getAttribute("Lista");
            %>

            <div class="table-responsive-no">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Telefono</th>
                            <th>Email</th>
                            <th>Carnet</th>
                            <th>Documento</th>
                            <th>Ciudad</th>
                            <th>Dirección</th>
                            <th>Foto</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <% for (Clientes ele : Listar) {%>
                        <tr>
                            <td><%out.print(ele.getNombre()); %></td>
                            <td><%out.print(ele.getApellido()); %></td>
                            <td><%out.print(ele.getFechaNacimiento()); %></td>
                            <td><%out.print(ele.getTel()); %></td>
                            <td><%out.print(ele.getEmail()); %></td>
                            <td><%out.print("?"); %></td>
                            <td><%out.print(ele.getDocumento()); %></td>
                            <td><%out.print(ele.getCiudad()); %></td>
                            <td><%out.print(ele.getDireccion()); %></td>
                            <td><%out.print("?"); %></td>
                            <td><button type="submit" class="btn btn-primary">Ver</button></td>
                            <td><button type="submit" class="btn btn-warning">Editar</button></td>
                            <td><button type="submit" class="btn btn-danger">Eliminar</button></td>
                        </tr>
                        <% }
                            Listar.clear();%>
                    </tbody>
                </table>
            </div>
        </div>

        <br><br><br><br><br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body> 
</html>