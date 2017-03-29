<%-- 
    Document   : barra_nav
    Created on : 17/08/2016, 10:50:51 AM
    Author     : Marlon
--%>
<nav class="navbar navbar-default barra-estilos">
    <div class="container-fluid">
        <div class="col-md-offset-1">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.jsp" class="navbar-brand fuente-video">Films Fender</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">

                    <ul class="nav navbar-nav">
                        <%

                            //Recuperando el rol que viene del servlet Login
                            HttpSession s = request.getSession();

                            String Rol = "";
                            String Usuario = "";
                            if (s.getAttribute("Rol") == null) {
                                Rol = "";
                            } else {
                                Rol = (String) s.getAttribute("Rol");
                                Usuario = (String) s.getAttribute("Usuario");
                            }

                            if (Rol.equals("Admin")) {
                        %>
                        
                        <!-- OPCIONES PARA EL ADMIN-->
                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-briefcase" aria-hidden="true"></i> Empleados
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li role="presentation" class="dropdown-header">Empleados</li>
                                <li><a href="registrar_empleado.jsp" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                                <li><a href="Listar_empleados" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-users" aria-hidden="true"></i> Clientes
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li role="presentation" class="dropdown-header">Clientes</li>
                                <li><a href="registrar_cliente.jsp" class="texto-barra-d"> <i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                                <li><a href="Listar_clientes?pag=0" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-video-camera" aria-hidden="true"></i> Peliculas
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li role="presentation" class="dropdown-header">Peliculas</li>
                                <li><a href="registrar_pelicula.jsp" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                                <li><a href="Listar_peliculas" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-tasks" aria-hidden="true"></i> Prestamos
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li role="presentation" class="dropdown-header">Prestamos</li>
                                <li><a href="registrar_prestamo.jsp" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                                <li><a href="Listar_prestamos" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                            </ul>
                        </li>

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true" style="font-size:25px"></i><%= " " + Usuario%>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li><a href="Cerrar_Sesion" class="botones">Cerrar Sesión</a></li>
                            </ul>
                        </li>
                    </ul>

                    <!-- OPCIONES PARA EL EMPLEADO-->
                    
                    <%} else if (Rol.equals("Empleado")) {
                    %>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-users" aria-hidden="true"></i> Clientes
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                            <li role="presentation" class="dropdown-header">Clientes</li>
                            <li><a href="registrar_cliente.jsp" class="texto-barra-d"> <i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                            <li><a href="Listar_clientes?pag=0" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-video-camera" aria-hidden="true"></i> Peliculas
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                            <li role="presentation" class="dropdown-header">Peliculas</li>
                            <li><a href="registrar_pelicula.jsp" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                            <li><a href="Listar_peliculas" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-tasks" aria-hidden="true"></i> Prestamos
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                            <li role="presentation" class="dropdown-header">Prestamos</li>
                            <li><a href="registrar_prestamo.jsp" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                            <li><a href="Listar_prestamos" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                        </ul>
                    </li>

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true" style="font-size:25px"></i><%= " " + Usuario%>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li><a href="Cerrar_Sesion" class="botones">Cerrar Sesión</a></li>
                            </ul>
                        </li>
                    </ul>

                    <!-- OPCIONES PARA EL CLIENTE -->
                    
                    <%} else if (Rol.equals("Cliente")) {
                    %>


                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-video-camera" aria-hidden="true"></i> Peliculas
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                            <li role="presentation" class="dropdown-header">Peliculas</li>
                            <li><a href="registrar_pelicula.jsp" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Registrar</a></li>
                            <li><a href="Listar_peliculas" class="texto-barra-d"><i class="fa fa-caret-right" aria-hidden="true"></i> Consultar</a></li>
                        </ul>
                    </li>



                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle botones" id="menu1" data-toggle="dropdown" role="button" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true" style="font-size:25px"></i><%= " " + Usuario%>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                <li><a href="Cerrar_Sesion" class="botones">Cerrar Sesión</a></li>
                            </ul>
                        </li>
                    </ul>



                    <%} else {%>
                    </ul>
                    <!-- ESTE CONTENIDO APARECERÁ CUANDO NO HALLA NINGUN USUARIO LOGUEADO -->

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal">
                                <i class="fa fa-sign-in" aria-hidden="true" style="font-size: 20px">
                                    <span class="botones">Login</span></i>
                            </a>
                        </li>
                        <li><a href="registrar_cliente_publico.jsp" class="botones"> <i class="fa fa-external-link" aria-hidden="true"></i> Registrarse</a></li>
                    </ul>

                    <jsp:include page="modal.jsp" />  
                    <%}%>

                </div>
            </div> 
        </div>
    </div>
</nav>






