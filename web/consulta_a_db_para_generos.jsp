<%-- 
    Document   : consulta_a_db_para_generos
    Created on : 16/11/2016, 07:56:56 AM
    Author     : Marlon
--%>


<%@page import="java.sql.*"%>
<%@page import="Controlador.Conexion"%>
<%@page import="Modelo.Generos"%>
<%@page import="java.util.ArrayList"%>

<!-- 

ESTA ES UNA CONSULTA QUE SE HACE A LA TABLA GENEROS, 
PARA ASÍ RESPONDER AL FORMULARIO PELICULA Y TENER UN MENU DESPLEGABLE 
QUE PERMITA SELECCIONAR EL NOMBRE DEL GENERO

--> 

<%
    ArrayList<Generos> Listar = new ArrayList();
    try {

        Conexion con = new Conexion();

        Connection nuevaConex = con.conectar();

        Statement Stm = nuevaConex.createStatement();

        String sql = "Select * from Generos;";

        ResultSet res = Stm.executeQuery(sql);

        while (res.next()) {

            Generos objeto = new Generos();

            objeto.setId(Integer.parseInt(res.getString(1)));

            objeto.setNombre(res.getString(2));

            Listar.add(objeto);
        }
        HttpSession ses = request.getSession(true);

        ses.setAttribute("Lista", Listar);

        response.sendRedirect("registrar_pelicula.jsp");

        con.cierraConexion();

    } catch (Exception e) {
        e.printStackTrace();
    }

%>
