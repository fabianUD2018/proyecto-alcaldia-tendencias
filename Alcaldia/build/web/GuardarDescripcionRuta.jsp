<%-- 
    Document   : GuardarDescripcionRuta
    Created on : 10/02/2019, 12:41:37 PM
    Author     : leml
--%>

<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <% String accion= (String) request.getParameter("accion");
    if (accion.equals ("Guardar ruta")){
        String ruta= (String) request.getParameter("ruta");

        Modelo m = (Modelo)application.getAttribute("modelo"); 
        int llaveRuta = m.obtenerIndiceR("rutas"); 
        llaveRuta++;
        
       
        String consulta ="INSERT INTO rutas VALUES ("+llaveRuta+",'"+ruta+"')";
        m.insertarBarrio(consulta);

        response.sendRedirect("insercionDescripcionRutas.jsp");
    }
        %>
</html>
