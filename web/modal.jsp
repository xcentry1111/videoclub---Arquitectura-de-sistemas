<%-- 
    Document   : modal
    Created on : 26/08/2016, 11:35:53 AM
    Author     : Marlon
--%>

<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <form method="POST" action="Login" id="loginForm">
            <div class="panel-modal">

                <div class="organizar-boton">
                    <button type="button" class="boton-cerrar" data-dismiss="modal">&times;</button>
                </div>  

                <div class="state"><br><i class="fa fa-unlock-alt"></i><br><p class="fuente-modal">Log in</p></div>
                
                <div class="form">
                    
                    <div class="form form-group">
                        <input placeholder='Usuario' type="text" class="no" autocomplete="off" name="Usuario">
                    </div>

                    <div class="form form-group">
                        <input placeholder='Contraseña' type="password" class="no" name="Contrasena">
                    </div>

                    <button type="submit" class="login">Entrar</button>
                    
                </div>

            </div>
        </form>

    </div>
</div>