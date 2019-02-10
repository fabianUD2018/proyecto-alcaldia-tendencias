<%-- 
    Document   : insercionRutas
    Created on : 10/02/2019, 02:34:30 AM
    Author     : leml
--%>


<%@page import="java.util.ArrayList"%>

<%@page import="clases.BEstratoInferior"%>
<%@page import="clases.Barrio"%>
<%@page import="clases.BarrioN"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Modelo"%>
<%@page import="clases.Ruta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  Modelo m = (Modelo) application.getAttribute("modelo");
    m.cargarTodosBarrio();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div class ="container-fluid">

        <%@include file="./header.jsp" %>
        <div class ="m-3">
            <h2 >Formulario de ingreso de barrios </h2>
            <div class="accordion" id="accordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Asignacion rutas para estratos 1 y 2
                        </h5>
                    </div>
                </div>
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <form class ="m-3" method="GET" action="GuardarRuta.jsp" >
                            <div class ="form-group">
                                <label for ="estrato"> Nombre barrio </label>
                                <select class ="form-control"  name ="nombreBarrio" type ="text" >

                                    <%
                                    ArrayList<Barrio> p = m.getBarrios();
                                    for (Barrio per : p) {
                                        if (per instanceof BEstratoInferior) {
                                            BEstratoInferior temp = (BEstratoInferior) per;
                                            out.print("<option>" + temp.getNombre() + "</option>");
                                        }

                                    }
                                    %>        
                                </select>
                            </div>
                            <div>
                                <label for ="tipo"> Nombre ruta </label>
                                <select class ="form-control"  name ="nombreRuta" type ="text" >
                                    <%
                                    ArrayList<Ruta> r = m.getRutas();
                                    for (Ruta per : r) {
                                        if (per instanceof Ruta) {
                                            Ruta temp = (Ruta) per;
                                            out.print("<option>" + temp.getDescripcion() + "</option>");
                                        }
                                    }
                                    %>                                  
                                </select>
                            </div> 
                            <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar ruta"> 
                        </form>
                    </div>
                </div>  
        </div>
    </div>
    <%@include file="./footer.jsp" %>
</html>
