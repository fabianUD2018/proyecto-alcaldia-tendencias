<%-- 
    Document   : GuardarEntidad
    Created on : 21/10/2018, 07:13:17 PM
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
    if (accion.equals ("Guardar Empresa")){
        
        
        String nombre= (String) request.getParameter("nombre_entidad");
        String jurisdiccion= (String) request.getParameter("jurisdiccion");        
        String actividad_economica= (String) request.getParameter("actividad_economica");
        String nombre_dueño= (String) request.getParameter("nombre_dueno");
        String tipo = "legal";
        String Nit= (String) request.getParameter("Nit");
        String consulta ="INSERT INTO institucion (actividad, tipo, jurisdiccion, nombre, id_institucion) VALUES (\'"+actividad_economica+"\', "+"\'"+tipo+"\'"+", \'"+jurisdiccion+"\' , \'"+nombre+"\' , "+Nit+")";
        
        Modelo m = (Modelo)application.getAttribute("modelo");        
        m.insertarPersona(consulta);        
        int llave = m.obtenerIndice("empresa");          
        llave++;
        
        String consulta2 ="INSERT INTO empresa (nit, dueno, id_institucion, id_empresa) VALUES ("+Nit+", "+"\'"+nombre_dueño+"\' , "+Nit+", "+llave+")";        
        m.insertarPersona(consulta2);       
        
        response.sendRedirect("Empresa.jsp");
        
    }else if (accion.equals ("Guardar Plantel")){ 
        String nombre= (String) request.getParameter("nombre_entidad");
        String jurisdiccion= (String) request.getParameter("jurisdiccion");        
        String actividad_economica= (String) request.getParameter("actividad_economica");
        String nombre_dueño= (String) request.getParameter("nombre_dueno");
        String tipo = "legal";
        String Nit= (String) request.getParameter("Nit");
        String tplantel= (String) request.getParameter("tplantel");
        String consulta ="INSERT INTO institucion (actividad, tipo, jurisdiccion, nombre, id_institucion) VALUES (\'"+actividad_economica+"\', "+"\'"+tipo+"\'"+", \'"+jurisdiccion+"\' , \'"+nombre+"\' , "+Nit+")";
        System.out.println("||||||||||||||||||||"+consulta);
        Modelo m = (Modelo)application.getAttribute("modelo");        
        m.insertarPersona(consulta);        
        int llave = m.obtenerIndice("plantel"); 
        llave++;
        
        String consulta2 ="INSERT INTO plantel (nit, representante, id_institucion, id_plantel, tipo_plantel) VALUES ("+Nit+", "+"\'"+nombre_dueño+"\' , "+Nit+", "+llave+", \'"+tplantel+"\')";        
        System.out.println("||||||||||||||||||||"+consulta2);
        m.insertarPersona(consulta2);       
        
        response.sendRedirect("Planteles.jsp");
    }else{
        String nombre= (String) request.getParameter("nombre_entidad");
        String jurisdiccion= (String) request.getParameter("jurisdiccion");        
        String actividad_economica= (String) request.getParameter("actividad_economica");
        String nombre_dueño= (String) request.getParameter("nombre_dueno");
        String tipo = "legal";
        String Nit= (String) request.getParameter("Nit");
        String consulta ="INSERT INTO institucion (actividad, tipo, jurisdiccion, nombre, id_institucion) VALUES (\'"+actividad_economica+"\', "+"\'"+tipo+"\'"+", \'"+jurisdiccion+"\' , \'"+nombre+"\' , "+Nit+")";
        
        Modelo m = (Modelo)application.getAttribute("modelo");        
        m.insertarPersona(consulta);        
         int llave = m.obtenerIndice("guarderia");    
        llave++;
        
        String consulta2 ="INSERT INTO guarderia (nit, representante, id_institucion, id_guarderia) VALUES ("+Nit+", "+"\'"+nombre_dueño+"\' , "+Nit+", "+llave+")";        
        m.insertarPersona(consulta2);       
        
        response.sendRedirect("Guarderia.jsp");
    }
    

 
        %>

</html>