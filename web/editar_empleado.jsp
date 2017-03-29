<%-- 
    Document   : editar_empleado
    Created on : 8/12/2016, 07:32:51 PM
    Author     : Marlon
--%>

<%@page import="Modelo.Empleados"%>
<%@page import="java.util.*"%>
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

        <%

            ArrayList<Empleados> Lista_em = (ArrayList<Empleados>) session.getAttribute("Lista_em");

            /* 
            
    ACA SE RECUPERAN TODOS LOS VALORES EL ARRAYLIST LISTA_EM QUE VIENEN, 
    DEL SERVLET EDITAR_EMPLEADO, PARA DESPUES SER PASADOS COMO VALUE EN 
    CADA INPUT DEL FORMULARIO
            
             */
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

        <div class="container bordes-form">

            <h1 class="titulo-forms text-center">Editar Empleado</h1>
            <hr>
            <br><br>
            <div class="row">

                <form method="POST" action="Guarda_edicion_empleado?id_editar=<%= Id + " " + Usuario%>" id="REmpleado">

                    <div class="col-md-12">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre" value="<%= Nombre%>"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" id="apellido" placeholder="Apellido" name="apellido" value="<%= Apellido%>"/>
                        </div>

                    </div>

                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="usuario">Usuario</label>
                            <input type="text" class="form-control" id="usuario" placeholder="Usuario" name="usuario" value="<%= Usuario%>"/>
                            <div id="Info"></div>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="contrasena">Contraseña</label>
                            <input type="password" class="form-control" id="contrasena" placeholder="Contraseña" name="contrasena"/>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="contrasena_confir">Confirmar Contraseña</label>
                            <input type="password" class="form-control" id="contrasena_confir" placeholder="Repita Contraseña" name="contrasena_confir"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="tel">Telefono</label>
                            <input type="text" class="form-control" id="tel" placeholder="Telefono" name="telefono" value="<%= Tel%>"/>
                        </div>

                    </div>

                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="em">Email</label>
                            <input type="text" class="form-control" id="em" placeholder="Email" name="email" value="<%= Email%>"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="documento">Documento</label>
                            <input type="text" class="form-control" id="documento" placeholder="Documento" name="documento" value="<%= Documento%>"/>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="cargo">Cargo</label>
                            <input type="text" class="form-control" id="cargo" placeholder="Cargo" name="cargo" value="<%= Cargo%>"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="fecha_ini">Fecha Inicio</label>
                            <input type="date" class="form-control" id="fecha_ini" placeholder="Fecha Inicio" name="fecha_ini" value="<%= Fecha%>"/>
                        </div>

                    </div>


                    <br><br><br>

                    <button type="submit" class="btn btn-success col-md-offset-5 espacio-boton">Guardar</button>
                    <a href="Listar_empleados" class="btn btn-info col-md-offset-1 espacio-boton">Atrás</a>

                </form>
            </div>
        </div>
        <br><br><br><br><br><br>




        <jsp:include page="footer.jsp" />
    </body> 
</html>