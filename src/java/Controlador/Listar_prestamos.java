/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Clientes;
import Modelo.Peliculas;
import Modelo.Empleados;
import Modelo.Prestamos;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author Marlon
 */
@WebServlet(name = "Listar_prestamos", urlPatterns = {"/Listar_prestamos"})
public class Listar_prestamos extends HttpServlet {

    ArrayList<Prestamos> Listar = new ArrayList();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Listar.clear();

            Conexion con = new Conexion();

            Connection nuevaConex = con.conectar();

            Statement Stm = nuevaConex.createStatement();

            String sql = "Select Prestamos.id, Clientes.nombre,Clientes.apellido, Peliculas.nombre, "
                    + "Prestamos.fecha_devolucion, Prestamos.pago, Empleados.nombre,Empleados.apellido from Prestamos "
                    + "inner join Clientes on Prestamos.Cliente_id=Clientes.id "
                    + "inner join Peliculas on Prestamos.Pelicula_id=Peliculas.id "
                    + "inner join Empleados on Prestamos.Empleado_id=Empleados.id;";

            ResultSet res = Stm.executeQuery(sql);

            while (res.next()) {
                Prestamos objeto = new Prestamos();

                Clientes objeto_cliente = new Clientes();
                Peliculas objeto_pelicula = new Peliculas();
                Empleados objeto_empleado = new Empleados();

                objeto_cliente.setNombre(res.getString(2));
                objeto_cliente.setApellido(res.getString(3));

                objeto_pelicula.setNombre(res.getString(4));

                objeto_empleado.setNombre(res.getString(7));
                objeto_empleado.setApellido(res.getString(8));

                objeto.setId(Integer.parseInt(res.getString(1)));
                objeto.setClienteid(objeto_cliente);
                objeto.setPeliculaid(objeto_pelicula);
                objeto.setFechaDevolucion(res.getDate(5));
                objeto.setPago(res.getInt(6));
                objeto.setEmpleadoid(objeto_empleado);

                Listar.add(objeto);
            }

            con.cierraConexion();

            HttpSession ses = request.getSession(true);

            ses.setAttribute("Lista", Listar);

            response.sendRedirect("listar_prestamos.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
