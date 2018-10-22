<%-- 
    Document   : GuardarEntidad
    Created on : 21/10/2018, 07:13:17 PM
    Author     : Rodrigon
--%>

<%@page import="clases.Enfermedad"%>
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
    if (accion.equals ("Guardar Empresa")){
        
        System.out.println("entre aqui");
        String nombre= (String) request.getParameter("nombre_entidad");
        String jurisdiccion= (String) request.getParameter("jurisdiccion");
        String actividad_economica= (String) request.getParameter("actividad_economica");
        String nombre_dueño= (String) request.getParameter("nombre_dueño");
        String tipo = "legal";
       
        String Nit= (String) request.getParameter("Nit");
        
        
        String consulta ="INSERT INTO institucion (actividad, tipo, jurisdiccion, nombre, id_institucion) VALUES (\'"+actividad_economica+"\', "+"\'"+tipo+"\'"+", \'"+jurisdiccion+"\' , \'"+nombre+"\' , "+Nit+")";
        
        Modelo m = (Modelo)application.getAttribute("modelo");
        m.insertarPersona(consulta);
        System.out.println("--------------------------------------");
        String consulta2 ="INSERT INTO empresa (nit, dueno, id_institucion) VALUES ("+Nit+", "+"\'"+nombre_dueño+"\' , "+Nit+")";
        m.insertarPersona(consulta2);
        System.out.println("--------------------------------------");
        response.sendRedirect("jovenes.jsp");
        
    }else if (accion.equals ("Guardar Menor")){ 
        String persona= (String) request.getParameter("nombre_persona");
        String documento= (String) request.getParameter("documento");
        String fecha_nacimiento= (String) request.getParameter("fecha_nacimiento");
        String lugar_nacimiento= (String) request.getParameter("lugar_nacimiento");
       
        String enf= (String) request.getParameter("enfermedad");
        
        
        String consulta ="INSERT INTO persona VALUES ("+documento+", "+"\'"+fecha_nacimiento+"\'"+", \'"+lugar_nacimiento+"\' , \'"+persona+"\', "+documento+", "+1+")";
        
        Modelo m = (Modelo)application.getAttribute("modelo");
        m.insertarPersona(consulta);
        String idE=null;
        for (Enfermedad x :m.getListaE()){
            if (x.getDescripcion().equals(enf)){
                idE= x.getNombre();
                break;
            }
        }
        String consulta2 ="INSERT INTO persona_menor (id_menor,  id_persona) VALUES ("+documento+", " +documento+");"
                + "        INSERT INTO menor_enfermedad VALUES ("+idE+ ", "+ documento+");"; 
        m.insertarPersona(consulta2);
        response.sendRedirect("menor.jsp");
    }else{
        String persona= (String) request.getParameter("nombre_persona");
        String documento= (String) request.getParameter("documento");
        String fecha_nacimiento= (String) request.getParameter("fecha_nacimiento");
        String lugar_nacimiento= (String) request.getParameter("lugar_nacimiento");
       
        String cargo= (String) request.getParameter("cargo");
        String jornada_trabajo= (String) request.getParameter("jornada_trabajo");
        String sueldo= (String) request.getParameter("sueldo");
        String empresa= (String) request.getParameter("empresa");
        
        Modelo m = (Modelo)application.getAttribute("modelo");
        
        String consulta ="INSERT INTO persona VALUES ("+documento+", "+"\'"+fecha_nacimiento+"\'"+", \'"+lugar_nacimiento+"\' , \'"+persona+"\', "+documento+", "+1+")";
        
        m.insertarPersona(consulta);
        String consulta2 ="INSERT INTO adulto  VALUES (\'"+cargo+"\', \'" +jornada_trabajo+"\', \'"+sueldo+"\', "+documento+", "+documento+" )";
        System.out.println(consulta2);
        m.insertarPersona(consulta2);
        response.sendRedirect("adulto.jsp");
        
    }
    

 
        %>

</html>