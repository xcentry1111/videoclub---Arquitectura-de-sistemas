<%-- 
    Document   : ver_empleado
    Created on : 09/12/2016, 07:42:30 AM
    Author     : ficha1020611
--%>

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

        <h1 class="titulo-forms text-center">Información Empleado</h1>

        <%
            ArrayList<Empleados> Lista_em = (ArrayList<Empleados>) session.getAttribute("Lista_em");

            int Id = 0;
            String Nombre = "";
            String Apellido = "";
            String Tel = "";
            String Email = "";
            String Cargo = "";
            String Documento = "";
            Date Fecha = null;
            String Usuario = "";
            String p = "";

            for (Empleados ele : Lista_em) {
                Id = ele.getId();
                Nombre = ele.getNombre();
                Apellido = ele.getApellido();
                Tel = ele.getTel();
                Email = ele.getEmail();
                Cargo = ele.getCargo();
                Documento = ele.getDocumento();
                Fecha = ele.getFechaInicio();
                Usuario = ele.getUserId().getUsuario();
            }
        %>

        <div class="container">
            <div class="col-md-offset-5"> 
                <br>

                <p><strong>Nombre: </strong><%= Nombre%></p>


                <p><strong>Apellido: </strong><%= Apellido%></p>


                <p><strong>Telefono: </strong><%= Tel%></p>


                <p><strong>Email: </strong><%= Email%></p>


                <p><strong>Cargo: </strong><%= Cargo%></p>


                <p><strong>Documento: </strong><%= Documento%></p>


                <p><strong>Fecha de Inicio: </strong><%= Fecha%></p>


                <p><strong>Usuario: </strong><%= Usuario%></p>



                <br>
                <p class="tamano-regresa">Regresa a <a href="Listar_empleados" class="tamano-regresa">Empleados</a>.</p>
            </div>
        </div>

        <br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body>
</html>