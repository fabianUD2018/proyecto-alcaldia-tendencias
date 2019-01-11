<%-- 
    Document   : GuardarPersonaEnFamilia
    Created on : 22/10/2018, 02:38:17 PM
    Author     : Rodrigon
--%>

<%@page import="clases.Enfermedad"%>
<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <% String accion= (String) request.getParameter("accion");
    if (accion.equals ("Guardar")){
        
        
        String familia= (String) request.getParameter("familia");
        String persona= (String) request.getParameter("persona");        
        
        
        Modelo m = (Modelo)application.getAttribute("modelo");        
        
        String consulta ="INSERT INTO familia_persona  VALUES"
                + " ("+persona+","+familia+")";
        System.out.println(consulta);
        
       
        m.insertarPersona(consulta);   
        response.sendRedirect("Familia.jsp");
        
    }
 
        %>

</html>
