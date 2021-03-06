<%-- 
    Document   : FamiliaPersona
    Created on : 22/10/2018, 01:22:09 PM
    Author     : Rodrigon
--%>


<%@page import="clases.Familia"%>
<%@page import="clases.Adulto"%>
<%@page import="clases.Enfermedad"%>
<%@page import="clases.Menor"%>
<%@page import="clases.Joven"%>
<%@page import="clases.Persona"%>
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
      <th scope="col">Edad</th>
      <th scope="col">Nombre</th>
      <th scope="col">Codigo</th>
      <th scope="col">documento</th>
      <th scope="col">fecha nacimiento</th>
      <th scope="col">Lugar</th>
      
      <th scope ="col"> Cargo</th>
      <th scope ="col"> jornada </th> 
      <th scope="col" > sueldo</th>
      
      <th scope="col">Curso</th>
      <th scope="col">Educacion</th>
      <th scope="col">Tipo Educacion</th>
      
      <th scope ="col"> Enfermedades</th>
      <th scope ="col"> Guarderia </th> 
    </tr>
  </thead>
  <tbody>
      <% String accion= (String) request.getParameter("accion");
    //if (accion.equals ("Guardar Empresa")){
    ArrayList<Familia> f= m.getFamilia();
    Familia buscada = null;
    for (Familia elem : f) {
            if(elem.getCodigo() == Integer.parseInt(accion)){
                buscada = elem;
            }
        }
    if(buscada != null){
        ArrayList<Persona> p= buscada.getPersonas();
    int cont=0; 
    for (Persona per :  p){
        if (per instanceof Adulto){
            Adulto temp = (Adulto)per;  
            cont++ ;
            out.print("<tr>");
            out.print("<th scope='row'>" + cont + "</th>"); 
            out.print("<td>" + "Adulto" + "</td>"); 
            out.print("<td>" + temp.getNombre() + "</td>");  
            out.print("<td>" + temp.getCodigo()+ "</td>");
            out.print("<td>" + temp.getDocumento() + "</td>"); 
            out.print("<td>" + temp.getfNacimiento()+ "</td>"); 
            out.print("<td>" + temp.getLugar()+ "</td>");
            out.print("<td>" + temp.getCargo()+ "</td>");
            out.print("<td>" + temp.getJornada()+"</td>");
            out.print("<td>" + temp.getSueldo()+ "</td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            
            
            out.print("</tr>");
        }else if(per instanceof Joven){
            Joven temp = (Joven)per;  
            cont++ ;
            out.print("<tr>");
            out.print("<th scope='row'>" + cont + "</th>"); 
            out.print("<td>" + "Joven" + "</td>"); 
            out.print("<td>" + temp.getNombre() + "</td>");  
            out.print("<td>" + temp.getCodigo()+ "</td>");
            out.print("<td>" + temp.getDocumento() + "</td>"); 
            out.print("<td>" + temp.getfNacimiento()+ "</td>"); 
            out.print("<td>" + temp.getLugar()+ "</td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td>" +temp.getCurso()+ "</td>");
            out.print("<td>" +temp.getEducacion()+ "</td>");
            out.print("<td>" +temp.getTipoE()+ "</td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("</tr>");
        }else{
            Menor temp = (Menor)per;  
            cont++ ;
            out.print("<tr>");
            out.print("<th scope='row'>" + cont + "</th>"); 
            out.print("<td>" + "Menor" + "</td>"); 
            out.print("<td>" + temp.getNombre() + "</td>");  
            out.print("<td>" + temp.getCodigo()+ "</td>");
            out.print("<td>" + temp.getDocumento() + "</td>"); 
            out.print("<td>" + temp.getfNacimiento()+ "</td>"); 
            out.print("<td>" + temp.getLugar()+ "</td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            out.print("<td></td>");
            ArrayList<Enfermedad> e = temp.getEnfermedades(); 
            String enf="";
            for (Enfermedad en : e){
                enf +=" "+en.getDescripcion() + ", ";
            }
            out.print("<td>" + enf+ "</td>");
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