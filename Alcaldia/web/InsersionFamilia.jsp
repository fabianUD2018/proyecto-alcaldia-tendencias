<%-- 
    Document   : InsersionFamilia
    Created on : 22/10/2018, 01:20:58 AM
    Author     : Rodrigon
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
            <h2 >Formulario de ingreso de familias </h2>

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
                        <form class ="m-3" method="GET" action="GuardarFamilia.jsp" >
                            <div class ="form-group">
                                <label for ="direccion"> Dirección </label>
                                <input class ="form-control"  name ="direccion" type ="text" >
                            </div>
                            <div class ="form-group">
                                <label for ="barriesito"> Barriesito </label>
                                <select name ="barriesito" class ="form-control">
                                    <option >Barrio</option>                                    
                                </select>
                            </div>
                            <div class ="form-group">
                                <label for ="ingresos"> Ingresos </label>
                                <input class ="form-control"  name ="ingresos" type ="number" >
                            </div> <div class ="form-group">
                                <label for ="telefono"> telefono </label>
                                <input class ="form-control"  name ="telefono" type ="number" >
                            </div> 
                            <div class ="form-group">
                                <label for ="habitacion">Tipo de habitacion</label>
                                <input class ="form-control" name ="habitacion" type ="text" min =0>
                            </div>
                            <div class ="form-group">
                                <label for ="vivienda">Tipo de vivienda</label>
                                <input class ="form-control" name ="vivienda" type ="text" min =0>
                            </div>
             
                            <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar Familia"> 
                        </form>
                    </div>
                </div>                
            </div>
        </div>
    </div>
    <%@include file="./footer.jsp" %>
</html>