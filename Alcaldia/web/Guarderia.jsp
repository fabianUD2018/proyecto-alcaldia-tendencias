<%-- 
    Document   : Guarderia
    Created on : 21/10/2018, 06:06:51 PM
    Author     : Rodrigon
--%>
<%@page import="clases.Guarderia"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Institucion"%>
<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  Modelo m = (Modelo)application.getAttribute("modelo"); 
    m.cargarGuarderias();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de planteles educativos</title>
    </head>
     <div class ="container-fluid">
         <%@include file="./header.jsp" %>
  <div class ="m-3">
  <h2 >Listado de empresas </h2>
  
  <table class="table table-responsive">
  <thead>
     
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nombre</th>
      <th scope="col">Tipo actividad economica</th>
      <th scope="col">Jurisdicción</th>     
      <th scope="col">Nit</th>
      <th scope="col">Dueño</th>      
    </tr>
  </thead>
  <tbody>
      <% 
    ArrayList<Institucion> p= m.getInsti();
    int cont=0; 
    for (Institucion per :  p){
        if (per instanceof Guarderia){
            Guarderia temp = (Guarderia)per;  
            cont++ ;
            out.print("<tr>");
            out.print("<th scope='row'>" + cont + "</th>"); 
            out.print("<td>" + temp.getNombre() + "</td>");  
            out.print("<td>" + temp.getActividadEconomica()+ "</td>");
            out.print("<td>" + temp.getJurisdiccion()+ "</td>");   
            out.print("<td>" + temp.getNit()+ "</td>"); 
            out.print("<td>" + temp.getRepresentante()+ "</td>");
            out.print("</tr>");
        }
        
       }
   %>
  </tbody>
</table>
    </div>
    <%@include file="./footer.jsp" %>
</html>
