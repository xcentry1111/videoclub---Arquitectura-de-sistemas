<%-- 
    Document   : generar_pdf_prestamos
    Created on : 13/11/2016, 04:25:29 PM
    Author     : Marlon
--%>

<%@page import="java.sql.*"%>
<%@page import="Controlador.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>

<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>

<%@page import="javax.servlet.ServletResponse"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Este archivo hace la funcion de servlet para generar el pdf
            
            Conexion c = new Conexion();
            Connection con = c.conectar();
            
            
            File reportefile = new File(application.getRealPath("pdfs/prestamos.jasper"));

            Map<String, Object> parameter = new HashMap<String, Object>();

            byte[] bytes = JasperRunManager.runReportToPdf(reportefile.getPath(), parameter,con);
            
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            
            ServletOutputStream outputstream = response.getOutputStream();
            outputstream.write(bytes,0,bytes.length);
            
            outputstream.flush();
            outputstream.close();
        %>
    </body>
</html>
