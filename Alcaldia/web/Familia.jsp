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
      <th scope="col">Integrantes</th>
    </tr>
  </thead>
  <tbody>
     <form  class ="m-3" method="GET"  action="FamiliaPersona.jsp" >
    
 
      <% 
    ArrayList<Familia> p= m.getFamilia();
    int cont=0; 
    for (Familia per :  p){
        
            Familia temp = (Familia)per;  
            cont++ ;
            int id  =temp.getBarrio();
            String barrio = m.nombreBarrio(id);
            out.print("<tr>");
            out.print("<th scope='row'>" + cont + "</th>"); 
            out.print("<td>" + temp.getCodigo()+ "</td>");  
            out.print("<td>" + barrio+ "</td>");
            out.print("<td>" + temp.getDireccion()+ "</td>");   
            out.print("<td>" + temp.getIngFamiliar()+ "</td>"); 
            out.print("<td>" + temp.getTelefono()+ "</td>");
            out.print("<td>" + temp.gettHabitacion()+ "</td>");
            out.print("<td>" + temp.gettVivienda()+ "</td>");
            out.print("<td> <input class =\"btn btn-primary col\" type =\"submit\" name =\"accion\" value =\""+  temp.getCodigo() +"\"></td>");
            out.print("</tr>");
       
        
       }
    
   %>
     </form >

  </tbody>
</table>
    </div>
    <%@include file="./footer.jsp" %>
</html>
