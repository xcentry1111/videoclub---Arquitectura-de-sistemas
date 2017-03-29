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
 * @author Marlon
 */
@WebServlet(name = "Guarda_edicion_empleado", urlPatterns = {"/Guarda_edicion_empleado"})
public class Guarda_edicion_empleado extends HttpServlet {

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

            String[] temp;
            temp = id.split(" ");

            String id_u = "";
            Conexion nuevaconex = new Conexion();
            Connection con = nuevaconex.conectar();

            int v = 0;

            if (request.getParameter("usuario").equals(temp[1])) {
            } else {
                Statement stm = con.createStatement();
                String query = "select * from Users where Usuario='" + request.getParameter("usuario") + "'";
                ResultSet res = stm.executeQuery(query);

                while (res.next()) {
                    v += 1;
                }
            }

            if (v == 0) {
                PreparedStatement pre_login = con.prepareStatement("update Users set Usuario=?, Contrasena=? where Usuario=?");
                pre_login.setString(1, request.getParameter("usuario"));
                pre_login.setString(2, request.getParameter("contrasena"));
                pre_login.setString(3, temp[1]);
                pre_login.executeUpdate();
                pre_login.close();

                //Consulta del Usuario Insertado para luego insertarlo en user_id
                Statement Stm_cu = con.createStatement();
                String con_u = "select * from Users where Usuario='" + request.getParameter("usuario") + "'";

                ResultSet res_u = Stm_cu.executeQuery(con_u);
                while (res_u.next()) {
                    id_u = res_u.getString(1);
                }
            } else {
                response.sendRedirect("usuario_ya_existe.jsp");
            }

            PreparedStatement pre = con.prepareStatement("update Empleados SET nombre=?, apellido=?, tel=?, email=?, cargo=?, documento=?, fecha_inicio=?, user_id=? where id=?");

            if (!request.getParameter("nombre").equals("") && !request.getParameter("apellido").equals("")
                    && !request.getParameter("telefono").equals("") && !request.getParameter("email").equals("")
                    && !request.getParameter("cargo").equals("") && !request.getParameter("documento").equals("")
                    && !request.getParameter("fecha_ini").equals("") && v == 0) {
                pre.setString(1, request.getParameter("nombre"));
                pre.setString(2, request.getParameter("apellido"));
                pre.setString(3, request.getParameter("telefono"));
                pre.setString(4, request.getParameter("email"));
                pre.setString(5, request.getParameter("cargo"));
                pre.setString(6, request.getParameter("documento"));
                pre.setString(7, request.getParameter("fecha_ini"));
                pre.setString(8, id_u);
                pre.setString(9, temp[0]);

                pre.executeUpdate();
                response.sendRedirect("Listar_empleados");
            } else {
                System.out.println("No puedo haber ningun campo vacio");
            }

            pre.close();
            nuevaconex.cierraConexion();

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
