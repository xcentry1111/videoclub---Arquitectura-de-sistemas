/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Clientes;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Marlon
 */
@WebServlet(name = "Listar_clientes_autocomplete", urlPatterns = {"/Listar_clientes_autocomplete"})
public class Listar_clientes_autocomplete extends HttpServlet {

    ArrayList<Clientes> Listar = new ArrayList();

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
            Conexion con = new Conexion();

            Connection nuevaConex = con.conectar();

            Statement Stm2 = nuevaConex.createStatement();

            String contar = "Select * from Clientes;";

            ResultSet res = Stm2.executeQuery(contar);

            while (res.next()) {
                Clientes objeto = new Clientes();

                objeto.setNombre(res.getString(2));
                objeto.setApellido(res.getString(3));
                objeto.setFechaNacimiento(res.getDate(4));
                objeto.setTel(res.getString(5));
                objeto.setEmail(res.getString(6));
                //objeto.setCarnetid(res.getInt(7));
                objeto.setDocumento(res.getString(8));
                objeto.setCiudad(res.getString(9));
                objeto.setDireccion(res.getString(10));

                Listar.add(objeto);
            }

            con.cierraConexion();

            HttpSession ses = request.getSession(true);

            ses.setAttribute("Lista", Listar);

            response.sendRedirect("listar_clientes_autocomplete.jsp");

        } catch (Exception e) {
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
