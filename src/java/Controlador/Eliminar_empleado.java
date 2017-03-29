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
 * @author Marlon
 */
@WebServlet(name = "Eliminar_empleado", urlPatterns = {"/Eliminar_empleado"})
public class Eliminar_empleado extends HttpServlet {

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
            int id = Integer.parseInt(request.getParameter("id_eliminar"));
            String id_u = "";

            Conexion con = new Conexion();

            Connection nuevaConex = con.conectar();
            
            //Acá se extrae el user_id para hacer la consulta a User
            Statement Stm_cu = nuevaConex.createStatement();
            String con_u = "select user_id from Empleados where id='" + id + "'";

            ResultSet res_u = Stm_cu.executeQuery(con_u);

            while (res_u.next()) {
                id_u = res_u.getString(1);
            }
            //------------
            
            //Este para borrar user
            PreparedStatement Stm_elus = nuevaConex.prepareStatement("delete from Users where id=?");
            Stm_elus.setString(1, id_u);

            //Este para borrar Empleado
            PreparedStatement Stm = nuevaConex.prepareStatement("delete from Empleados where id=?");
            String id2 = Integer.toString(id);
            Stm.setString(1, id2);

            //Borra Empleado
            Stm.executeUpdate();
            
            //Borra User
            Stm_elus.executeUpdate();

            con.cierraConexion();

            response.sendRedirect("Listar_empleados");

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
