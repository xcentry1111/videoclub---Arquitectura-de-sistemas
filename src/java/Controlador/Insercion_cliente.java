/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ficha1020611
 */
@WebServlet(name = "Insercion_cliente", urlPatterns = {"/Insercion_cliente"})
public class Insercion_cliente extends HttpServlet {

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
            String id_u = "";
            Conexion nuevaconex = new Conexion();
            Connection con = nuevaconex.conectar();
            
            //Insersion tabla usuarios
            
            Statement stm = con.createStatement();
            String query = "select * from Users where Usuario='" + request.getParameter("usuario") + "'";
            ResultSet res = stm.executeQuery(query);

            int v = 0;
            while (res.next()) {
                v = 1;
            }
            
            if (v==0){
                PreparedStatement pre_login = con.prepareStatement("INSERT INTO Users(Usuario,Rol,Contrasena)VALUES(?,?,?)");
                pre_login.setString(1, request.getParameter("usuario"));
                pre_login.setString(2, "Cliente");
                pre_login.setString(3, request.getParameter("contrasena"));

                pre_login.executeUpdate();
                pre_login.close();
                
                //Consulta del Usuario Insertado para luego insertarlo en user_id
                Statement Stm_cu = con.createStatement();
                String con_u = "select * from Users where Usuario='" + request.getParameter("usuario") + "'";

                ResultSet res_u = Stm_cu.executeQuery(con_u);

                while (res_u.next()) {
                    id_u = res_u.getString(1);
                }
            }else{
                response.sendRedirect("usuario_ya_existe.jsp");
            }
            
            

            PreparedStatement pre = con.prepareStatement("INSERT INTO Clientes(nombre,apellido,fecha_nacimiento,tel,email,Carnet_id,documento,ciudad, direccion,foto,user_id)VALUES(?,?,?,?,?,?,?,?,?,?,?)");

            if (!request.getParameter("nombre").equals("") && !request.getParameter("apellido").equals("")
                    && !request.getParameter("fecha_n").equals("") && !request.getParameter("telefono").equals("")
                    && !request.getParameter("email").equals("") && !request.getParameter("carnet").equals("")
                    && !request.getParameter("documento").equals("") && !request.getParameter("ciudad").equals("")
                    && !request.getParameter("direccion").equals("")&& v == 0) {

                pre.setString(1, request.getParameter("nombre"));
                pre.setString(2, request.getParameter("apellido"));
                pre.setString(3, request.getParameter("fecha_n"));
                pre.setString(4, request.getParameter("telefono"));
                pre.setString(5, request.getParameter("email"));
                pre.setString(6, request.getParameter("carnet"));
                pre.setString(7, request.getParameter("documento"));
                pre.setString(8, request.getParameter("ciudad"));
                pre.setString(9, request.getParameter("direccion"));
                pre.setString(11, id_u);
                
                if (request.getParameter("foto").equals("")) {
                    pre.setString(10, "N/A");
                } else {
                    pre.setString(10, request.getParameter("foto"));
                }

                pre.executeUpdate();
                response.sendRedirect("Listar_clientes");
            } else {
                System.out.println("No puedo haber ningun campo vacio");
            }


            pre.close();
            nuevaconex.cierraConexion();
            
            //Esto era para mandar un alert de usuario existe
            
//            HttpSession ses = request.getSession(true);
//            
//            ses.setAttribute("existe", v);
//            
//            response.sendRedirect("registrar_cliente.jsp");

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
