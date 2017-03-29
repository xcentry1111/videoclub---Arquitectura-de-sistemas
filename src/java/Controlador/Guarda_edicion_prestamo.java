/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "Guarda_edicion_prestamo", urlPatterns = {"/Guarda_edicion_prestamo"})
public class Guarda_edicion_prestamo extends HttpServlet {

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

            String id = request.getParameter("id_editar");
            
            Conexion con = new Conexion();

            Connection nuevaConex = con.conectar();

            PreparedStatement pre = nuevaConex.prepareStatement("update Prestamos SET Cliente_id=?, Pelicula_id=?, fecha_devolucion=?, pago=?, Empleado_id=? where id=?");

            if (!request.getParameter("cliente").equals("") && !request.getParameter("pelicula").equals("")
                    && !request.getParameter("fecha_devolucion").equals("") && !request.getParameter("pago").equals("")
                    && !request.getParameter("empleado").equals("")) {

                pre.setString(1, request.getParameter("cliente"));
                pre.setString(2, request.getParameter("pelicula"));
                pre.setString(3, request.getParameter("fecha_devolucion"));
                pre.setString(4, request.getParameter("pago"));
                pre.setString(5, request.getParameter("empleado"));
                
                pre.setString(6, id);

                pre.executeUpdate();
                response.sendRedirect("Listar_prestamos");
            } else {
                System.out.println("No puedo haber ningun campo vacio");
            }

            pre.close();
            con.cierraConexion();

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
