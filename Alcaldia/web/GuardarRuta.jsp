<%-- 
    Document   : GuardarRuta
    Created on : 10/02/2019, 03:08:47 AM
    Author     : leml
--%>

<%@page import="clases.Modelo"%>
<%@page import="java.sql.ResultSet"%>
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
        String nombreBarrio= (String) request.getParameter("nombreBarrio");
        String nombreRuta= (String) request.getParameter("nombreRuta");
        
        Modelo m = (Modelo)application.getAttribute("modelo"); 

        
        String consulta = "SELECT id_b_bajo FROM b_bajo,barrio WHERE  barrio.id_barrio=b_bajo.id_barrio and barrio.nombre='"+nombreBarrio+"'";
        ResultSet st = m.consultarIDRuta(consulta);
        st.next();
        String id_b_bajo = st.getString("id_b_bajo");
        
        
 
        consulta ="SELECT id_ruta FROM rutas WHERE des_ruta='"+nombreRuta+"'";
        ResultSet st2 = m.consultarIDRuta(consulta);
        st2.next();
        String id_ruta = st2.getString("id_ruta");
        
        consulta ="INSERT INTO bajo_rutas VALUES ("+id_ruta+","+id_b_bajo+")";
        m.insertarBarrio(consulta);  
        response.sendRedirect("insercionRutas.jsp");
    }
        %>
</html>
