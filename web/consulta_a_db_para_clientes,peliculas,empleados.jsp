<%-- 
    Document   : consulta_a_db_para_clientes
    Created on : 16/11/2016, 08:08:15 AM
    Author     : Marlon
--%>

<%@page import="java.sql.*"%>
<%@page import="Controlador.Conexion"%>
<%@page import="Modelo.Clientes"%>
<%@page import="Modelo.Peliculas"%>
<%@page import="Modelo.Empleados"%>
<%@page import="java.util.ArrayList"%>

<!-- 

ESTA ES UNA CONSULTA QUE SE HACE A LAS TABLAS CLIENTES, PELICULAS, EMPLEADOS, 
PARA ASÍ RESPONDER AL FORMULARIO PRESTAMO Y TENER UN MENU DESPLEGABLE 
EN CADA UNO DE LOS CAMPOS QUE HACEN REFERENCIA A ESTAS TABLAS

--> 

<%
    ArrayList<Clientes> Listar_clientes = new ArrayList();
    ArrayList<Peliculas> Listar_peliculas = new ArrayList();
    ArrayList<Empleados> Listar_empleados = new ArrayList();

    try {

        Conexion con = new Conexion();

        Connection nuevaConex = con.conectar();

        Statement Stm = nuevaConex.createStatement();

        String sql = "Select * from Clientes;";

        ResultSet res = Stm.executeQuery(sql);

        while (res.next()) {

            Clientes objeto = new Clientes();

            objeto.setId(Integer.parseInt(res.getString(1)));

            objeto.setNombre(res.getString(2));

            objeto.setApellido(res.getString(3));

            Listar_clientes.add(objeto);
        }
        
        
        
        
        Statement Stm2 = nuevaConex.createStatement();

        String sql2 = "Select * from Peliculas;";

        ResultSet res2 = Stm2.executeQuery(sql2);

        while (res2.next()) {

            Peliculas objeto = new Peliculas();

            objeto.setId(Integer.parseInt(res2.getString(1)));

            objeto.setNombre(res2.getString(2));

            Listar_peliculas.add(objeto);
        }

        
        
        
        
        Statement Stm3 = nuevaConex.createStatement();

        String sql3 = "Select * from Empleados;";

        ResultSet res3 = Stm3.executeQuery(sql3);

        while (res3.next()) {

            Empleados objeto = new Empleados();

            objeto.setId(Integer.parseInt(res3.getString(1)));

            objeto.setNombre(res3.getString(2));
            
            objeto.setApellido(res3.getString(3));

            Listar_empleados.add(objeto);
        }

        HttpSession ses = request.getSession(true);

        ses.setAttribute("Lista_peli", Listar_peliculas);
        ses.setAttribute("Lista_cli", Listar_clientes);
        ses.setAttribute("Lista_em", Listar_empleados);

        response.sendRedirect("registrar_prestamo.jsp");

        con.cierraConexion();

    } catch (Exception e) {
        e.printStackTrace();
    }

%>
