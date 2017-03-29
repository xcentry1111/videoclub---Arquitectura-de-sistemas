<%-- 
    Document   : ver_cliente
    Created on : 09/12/2016, 08:06:37 AM
    Author     : ficha1020611
--%>

<%@page import="Modelo.*"%>
<%@page import="java.util.*"%>
<%@page import="Modelo.Empleados"%>
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

        <h1 class="titulo-forms text-center">Información Cliente</h1>

        <%
            ArrayList<Clientes> Lista_c = (ArrayList<Clientes>) session.getAttribute("Lista_c");

            int Id = 0;
            String Nombre = "";
            String Apellido = "";
            Date Fecha_nacimiento = null;
            String Telefono = "";
            String Email = "";
            int carnet_id = 0;
            String Documento = "";
            String Ciudad = "";
            String Direccion = "";
            String Usuario = "";

            for (Clientes ele : Lista_c) {
                Id = ele.getId();
                Nombre = ele.getNombre();
                Apellido = ele.getApellido();
                Fecha_nacimiento = ele.getFechaNacimiento();
                Telefono = ele.getTel();
                Email = ele.getEmail();
                carnet_id = ele.getCarnetid().getNumero();
                Documento = ele.getDocumento();
                Ciudad = ele.getCiudad();
                Direccion = ele.getDireccion();
                Usuario = ele.getUserId().getUsuario();

            }
        %>

        <div class="container">
            <div class="col-md-offset-5"> 
                <br>

                <p><strong>Nombre: </strong><%= Nombre%></p>

                <p><strong>Apellido: </strong><%= Apellido%></p>

                <p><strong>Telefono: </strong><%= Telefono %></p>

                <p><strong>Email: </strong><%= Email %></p>

                <p><strong>Numero de Carnet: </strong><%= carnet_id %></p>

                <p><strong>Documento: </strong><%= Documento %></p>
                
                <p><strong>Ciudad: </strong><%= Ciudad %></p>
                
                <p><strong>Dirección: </strong><%= Direccion %></p>
                
                <p><strong>Usuario: </strong><%= Usuario %></p>
                <br>
                <p class="tamano-regresa">Regresa a <a href="Listar_clientes" class="tamano-regresa">Clientes</a>.</p>
            </div>
        </div>

        <br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body>
</html>