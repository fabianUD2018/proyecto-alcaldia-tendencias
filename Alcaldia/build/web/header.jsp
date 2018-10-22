<%-- 
    Document   : header
    Created on : 16/10/2018, 01:45:38 PM
    Author     : fcher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel ="stylesheet" href="css/bootstrap.min.css">
<link rel ="stylesheet" href="css/estilos.css">


  <nav class="navbar navbar-expand-lg navbar-light  navbar-color">
    <a class="navbar-brand" href="index.jsp">Poner logo de soflex</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Personas
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="adulto.jsp">Consultar adultos</a>
            <a class="dropdown-item" href="menor.jsp">Consultar menores</a>
            <a class="dropdown-item" href="jovenes.jsp">Consultar jovenes</a>
            <a class="dropdown-item" href="insercionPersonas.jsp">Agregar</a>
           <!--<div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>-->
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Familias
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Consultar</a>
            <a class="dropdown-item" href="#">Agregar</a>
           <!--<div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>-->
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Instituciones
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="Empresa.jsp">Consultar Empresas</a>
            <a class="dropdown-item" href="Guarderia.jsp">Consultar Guarderias</a>
            <a class="dropdown-item" href="Planteles.jsp">Consultar Planteles</a>
            <a class="dropdown-item" href="InsercionInstituciones.jsp">Agregar</a>
           <!--<div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>-->
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Barrios
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Consultar</a>
            <a class="dropdown-item" href="#">Agregar</a>
           <!--<div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>-->
          </div>
        </li>
      </ul>

    </div>
</nav>
    <header class="header">
        <div class ="titulo"> Prototipo de gestion de alcaldias </div>
        <div class = "subtitulo"><i>Universidad Distrital Francisco Jose de Caldas</i> </div>
    </header>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>