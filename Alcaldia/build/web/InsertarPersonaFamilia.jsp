<%-- 
    Document   : GuardarPersonaFamilia
    Created on : 22/10/2018, 02:29:06 PM
    Author     : Rodrigon
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Modelo"%>
<%@page import="clases.Familia"%>
<%@page import="clases.Persona"%>
<%@page import="clases.Menor"%>
<%@page import="clases.Joven"%>
<%@page import="clases.Adulto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><%  Modelo m = (Modelo)application.getAttribute("modelo"); 
    m.cargarTodasPersonas();
    m.cargarFamilias();
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div class ="container-fluid">

        <%@include file="./header.jsp" %>
        <div class ="m-3">
            <h2 >Formulario de ingreso de integrantes a una familia </h2>

            <div class="accordion" id="accordion">
                 
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Familia
                            </button>
                        </h5>
                    </div>
                </div>
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <form class ="m-3" method="GET" action="GuardarPersonaEnFamilia.jsp" >
                            <div class ="form-group">
                                <label for ="familia"> Codigo de la familia </label>
                                <select name ="familia" class ="form-control">
                                     
                                    <%
                                        ArrayList<Familia> f= m.getFamilia();
                                        
                                        
                                        for (Familia fam :  f){
                                           out.print("<option>" + fam.getCodigo()+"</option>" );                                                   
                                        }
                                        
                                    %>
                                </select>
                            </div>
                            <div class ="form-group">
                                <label for ="persona"> Codigo del integrante </label>
                                <select name ="persona" class ="form-control">
                                     
                                    <%
                                        ArrayList<Persona> p= m.getPersonas();
                                        
                                       
                                        for (Persona per :  p){
                                            if (per instanceof Adulto){
                                                Adulto temp = (Adulto)per;  
                                                out.print("<option>" + temp.getNombre()+"</option>" ); 
                                               
                                            }else if(per instanceof Joven){
                                                Joven temp = (Joven)per;  
                                                out.print("<option>" + temp.getNombre()+"</option>" ); 
                                            }else{
                                                Menor temp = (Menor)per;  
                                                out.print("<option>" + temp.getNombre()+"</option>" ); 
                                            }

                                           }
                                        
                                    %>
                                </select>
                            </div>                           
             
                            <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar"> 
                        </form>
                    </div>
                </div>  
            </div>
        </div>
    </div>
    <%@include file="./footer.jsp" %>
</html>
