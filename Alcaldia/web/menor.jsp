<%-- 
    Document   : insertpersona
    Created on : 16/10/2018, 07:30:59 PM
    Author     : fcher
--%>

<%@page import="clases.Enfermedad"%>
<%@page import="clases.Menor"%>
<%@page import="clases.Joven"%>
<%@page import="clases.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  Modelo m = (Modelo)application.getAttribute("modelo"); 
    m.cargarTodasPersonas();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <div class ="container-fluid">
        
  <%@include file="./header.jsp" %>
  <div class ="m-3">
  <h2 >Listado de personas en el sistema </h2>
  
  <table class="table table-responsive">
  <thead>
     
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nombre</th>
      <th scope="col">Codigo</th>
      <th scope="col">documento</th>
      <th scope="col">fecha nacimiento</th>
      <th scope="col">Lugar</th>
      <th scope ="col"> Enfermedades</th>
      <th scope ="col"> Guarderia </th> 
    </tr>
  </thead>
  <tbody>
      <% 
    ArrayList<Persona> p= m.getPersonas();
    int cont=0; 
    for (Persona per :  p){
        if (per instanceof Menor){
            Menor temp = (Menor)per;  
            cont++ ;
            out.print("<tr>");
            out.print("<th scope='row'>" + cont + "</th>"); 
            out.print("<td>" + temp.getNombre() + "</td>");  
            out.print("<td>" + temp.getCodigo()+ "</td>");
            out.print("<td>" + temp.getDocumento() + "</td>"); 
            out.print("<td>" + temp.getfNacimiento()+ "</td>"); 
            out.print("<td>" + temp.getLugar()+ "</td>");
            ArrayList<Enfermedad> e = temp.getEnfermedades(); 
            String enf="";
            for (Enfermedad en : e){
                enf +=" "+en.getDescripcion() + ", ";
            }
            out.print("<td>" + enf+ "</td>");
            out.print("</tr>");
        }
        
       }
   %>
  </tbody>
</table>
  </div>
  <%@include file="./footer.jsp" %>
</html>
