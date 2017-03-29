<%-- 
    Document   : head
    Created on : 9/09/2016, 05:35:11 PM
    Author     : Marlon
--%>
<!-- ESTA LINEA PERMITE CACUDAR LA SESION CON UN PARAMETRO QUE RECIBE EN EL SERVLET LOGIN -->
<Meta http-equiv = "refresh" content = "<%= session.getMaxInactiveInterval()%>; URL = sesion_expirada.jsp" /> 

<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/estilos_largos.css">
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>

<!-- LIBRERIAS PARA VALIDACIONES -->
<link href="//oss.maxcdn.com/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="//oss.maxcdn.com/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/validator.js"></script>

<!-- DATE-TIME -->
<link rel="stylesheet" href="https://rawgit.com/Eonasdan/bootstrap-datetimepicker/master/build/css/bootstrap-datetimepicker.min.css"/>
<script src="//oss.maxcdn.com/momentjs/2.8.2/moment.min.js"></script>
<script src="https://rawgit.com/Eonasdan/bootstrap-datetimepicker/master/src/js/bootstrap-datetimepicker.js"></script>

<!-- FORMULARIO DE REGISTRO PUBLICO-->
<script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


<!-- Agregadas Sep-28-2016 para tabla dinamica-->
<!-- <link rel="stylesheet" href="css/jquery.dataTables.min.css"> Estilos de tabla por default-->
<script type="text/javascript" languaje="javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" languaje="javascript" src="js/dataTables.bootstrap4.min.js"></script>

<!-- ICONOS FONT AWESOME 4.6.3 -->
<link rel="stylesheet" href="css/font-awesome-4.6.3/css/font-awesome.min.css"/>


<!-- PARA AUTOCOMPLETE -->
<script type="text/javascript" languaje="javascript" src="js/autocomplete.js"></script>





<script type="text/javascript">
    function detectar() {
        elapellido = localStorage.getItem("apellido");
        if (elapellido == "null" || elapellido == null) {
            //alert("Nadie ha estado aquí");
            localStorage.setItem("apellido", "Perez");
        } else {
            //alert("El Sr. " + elapellido + " ya ha estado aquí");					
        }
    }

    function limpiar() {
        elapellido = localStorage.getItem("apellido");
        if (elapellido != "null" & elapellido != null) {
            //alert("Limpiando " + elapellido )
            localStorage.removeItem("apellido");
        } else {
            //alert("Nada que limpiar")
        }
    }
</script>




<script type="text/javascript">
    function detectar() {
        elnombre = sessionStorage.getItem("nombre");
        if (elnombre == "null" || elnombre == null) {
            //alert("Nadie ha estado aquí");
            sessionStorage.setItem("nombre", "Juan");
        } else {
            //alert(elnombre + " ya ha estado aquí");
        }
    }
</script>


<body onload="detectar()">


</body >








<!-- FUENTES -->

<link href="https://fonts.googleapis.com/css?family=Baloo+Paaji&subset=gurmukhi,latin-ext,vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster&subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Baloo+Da&subset=bengali,latin-ext,vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster&subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Passion+One:400,700,900&subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan&subset=latin-ext,malayalam,vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Passion+One:400,700,900&subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald:300,400,700&subset=latin-ext" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Days+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>