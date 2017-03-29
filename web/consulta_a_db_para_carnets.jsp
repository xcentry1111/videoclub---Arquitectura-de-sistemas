<%-- 
    Document   : consulta_a_base_de_datos_para_carnets
    Created on : 15/11/2016, 01:41:53 PM
    Author     : Marlon
--%>

<%@page import="java.sql.*"%>
<%@page import="Controlador.Conexion"%>
<%@page import="Modelo.Carnets"%>
<%@page import="java.util.ArrayList"%>

<!-- 

ESTA ES UNA CONSULTA QUE SE HACE A LA TABLA CARNETS, 
PARA ASÍ RESPONDER AL FORMULARIO CLIENTE Y TENER UN MENU DESPLEGABLE 
QUE PERMITA SELECCIONAR EL NUMERO DEL CARNET

--> 

<%
    ArrayList<Carnets> Listar = new ArrayList();
    try {

        Conexion con = new Conexion();

        Connection nuevaConex = con.conectar();

        Statement Stm = nuevaConex.createStatement();

        String sql = "Select * from Carnets;";

        ResultSet res = Stm.executeQuery(sql);

        while (res.next()) {

            Carnets objeto = new Carnets();

            objeto.setId(Integer.parseInt(res.getString(1)));

            objeto.setNumero(Integer.parseInt(res.getString(2)));

            Listar.add(objeto);
        }
        HttpSession ses = request.getSession(true);

        ses.setAttribute("Lista", Listar);

        response.sendRedirect("registrar_cliente.jsp");

        con.cierraConexion();

    } catch (Exception e) {
        e.printStackTrace();
    }

%>
