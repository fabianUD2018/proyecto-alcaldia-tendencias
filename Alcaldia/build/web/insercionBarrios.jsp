

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
            <h2 >Formulario de ingreso de barrios </h2>
            <div class="accordion" id="accordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Barrio
                        </h5>
                    </div>
                </div>
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <form class ="m-3" method="GET" action="GuardarBarrio.jsp" >
                            <div class ="form-group">
                                <label for ="nombre barrio"> Nombre del barrio </label>
                                <input class ="form-control"  name ="nombre_barrio" type ="text" >
                            </div>
                            <div class ="form-group">
                                <label for ="estrato"> Estrato </label>
                                <select class ="form-control"  name ="estrato" type ="text" >
                                    <option >1</option>
                                    <option >2</option>
                                    <option >3</option>
                                    <option >4</option>
                                    <option >5</option>
                                    <option >6</option>
                                </select>
                            </div>
                            <div class ="form-group">
                                <label for ="area"> Area </label>
                                <input class ="form-control"  name ="area" type ="text" >
                            </div> <div class ="form-group">
                                <label for ="tipo"> Tipo </label>
                                <select class ="form-control"  name ="tipo" type ="text" >
                                    <option >Residencial</option>
                                    <option >Industrial</option>
                                    <option >Comercial</option>
                                </select>
                            </div> 
                            <input class ="btn btn-primary col" type ="submit" name ="accion" value ="Guardar barrio"> 
                        </form>
                    </div>
                </div>  
        </div>
    </div>
    <%@include file="./footer.jsp" %>
</html>
