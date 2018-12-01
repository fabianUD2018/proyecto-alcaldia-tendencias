<%-- 
    Document   : barrios
    Created on : 27/10/2018, 03:42:45 PM
    Author     : leml
--%>
<%@page import="clases.BEstratoInferior"%>
<%@page import="clases.Enfermedad"%>
<%@page import="clases.Barrio"%>
<%@page import="clases.BarrioN"%>
<%@page import="clases.Joven"%>
<%@page import="clases.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  Modelo m = (Modelo) application.getAttribute("modelo");
    m.cargarTodosBarrio();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div class ="container-fluid">

        <%@include file="./header.jsp" %>
        <div class ="m-3">
            <h2 >Listado de  los barrios en el sistema </h2>

            <table class="table table-responsive">
                <thead>

                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Estrato</th>
                        <th scope="col">Tipo</th>
                        <th scope="col">Area</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Barrio> p = m.getBarrios();
                        int cont = 0;
                        for (Barrio per : p) {
                            if (per instanceof BarrioN) {
                                BarrioN temp = (BarrioN) per;
                                if (temp.getTipoBarrio().equals("Residencial")) {
                                    cont++;
                                    out.print("<tr>");
                                    out.print("<th scope='row'>" + cont + "</th>");
                                    out.print("<td>" + temp.getNombre() + "</td>");
                                    out.print("<td>" + temp.getEstrato() + "</td>");
                                    out.print("<td>" + temp.getTipoBarrio() + "</td>");
                                    out.print("<td>" + temp.getArea() + "</td>");
                                    out.print("</tr>");
                                }
                            } else if (per instanceof BEstratoInferior) {
                                BEstratoInferior temp = (BEstratoInferior) per;
                                if (temp.getTipoBarrio().equals("Residencial")) {
                                    cont++;
                                    out.print("<tr>");
                                    out.print("<th scope='row'>" + cont + "</th>");
                                    out.print("<td>" + temp.getNombre() + "</td>");
                                    out.print("<td>" + temp.getEstrato() + "</td>");
                                    out.print("<td>" + temp.getTipoBarrio() + "</td>");
                                    out.print("<td>" + temp.getArea() + "</td>");
                                    out.print("</tr>");
                                }
                            }

                        }
                    %>
                </tbody>
            </table>
        </div>
        <%@include file="./footer.jsp" %>
</html>
