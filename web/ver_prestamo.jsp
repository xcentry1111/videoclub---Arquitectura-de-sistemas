<%-- 
    Document   : ver_prestamo
    Created on : 09/12/2016, 08:46:25 AM
    Author     : ficha1020611
--%>

<%@page import="java.util.*"%>
<%@page import="Modelo.*"%>
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

        <h1 class="titulo-forms text-center">Información Prestamo</h1>

        <%
            ArrayList<Prestamos> Lista_pres = (ArrayList<Prestamos>) session.getAttribute("Lista_pres");

            int Id = 0;
            String ClienteNombre = "";
            String ClienteApellido = "";
            
            String PeliculaNombre = "";
            
            Date Fecha_devolucion = null;
            int Pago = 0;
            String EmpleadoNombre = "";
            String EmpleadoApellido = "";

            for (Prestamos ele : Lista_pres) {
                Id = ele.getId();
                
                ClienteNombre = ele.getClienteid().getNombre();
                ClienteApellido = ele.getClienteid().getApellido();
                
                PeliculaNombre = ele.getPeliculaid().getNombre();
                
                Fecha_devolucion = ele.getFechaDevolucion();
                Pago = ele.getPago();
                
                EmpleadoNombre = ele.getEmpleadoid().getNombre();
                EmpleadoApellido = ele.getEmpleadoid().getApellido();

            }
        %>

        <div class="container">
            <div class="col-md-offset-5"> 
                <br>

                <p><strong>Nombre del Cliente: </strong><%= ClienteNombre %> <%= ClienteApellido %></p>


                <p><strong>Nombre Pelicula: </strong><%= PeliculaNombre %></p>


                <p><strong>Fecha Devolución: </strong><%= Fecha_devolucion %></p>


                <p><strong>Pago: </strong><%= Pago %></p>


                <p><strong>Nombre del Empleado: </strong><%= EmpleadoNombre %> <%= EmpleadoApellido %></p>


                <br>
                <p class="tamano-regresa">Regresa a <a href="Listar_prestamos" class="tamano-regresa">Prestamos</a>.</p>
            </div>
        </div>

        <br><br><br><br><br><br><br>
        <jsp:include page="footer.jsp" />
    </body>
</html>