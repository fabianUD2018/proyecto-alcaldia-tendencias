<%-- 
    Document   : GuardarBarrio
    Created on : 27/10/2018, 04:59:18 PM
    Author     : leml
--%>

<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <% String accion= (String) request.getParameter("accion");
    if (accion.equals ("Guardar barrio")){
        String barrio= (String) request.getParameter("nombre_barrio");
        String estrato= (String) request.getParameter("estrato");
        String area = (String) request.getParameter("area");
        String tipo= (String) request.getParameter("tipo");
        
        String consulta ="INSERT INTO barrio VALUES ("+area+", "+"\'"+estrato+"\'"+", \'"+barrio+"\' , \'"+tipo+"\', "+1+")";
        
        Modelo m = (Modelo)application.getAttribute("modelo");
        m.insertarBarrio(consulta);
        
        response.sendRedirect("barrios.jsp");
    }
        %>

</html>

