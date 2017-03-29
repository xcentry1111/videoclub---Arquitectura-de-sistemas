<%-- 
    Document   : editar_cliente
    Created on : 22/11/2016, 06:20:24 PM
    Author     : Marlon
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Carnets"%>
<%@page import="Modelo.Clientes"%>
<%@page import="java.util.ArrayList"%>
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
        <jsp:include page="consulta_a_db_para_carnets.jsp" />

        <%
            ArrayList<Carnets> Listar = (ArrayList<Carnets>) session.getAttribute("Lista");
            ArrayList<Clientes> Lista_c = (ArrayList<Clientes>) session.getAttribute("Lista_c");

            /* 
            
            ACA SE RECUPERAN TODOS LOS VALORES EL ARRAYLIST LISTA_C QUE VIENEN, 
            DEL SERVLET EDITAR_CLIENTE, PARA DESPUES SER PASADOS COMO VALUE EN 
            CADA INPUT DEL FORMULARIO
            
             */
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
                carnet_id = ele.getCarnetid().getId();
                Documento = ele.getDocumento();
                Ciudad = ele.getCiudad();
                Direccion = ele.getDireccion();
                Usuario = ele.getUserId().getUsuario();

            }
        %>

        <div class="container bordes-form">
            <h1 class="titulo-forms text-center">Editar Cliente</h1>
            <hr>
            <br><br>
            <div class="row">

                <form method="POST" action="Guarda_edicion_cliente?id_editar=<%= Id + " " + Usuario%>" id="RCliente">

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
                            <input type="text" class="form-control" id="tel" placeholder="Telefono" name="telefono" value="<%= Telefono%>"/>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="em">Email</label>
                            <input type="text" class="form-control" id="em" placeholder="Email" name="email" value="<%= Email%>"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="carnet">Carnet</label>
                            <select class="form-control" name="carnet">
                                <option value="">Seleccione Carnet</option>

                                <% for (Carnets ele : Listar) {
                                        if (ele.getId() == carnet_id) {%>
                                <option value="<%=ele.getId()%>" selected="selected"><%= ele.getNumero()%></option>
                                <%} else {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNumero()%></option>
                                <%}%>
                                <% }%>
                            </select>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="documento">Documento</label>
                            <input type="text" class="form-control" id="documento" placeholder="Documento" name="documento" value="<%= Documento%>"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="ciudad">Ciudad</label>
                            <input type="text" class="form-control" id="ciudad" placeholder="Ciudad" name="ciudad" value="<%= Ciudad%>"/>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="fecha_n">Fecha de Nacimiento</label>
                            <input type="date" class="form-control" id="fecha_n" placeholder="Fecha de Nacimiento" name="fecha_n" value="<%= Fecha_nacimiento%>"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="dir">Dirección</label>
                            <input type="text" class="form-control" id="dir" placeholder="Direccion" name="direccion" value="<%= Direccion%>"/>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="foto">Foto</label>
                            <input type="file" id="foto" name="foto">
                        </div>

                    </div>


                    <button type="submit" class="btn btn-success col-md-offset-5 espacio-boton">Guardar</button>
                    <a href="Listar_clientes" class="btn btn-info col-md-offset-1 espacio-boton">Atrás</a>

                </form>
            </div>
        </div>
        <br><br><br><br><br><br>



        <jsp:include page="footer.jsp" />

    </body> 
</html>