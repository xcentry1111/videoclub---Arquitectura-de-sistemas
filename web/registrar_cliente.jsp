<%-- 
    Document   : registrar_cliente
    Created on : 31/08/2016, 08:27:57 AM
    Author     : Marlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Carnets"%>
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
        %>

        <div class="container bordes-form">
            <h1 class="titulo-forms text-center">Registrar Cliente</h1>
            <hr>
            <br><br>
            <div class="row">

                <form method="GET" action="Insercion_cliente" id="RCliente">

                    <div class="col-md-12">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre"/>
                        </div>


                        <div class="form-group col-md-3">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" id="apellido" placeholder="Apellido" name="apellido"/>
                        </div>

                    </div>

                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="usuario">Usuario</label>
                            <input type="text" class="form-control" id="usuario" placeholder="Usuario" name="usuario"/>
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
                            <input type="text" class="form-control" id="tel" placeholder="Telefono" name="telefono"/>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="em">Email</label>
                            <input type="text" class="form-control" id="em" placeholder="Email" name="email"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="carnet">Carnet</label>
                            <select class="form-control" name="carnet">
                                <option value="">Seleccione Carnet</option>
                                <% for (Carnets ele : Listar) {%>
                                <option value="<%=ele.getId()%>"><%= ele.getNumero()%></option>
                                <% }%>
                            </select>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="documento">Documento</label>
                            <input type="text" class="form-control" id="documento" placeholder="Documento" name="documento"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="ciudad">Ciudad</label>
                            <input type="text" class="form-control" id="ciudad" placeholder="Ciudad" name="ciudad"/>
                        </div>

                    </div>


                    <div class="col-md-12 espacio-boton">

                        <div class="form-group col-md-3 col-md-offset-3">
                            <label for="fecha_n">Fecha de Nacimiento</label>
                            <input type="date" class="form-control" id="fecha_n" placeholder="Fecha de Nacimiento" name="fecha_n"/>
                        </div>

                        <div class="form-group col-md-3">
                            <label for="dir">Dirección</label>
                            <input type="text" class="form-control" id="dir" placeholder="Direccion" name="direccion"/>
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
