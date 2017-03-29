<%-- 
    Document   : registrar_cliente_publico
    Created on : 15/09/2016, 09:24:30 PM
    Author     : Marlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Films Fender</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>

        <jsp:include page="banner.jsp" />
        <jsp:include page="barra_nav.jsp" />

        <div class="container">

            <form class="well form-horizontal" action="Insercion_cliente" method="post"  id="contact_form">
                <fieldset>


                    <legend> <i class="fa fa-external-link" aria-hidden="true"></i> Registrarme</legend>



                    <div class="form-group">
                        <label class="col-md-4 control-label" for="nombre">Nombre</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input  name="nombre" placeholder="Nombre" class="form-control"  type="text" id="nombre">
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-md-4 control-label" for="apellido">Apellido</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="apellido" placeholder="Apellido" class="form-control"  type="text" id="apellido">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-4 control-label" for="usuario">Usuario</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="usuario" placeholder="Usuario" class="form-control"  type="text" id="usuario">
                            </div>
                        </div>
                    </div>




                    <div class="form-group">
                        <label class="col-md-4 control-label" for="contrasena">Contraseña</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="contrasena" placeholder="Contraseña" class="form-control" type="password" id="contrasena">
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-md-4 control-label" for="contrasena_confir">Confirmar Contraseña</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="contrasena_confir" placeholder="Repetir Contraseña" class="form-control" type="password" id="contrasena_confir">
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-md-4 control-label" for="telefono">Telefono</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input placeholder="Telefono" class="form-control"  type="text" name="telefono" id="telefono">
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-md-4 control-label" for="email">Email</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input name="email" placeholder="E-Mail" class="form-control"  type="text" id="email">
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-md-4 control-label" for="carnet">Carnet</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                                <input name="carnet" placeholder="Carnet" class="form-control"  type="text" id="carnet">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-4 control-label" for="documento">Documento</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="documento" placeholder="Documento" class="form-control" type="text" id="documento">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="ciudad">Ciudad</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <input name="ciudad" placeholder="Ciudad" class="form-control" type="text" id="ciudad">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="fecha_n">Fecha de Nacimiento</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="fecha_n"  class="form-control" type="date" id="fecha_n">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="direccion">Dirección</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <input name="direccion" placeholder="Direccion" class="form-control" type="text" id="direccion">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        
                        <label for="foto" class="col-md-4 control-label">Foto</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <input type="file" id="foto" name="foto">
                            </div>
                        </div>
                        
                    </div>


                    <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>


                    <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-warning" >Enviar <span class="glyphicon glyphicon-send"></span></button>
                        </div>
                    </div>
                    

                </fieldset>
            </form>
        </div>
    </div>
    <br><br><br><br><br><br>
    <jsp:include page="footer.jsp" />
</body>
</html>
