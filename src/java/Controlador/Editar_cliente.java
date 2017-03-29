/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Clientes;
import Modelo.Carnets;
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
@WebServlet(name = "Editar_cliente", urlPatterns = {"/Editar_cliente"})
public class Editar_cliente extends HttpServlet {

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
            int id = Integer.parseInt(request.getParameter("id_editar"));

            Conexion con = new Conexion();

            Connection nuevaConex = con.conectar();

            Statement Stm = nuevaConex.createStatement();

            String contar = "select Clientes.id,Clientes.nombre,Clientes.apellido,Clientes.fecha_nacimiento,\n"
                    + "Clientes.tel,Clientes.email,Carnets.id, Clientes.documento,Clientes.ciudad,Clientes.direccion,Users.Usuario \n"
                    + "from Clientes inner join Carnets on Clientes.Carnet_id=Carnets.id\n"
                    + "inner join Users on Clientes.user_id=Users.id where Clientes.id="+id+";";

            ResultSet res = Stm.executeQuery(contar);

            while (res.next()) {
                Clientes objeto = new Clientes();

                Carnets obj_car = new Carnets();

                Users obj_us = new Users();
                
                obj_car.setId(Integer.parseInt(res.getString(7)));
                obj_us.setUsuario(res.getString(11));
                
                objeto.setId(Integer.parseInt(res.getString(1)));
                objeto.setNombre(res.getString(2));
                objeto.setApellido(res.getString(3));
                objeto.setFechaNacimiento(res.getDate(4));
                objeto.setTel(res.getString(5));
                objeto.setEmail(res.getString(6));

                objeto.setCarnetid(obj_car);
                objeto.setDocumento(res.getString(8));
                objeto.setCiudad(res.getString(9));
                objeto.setDireccion(res.getString(10));
                objeto.setUserId(obj_us);

                Listar.add(objeto);
            }

            con.cierraConexion();

            HttpSession ses = request.getSession(true);

            ses.setAttribute("Lista_c", Listar);

            response.sendRedirect("editar_cliente.jsp");

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
