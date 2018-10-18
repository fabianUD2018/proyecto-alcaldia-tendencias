<%-- 
    Document   : insertpersona
    Created on : 16/10/2018, 07:30:59 PM
    Author     : fcher
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Modelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <div class ="container-fluid">
        
  <%@include file="./header.jsp" %>
  <div class ="m-3">
  <h2 >Formulario de ingreso de personas </h2>
  
  <form class ="m-3" method="GET" >
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
          <!-- Codigo para obtener los planteles con el uso del modelo-->
         
        <div class ="form-group">
            <label for ="plantel"> Plantel </label>
            <select class ="form-control">
               
            </select>
        </div>
          <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar"> 
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
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Niño
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
</div>
        </form>
      
  </div>
     </div>
  <%@include file="./footer.jsp" %>
</html>
