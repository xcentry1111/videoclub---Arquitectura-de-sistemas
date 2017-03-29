/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empleados;
import Modelo.Users;
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
@WebServlet(name = "Editar_empleado", urlPatterns = {"/Editar_empleado"})
public class Editar_empleado extends HttpServlet {

    ArrayList<Empleados> Listar = new ArrayList();

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

            String contar = "select Empleados.id,Empleados.nombre,Empleados.apellido,\n"
                    + "Empleados.tel,Empleados.email,Empleados.cargo,Empleados.documento, Empleados.fecha_inicio,Users.Usuario from Empleados \n"
                    + "inner join Users on Empleados.user_id=Users.id where Empleados.id=" + id + "; ";

            ResultSet res = Stm.executeQuery(contar);

            while (res.next()) {

                Empleados objeto = new Empleados();
                Users obj_us = new Users();

                objeto.setId(Integer.parseInt(res.getString(1)));
                objeto.setNombre(res.getString(2));
                objeto.setApellido(res.getString(3));
                objeto.setTel(res.getString(4));
                objeto.setEmail(res.getString(5));
                objeto.setCargo(res.getString(6));
                objeto.setDocumento(res.getString(7));
                objeto.setFechaInicio(res.getDate(8));
                obj_us.setUsuario(res.getString(9));
                objeto.setUserId(obj_us);
                Listar.add(objeto);
            }

            con.cierraConexion();

            HttpSession ses = request.getSession(true);

            ses.setAttribute("Lista_em", Listar);

            response.sendRedirect("editar_empleado.jsp");

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
