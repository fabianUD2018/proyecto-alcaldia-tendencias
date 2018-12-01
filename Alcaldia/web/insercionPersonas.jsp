<%-- 
    Document   : insercionPersonas
    Created on : 18/10/2018, 05:06:05 PM
    Author     : fcher
--%>

<%@page import="clases.Guarderia"%>
<%@page import="clases.Empresa"%>
<%@page import="clases.Plantel"%>
<%@page import="clases.Institucion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Enfermedad"%>
<%@page import="clases.Enfermedad"%>
<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  Modelo m = (Modelo) application.getAttribute("modelo");
    m.cargarTodasLasInstituciones();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div class ="container-fluid">

        <%@include file="./header.jsp" %>
        <div class ="m-3">
            <h2 >Formulario de ingreso de personas </h2>
            <div class="accordion" id="accordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Persona Joven
                            </button>
                        </h5>
                    </div>
                </div>
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <form class ="m-3" method="GET" action="GuardarPersona.jsp" >
                            <div class ="form-group">
                                <label for ="nombre persona"> Nombre de la persona </label>
                                <input class ="form-control"  name ="nombre_persona" type ="text" >
                            </div>
                            <div class ="form-group">
                                <label for ="documento"> documento </label>
                                <input class ="form-control"  name ="documento" type ="text" >
                            </div>
                            <div class ="form-group">
                                <label for ="fecha_nacimiento"> fecha de nacimiento </label>
                                <input class ="form-control"  name ="fecha_nacimiento" type ="text" >
                            </div> <div class ="form-group">
                                <label for ="lugar_nacimiento"> lugar de nacimiento </label>
                                <input class ="form-control"  name ="lugar_nacimiento" type ="text" >
                            </div> 
                            <div class ="form-group">
                                <label for ="curso">Curso</label>
                                <input class ="form-control" name ="curso" type ="number" min =0>
                            </div>
                            <div class ="form-group">
                                <label for ="educacion">Educacion</label>
                                <input class ="form-control" name ="educacion" type ="text">
                            </div>
                            <div class ="form-group">
                                <label for ="jornada">Jornada</label>
                                <input class ="form-control" name="jornada" type ="text">
                            </div>
                            <div class ="form-group">
                                <label for ="tipo_estudiante">Tipo Estudiante</label>
                                <input class ="form-control" name ="tipo_estudiante" type ="text">
                            </div>

                            <div class ="form-group">
                                <label for ="plantel"> Plantel </label>
                                <select name ="plantel" class ="form-control">
                                    <option></option>

                                    <%  ArrayList<Institucion> ins = m.getInsti();
                                        int cont = 0;
                                        for (Institucion i : ins) {
                                            if (i instanceof Plantel) {
                                                Plantel temp = (Plantel) i;
                                                out.println("<option>" + temp.getNombre() + "</option>");
                                            }
                                        }
                                    %>
                                </select>
                            </div>
                            <div class ="form-group">
                                <label for =tipodoc"> Tipo de documento de identificacion </label>
                                <select name ="tipo_doc" class ="form-control">
                                    <option>1</option> 
                                   
                                </select>
                                <p>1 -> Cedula</p>
                           
                            </div>
                            <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar Joven"> 
                        </form>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Adulto
                            </button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body">
                            <form class ="m-3" method="GET" action ="GuardarPersona.jsp" >
                                <div class ="form-group">
                                    <label for ="nombre persona"> Nombre de la persona </label>
                                    <input class ="form-control"  name ="nombre_persona" type ="text" >
                                </div>
                                <div class ="form-group">
                                    <label for =tipodoc"> Tipo de documento de identificacion </label>
                                    <select name ="tipo_doc" class ="form-control">
                                        <option>1</option> 
                                   
                                    </select>
                                    <p>1 -> Cedula</p>
                               
                                </div>
                                <div class ="form-group">
                                    <label for ="documento"> documento </label>
                                    <input class ="form-control"  name ="documento" type ="text" >
                                </div>
                                <div class ="form-group">
                                    <label for ="fecha_nacimiento"> fecha de nacimiento </label>
                                    <input class ="form-control"  name ="fecha_nacimiento" type ="text" >
                                </div> <div class ="form-group">
                                    <label for ="lugar_nacimiento"> lugar de nacimiento </label>
                                    <input class ="form-control"  name ="lugar_nacimiento" type ="text" >
                                </div> 
                                <div class ="form-group">
                                    <label for ="cargo">Cargo</label>
                                    <input class ="form-control" name ="cargo" type ="text" min =0>
                                </div>

                                <div class ="form-group">
                                    <label for ="jornada_trabajo">Jornada</label>
                                    <input class ="form-control" name="jornada_trabajo" type ="text">
                                </div>
                                <div class ="form-group">
                                    <label for ="sueldo">Sueldo</label>
                                    <input class ="form-control" name ="sueldo" type ="text">
                                </div>

                                <div class ="form-group">
                                    <label for ="empresa"> Empresa </label>
                                    <select name ="empresa" class ="form-control">
                                        <option>---</option>

                                        <%
                                            ArrayList<Institucion> emp = m.getInsti();

                                            for (Institucion i : emp) {
                                                if (i instanceof Empresa) {
                                                    Empresa temp = (Empresa) i;
                                                    out.println("<option>" + temp.getNombre() + "</option>");
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                                <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar Adulto"> 
                            </form>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Menor 
                            </button>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                        <div class="card-body">
                            <form class ="m-3" method="GET" action="GuardarPersona.jsp" >
                                <div class ="form-group">
                                    <label for ="nombre persona"> Nombre de la persona </label>
                                    <input class ="form-control"  name ="nombre_persona" type ="text" >
                                </div>
                                <div class ="form-group">
                                    <label for =tipodoc"> Tipo de documento de identificacion </label>
                                    <select name ="tipo_doc" class ="form-control">
                                        <option>1</option> 
                                        
                                    </select>
                                    <p>1 -> Cedula</p>
                                    
                                </div>
                                <div class ="form-group">
                                    <label for ="documento"> documento </label>
                                    <input class ="form-control"  name ="documento" type ="text" >
                                </div>
                                <div class ="form-group">
                                    <label for ="fecha_nacimiento"> fecha de nacimiento </label>
                                    <input class ="form-control"  name ="fecha_nacimiento" type ="text" >
                                </div> <div class ="form-group">
                                    <label for ="lugar_nacimiento"> lugar de nacimiento </label>
                                    <input class ="form-control"  name ="lugar_nacimiento" type ="text" >
                                </div> 
                                <div class ="form-group">
                                    <label for ="enfermedades">Enfermedades </label>
                                    <%
                                        ArrayList<Enfermedad> e = new ArrayList<Enfermedad>();
                                        
                                        m.cargarEnfermedades();
                                        e= m.getListaE();
                                        out.print("<select class =form-control name =\"enfermedad\">");

                                        out.print("<option>---</option>");
                                        for (Enfermedad x : e) {

                                            out.print("<option> " + x.getDescripcion() + "</option>");
                                        }
                                        out.print("</select>");
                                    %>
                                </div>
                                <div class ="form-group">
                                    <label for ="guarderia">Guarderia</label>
                                    <select name ="guarderia" class ="form-control">
                                        <option>---</option>
                                        <%
                                            ArrayList<Institucion> gua = m.getInsti();

                                            for (Institucion i : gua) {
                                                if (i instanceof Guarderia) {
                                                    Guarderia temp = (Guarderia) i;
                                                    out.println("<option>" + temp.getNombre() + "</option>");
                                                }
                                            }
                                        %>
                                    </select>
                                </div>

                                <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar Menor"> 
                            </form>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <%@include file="./footer.jsp" %>
</html>
