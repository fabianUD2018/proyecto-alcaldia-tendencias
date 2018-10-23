<%-- 
    Document   : GuardarJoven
    Created on : 18/10/2018, 06:15:27 PM
    Author     : fcher
--%>

<%@page import="clases.Empresa"%>
<%@page import="clases.Guarderia"%>
<%@page import="clases.Plantel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Institucion"%>
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
    <% Modelo m = (Modelo) application.getAttribute("modelo");
        String accion = (String) request.getParameter("accion");
        if (accion.equals("Guardar Joven")) {
            String persona = (String) request.getParameter("nombre_persona");
            String documento = (String) request.getParameter("documento");
            String fecha_nacimiento = (String) request.getParameter("fecha_nacimiento");
            String lugar_nacimiento = (String) request.getParameter("lugar_nacimiento");

            String curso = (String) request.getParameter("curso");
            String educacion = (String) request.getParameter("educacion");
            String jornada = (String) request.getParameter("jornada");
            String tipo_estudiante = (String) request.getParameter("tipo_estudiante");
            String plantel = (String) request.getParameter("plantel");
            String tipoDoc= (String)request.getParameter("tipo_doc"); 
            String consulta = "INSERT INTO persona VALUES (" + documento + ", " + "\'" + fecha_nacimiento + "\'" + ", \'" + lugar_nacimiento + "\' , \'" + persona + "\', " + documento + ", " + tipoDoc + ")";
            
            m.insertarPersona(consulta);

            String consulta2 = "";
            if (!plantel.equals("")) {
                ArrayList<Institucion> p = m.getInsti();

                for (Institucion pos : p) {
                    if (pos instanceof Plantel) {
                        Plantel temp = (Plantel) pos;
                        if (temp.getNombre().equals(plantel)) {
                            plantel = temp.getId_plantel();
                        }
                    }
                }
                consulta2 = "INSERT INTO joven (curso, educacion, tipo_e, id_joven, id_plantel,  id_persona) VALUES (" + curso + ", " + "\'" + educacion + "\'" + ", \'" + tipo_estudiante + "\' ," + documento + ", " + plantel + ", " + documento + ")";
            } else {
                consulta2 = "INSERT INTO joven (curso, educacion, tipo_e, id_joven, id_persona) VALUES (" + curso + ", " + "\'" + educacion + "\'" + ", \'" + tipo_estudiante + "\' ," + documento + ", " + documento + ")";

            }

            m.insertarPersona(consulta2);
            response.sendRedirect("jovenes.jsp");
        } else if (accion.equals("Guardar Menor")) {
            String persona = (String) request.getParameter("nombre_persona");
            String documento = (String) request.getParameter("documento");
            String fecha_nacimiento = (String) request.getParameter("fecha_nacimiento");
            String lugar_nacimiento = (String) request.getParameter("lugar_nacimiento");

            String enf = (String) request.getParameter("enfermedad");
            String gua = (String) request.getParameter("guarderia");
            String tipoDoc= (String)request.getParameter("tipo_doc"); 
            String consulta = "INSERT INTO persona VALUES (" + documento + ", " + "\'" + fecha_nacimiento + "\'" + ", \'" + lugar_nacimiento + "\' , \'" + persona + "\', " + documento + ", " + tipoDoc + ")";

            m.insertarPersona(consulta);
             String idG = null;
            if (!gua.equals("---")) {
                ArrayList<Institucion> p = m.getInsti();

                for (Institucion pos : p) {
                    if (pos instanceof Guarderia) {
                        Guarderia temp = (Guarderia) pos;
                        if (temp.getNombre().equals(gua)) {
                            idG = temp.getId_guarderia();
                        }
                    }
                }
            }else{
                idG="null";
            }
             String consulta2 = "INSERT INTO persona_menor (id_menor, id_guarderia,   id_persona) VALUES (" + documento + ", " + idG + ", " + documento + ");";
            String idE = null;
            if (!enf.equals("---")) {

                for (Enfermedad x : m.getListaE()) {
                    if (x.getDescripcion().equals(enf)) {
                        idE = x.getNombre();
                        break;
                    }
                }
            } 
            if (idE!=null){
                consulta2 =consulta2+"        INSERT INTO menor_enfermedad VALUES (" + idE + ", " + documento + ");";
            }
           
            
           
            m.insertarPersona(consulta2);
            response.sendRedirect("menor.jsp");
        } else {
            String persona = (String) request.getParameter("nombre_persona");
            String documento = (String) request.getParameter("documento");
            String fecha_nacimiento = (String) request.getParameter("fecha_nacimiento");
            String lugar_nacimiento = (String) request.getParameter("lugar_nacimiento");

            String cargo = (String) request.getParameter("cargo");
            String jornada_trabajo = (String) request.getParameter("jornada_trabajo");
            String sueldo = (String) request.getParameter("sueldo");
            String empresa = (String) request.getParameter("empresa");
            String tipoDoc= (String)request.getParameter("tipo_doc"); 

            String consulta = "INSERT INTO persona VALUES (" + documento + ", " + "\'" + fecha_nacimiento + "\'" + ", \'" + lugar_nacimiento + "\' , \'" + persona + "\', " + documento + ", " + tipoDoc + ")";

            m.insertarPersona(consulta);
            String consulta2 = "INSERT INTO adulto  VALUES (\'" + cargo + "\', \'" + jornada_trabajo + "\', \'" + sueldo + "\', " + documento + ", " + documento + " );";
            String idE=null;
            if (!empresa.equals("---")){
                ArrayList<Institucion> p = m.getInsti();
                
                for (Institucion pos : p) {
                    if (pos instanceof Empresa) {
                        Empresa temp = (Empresa) pos;
                        if (temp.getNombre().equals(empresa)) {
                            idE = temp.getId_empresa();
                        }
                    }
                }
            }
            if (idE!=null){
                consulta2 =consulta2+"     INSERT INTO adulto_empresa values ("+documento+ ", "+idE+ ");";
            }
            m.insertarPersona(consulta2);
            response.sendRedirect("adulto.jsp");

        }


    %>

</html>
