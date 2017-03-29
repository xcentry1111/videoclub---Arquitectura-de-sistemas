/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "Guarda_edicion_pelicula", urlPatterns = {"/Guarda_edicion_pelicula"})
public class Guarda_edicion_pelicula extends HttpServlet {

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

            PreparedStatement pre = nuevaConex.prepareStatement("update Peliculas SET nombre=?, genero_id=?, duracion=?, estado=?, ejemplar=?, descripcion=? where id=?");

            if (!request.getParameter("nombre").equals("") && !request.getParameter("genero").equals("")
                    && !request.getParameter("duracion").equals("") && !request.getParameter("estado").equals("")
                    && !request.getParameter("ejemplar").equals("") && !request.getParameter("descripcion").equals("")) {

                pre.setString(1, request.getParameter("nombre"));
                pre.setString(2, request.getParameter("genero"));
                pre.setString(3, request.getParameter("duracion"));
                pre.setString(4, request.getParameter("estado"));
                pre.setString(5, request.getParameter("ejemplar"));
                pre.setString(6, request.getParameter("descripcion"));
                pre.setString(7, id);
  
                pre.executeUpdate();
                
                response.sendRedirect("Listar_peliculas");
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
