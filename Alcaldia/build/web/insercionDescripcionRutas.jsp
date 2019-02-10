<%-- 
    Document   : insercionDescripcionRutas
    Created on : 10/02/2019, 12:32:17 PM
    Author     : leml
--%>

<%@page import="java.util.ArrayList"%>


<%@page import="java.util.ArrayList"%>
<%@page import="clases.Modelo"%>
<%@page import="clases.Ruta"%>


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
                                Agregar nuevas rutas
                        </h5>
                    </div>
                </div>
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <form class ="m-3" method="GET" action="GuardarDescripcionRuta.jsp" >
                            <div class ="form-group">
                                <label for ="estrato"> Nueva ruta </label>
                                <input class ="form-control"  name ="ruta" type ="text" >
     
                            </div>
                            <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar ruta"> 
                        </form>
                    </div>
                </div>  
        </div>
    </div>
    <%@include file="./footer.jsp" %>
</html>
