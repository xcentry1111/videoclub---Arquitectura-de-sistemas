/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Generos;
import Modelo.Peliculas;
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
@WebServlet(name = "Listar_peliculas", urlPatterns = {"/Listar_peliculas"})
public class Listar_peliculas extends HttpServlet {

    ArrayList<Peliculas> Listar = new ArrayList();

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

            String sql = "Select Peliculas.id, Peliculas.nombre, Generos.nombre, Peliculas.duracion, Peliculas.estado, "
                    + "Peliculas.ejemplar, Peliculas.descripcion from Peliculas inner join Generos on "
                    + "Peliculas.genero_id=Generos.id;";

            ResultSet res = Stm.executeQuery(sql);

            while (res.next()) {
                Peliculas objeto = new Peliculas();

                Generos objeto_genero = new Generos();
                objeto.setId(Integer.parseInt(res.getString(1)));
                objeto_genero.setNombre(res.getString(3));

                objeto.setNombre(res.getString(2));
                objeto.setGeneroId(objeto_genero);
                objeto.setDuracion(res.getInt(4));
                objeto.setEstado(res.getString(5));
                objeto.setEjemplar(res.getInt(6));
                objeto.setDescripcion(res.getString(7));
                Listar.add(objeto);
            }

            con.cierraConexion();

            HttpSession ses = request.getSession(true);

            ses.setAttribute("Lista", Listar);

            response.sendRedirect("listar_peliculas.jsp");

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
