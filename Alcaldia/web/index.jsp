<%@page import="clases.Modelo"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <% // Para fijar una variable en un jsp
   application.setAttribute("modelo", new Modelo());

   // Para leerla en otro o el mismo JSP
  
%>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <div class ="container-fluid">
        
  <%@include file="./header.jsp" %>
  
    
    </div>
  <%@include file="./footer.jsp" %>
</html>
