<%-- 
    Document   : Familia
    Created on : 22/10/2018, 12:47:32 AM
    Author     : Rodrigon
--%>

<%@page import="clases.Familia"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  Modelo m = (Modelo)application.getAttribute("modelo"); 
    m.cargarFamilias();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Familias</title>
    </head>
     <div class ="container-fluid">
         <%@include file="./header.jsp" %>
  <div class ="m-3">
  <h2 >Listado de Familias </h2>
  
  <table class="table table-responsive">
  <thead>
     
    <tr>
      <th scope="col">#</th>
      <th scope="col">Codigo de familia</th>
      <th scope="col">Barrio al que pertenecen</th>
      <th scope="col">Dirección</th>
      <th scope="col">Ingresos</th>     
      <th scope="col">Telefono</th>
      <th scope="col">Tipo de habitación</th>      
      <th scope="col">Tipo de vivienda</th>      
    </tr>
  </thead>
  <tbody>
      <% 
    ArrayList<Familia> p= m.getFamilia();
    int cont=0; 
    for (Familia per :  p){
        
            Familia temp = (Familia)per;  
            cont++ ;
            out.print("<tr>");
            out.print("<th scope='row'>" + cont + "</th>"); 
            out.print("<td>" + temp.getCodigo()+ "</td>");  
            out.print("<td></td>");//barrio
            out.print("<td>" + temp.getDireccion()+ "</td>");   
            out.print("<td>" + temp.getIngFamiliar()+ "</td>"); 
            out.print("<td>" + temp.getTelefono()+ "</td>");
            out.print("<td>" + temp.gettHabitacion()+ "</td>");
            out.print("<td>" + temp.gettVivienda()+ "</td>");
            out.print("</tr>");
       
        
       }
   %>
  </tbody>
</table>
    </div>
    <%@include file="./footer.jsp" %>
</html>
