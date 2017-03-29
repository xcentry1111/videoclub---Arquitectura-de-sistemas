/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.*;
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
 * @author ficha1020611
 */
@WebServlet(name = "Ver_pelicula", urlPatterns = {"/Ver_pelicula"})
public class Ver_pelicula extends HttpServlet {

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
            int id = Integer.parseInt(request.getParameter("id_ver"));

            Conexion con = new Conexion();

            Connection nuevaConex = con.conectar();

            Statement Stm = nuevaConex.createStatement();

            String contar = "select Peliculas.id,Peliculas.nombre,Generos.nombre,Peliculas.duracion,Peliculas.estado,Peliculas.ejemplar,"
                    + "Peliculas.descripcion \n"
                    + "from Peliculas inner join Generos on Peliculas.genero_id=Generos.id where Peliculas.id="+id+";";

            ResultSet res = Stm.executeQuery(contar);

            while (res.next()) {

                Peliculas objeto = new Peliculas();

                Generos obj_gen = new Generos();

                obj_gen.setNombre(res.getString(3));

                objeto.setId(Integer.parseInt(res.getString(1)));
                objeto.setNombre(res.getString(2));
                objeto.setDuracion(Integer.parseInt(res.getString(4)));

                objeto.setEstado(res.getString(5));
                objeto.setEjemplar(Integer.parseInt(res.getString(6)));
                objeto.setDescripcion(res.getString(7));

                objeto.setGeneroId(obj_gen);

                Listar.add(objeto);
            }

            con.cierraConexion();

            HttpSession ses = request.getSession(true);

            ses.setAttribute("Lista_p", Listar);

            response.sendRedirect("ver_pelicula.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
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
