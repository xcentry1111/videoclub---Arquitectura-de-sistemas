/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Prestamos;
import Modelo.Clientes;
import Modelo.Empleados;
import Modelo.Peliculas;
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
@WebServlet(name = "Editar_prestamo", urlPatterns = {"/Editar_prestamo"})
public class Editar_prestamo extends HttpServlet {
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
            int id = Integer.parseInt(request.getParameter("id_editar"));

            Conexion con = new Conexion();

            Connection nuevaConex = con.conectar();

            Statement Stm = nuevaConex.createStatement();

            String contar = "Select * from Prestamos where id="+id+";";
            
            ResultSet res = Stm.executeQuery(contar);

            while (res.next()) {
                
                Prestamos objeto = new Prestamos();
                
                Clientes obj_cli = new Clientes();
                Peliculas obj_peli = new Peliculas();
                Empleados obj_em = new Empleados();
                
                objeto.setId(Integer.parseInt(res.getString(1)));
                obj_cli.setId(Integer.parseInt(res.getString(2)));
                obj_peli.setId(Integer.parseInt(res.getString(3)));
                objeto.setFechaDevolucion(res.getDate(4));
                objeto.setPago(Integer.parseInt(res.getString(5)));
                obj_em.setId(Integer.parseInt(res.getString(6)));
                
                
                objeto.setClienteid(obj_cli);
                objeto.setPeliculaid(obj_peli);
                objeto.setEmpleadoid(obj_em);
 
                
                Listar.add(objeto);
            }
           
            con.cierraConexion();
            
            HttpSession ses = request.getSession(true);
                    
            ses.setAttribute("Lista_pres", Listar);
            
            response.sendRedirect("editar_prestamo.jsp");

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
