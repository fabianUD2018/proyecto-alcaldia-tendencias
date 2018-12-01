<%-- 
    Document   : GuardarFamilia
    Created on : 22/10/2018, 01:27:12 AM
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
    if (accion.equals ("Guardar Familia")){
        
        
        String direccion= (String) request.getParameter("direccion");
        String Ingresos= (String) request.getParameter("ingresos");        
        String telefono= (String) request.getParameter("telefono");
        String habitacion= (String) request.getParameter("habitacion");
        String vivienda= (String) request.getParameter("vivienda");
        
        Modelo m = (Modelo)application.getAttribute("modelo");
        int llave = m.obtenerIndice("familia","codigo");          
        llave++;
        
        String consulta ="INSERT INTO familia (id_codigo, direccion, ingresos, telefono, tipo_habitacion, tipo_vivienda) VALUES"
                + " ("+llave+", "+"\'"+direccion+"\'"+", "+Ingresos+" , "+telefono+" , "+"\'"+habitacion+"\'"+", "+"\'"+vivienda+"\' )";
        System.out.println(consulta);
        m.insertarPersona(consulta);        
        
        response.sendRedirect("Familia.jsp");
        
    }
 
        %>

</html>
