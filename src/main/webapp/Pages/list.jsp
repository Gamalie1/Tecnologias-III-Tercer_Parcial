<%-- 
 Autor: Gamaliel Silva Lopez
 Fecha de creacion: 16 de mayo de 2022
 Fecha de modificacion: 30 de mayo de 2022
 Descripcion: Se crea una pagina web para el listado de los usuarios.
--%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de productos</title>
        <!-- CSS MATERIALIZE -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- JS MATERIALIZE -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

        <!-- Iconos de materialize  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- CSS formulario -->
        <link rel="stylesheet" href="resources/css/EstiloListar.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

        <!-- CSS MATERIALIZE -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- JS MATERIALIZE -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
          <!-- Iconos -->
   <script src="https://kit.fontawesome.com/4c08261d94.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <!-- Navegation Menu -->
        <nav class="black" role="navigation">
            <div class="nav-wrapper container nav">
                <!-- Logo -->
                <a id="logo-container" href="#" class="brand-logo">
                    <i class="material-icons">local_hospital</i>
                    Farmacia
                </a>

                <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <!-- Anclas -->
                <ul class="right hide-on-med-and-down">
                     <ul id="dropdown1" class="dropdown-content">
                        <li><a href="UsuarioServletController?action=crearForm">Crear</a></li>
                        <li><a href="UsuarioServletController?action=listar">Listar</a></li>
                        <li class="divider"></li>
                        <li><a href="#!">three</a></li>
                    </ul>
                    <ul id="dropdown2" class="dropdown-content">
                        <li><a href="ProductoServletController?action=crearForm">Crear</a></li>
                        <li><a href="ProductoServletController?action=listar">Listar</a></li>
                        <li class="divider"></li>
                        <li><a href="#!">three</a></li>
                    </ul>
                    <li><a href="Pages/index.html">Inicio</a></li>
                  
                    <!-- Sub menu -->
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Productos<i class="material-icons right">arrow_drop_down</i></a><</li>
                     <!-- Sub menu -->
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown2">Usuarios<i class="material-icons right">arrow_drop_down</i></a><</li>  
                    
                    <li><a href="#" class="btn white black-text waves-effect waves-blue-grey lighten-1">Iniciar sesion</a></li>
                </ul>
                <!-- Anclas -->
                <ul id="nav-mobile" class="sidenav">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="#">Prodcutos</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Shop</a></li>
                    <li><a href="#" class="btn black white-text waves-effect waves-blue-grey lighten-1">Iniciar sesion</a></li>
                </ul>

            </div>
        </nav>
        

        
        
        <div class="row indigo lighten-5 z-depth-4">
			<!-- DIV COL S12 -->
			<div class="col s12">
				<h4 class="center">
					<b class="teal-text"><em>Listar usuarios.</em></b>
				</h4>
				<hr class="indigo lighten-5 z-depth-1">
				<!-- DIV.Container -->
				<div class="container">
				<br>
					<!-- TABLE -->
        <table class="highlight centered responsive-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre de usuario</th>
                    <th>Contraseña</th>
                    <th>Nombre</th>
                    <th>Sexo</th>
                    <th>Edad</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="usuario" items="${ListaUsuario}">
                    <tr>
                        <td><c:out value="${usuario.id}"/></td> 
                        <td><c:out value="${usuario.nombreusuario}"/></td>
                        <td><c:out value="${usuario.contrasena}"/></td>
                        <td><c:out value="${usuario.nombre}"/></td>
                        <td><c:out value="${usuario.sexo}"/></td>
                        <td><c:out value="${usuario.edad}"/></td>
                        
                        <td>
                                    <a class="tooltip_left btn-floating btn-large waves-effect cyan darken-2" href="UsuarioServletController?action=actualizarForm&id=<c:out value="${usuario.id}"/>">
                                        <i class="fa-solid fa-pen"></i>
                                    </a>
                                    <a class="tooltip_right btn-floating btn-large waves-effect cyan darken-2" href="UsuarioServletController?action=eliminar&id=<c:out value="${usuario.id}"/>">
                                       <i class="fa-solid fa-rectangle-xmark"></i>
                                    </a>
                                </td>
                    </tr> 
                </c:forEach>


            </tbody>
        </table><!-- FIN TABLE -->		
    </div><!-- FIN DIV.Container -->
</div><!-- FIN DIV COL S12 -->
</div><!-- DIV Tables example -->


<!--  Footer-->

<footer class="page-footer black">
    <div class="social-container">
        <a href="#"><i class="fab fa-facebook-square"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
    </div>

    <div class="footer-copyright">
        <div class="container center footer-text">
            &copf; Gamaliel Silva López
        </div>
    </div>
</footer>
<!--  Scripts-->
<!--  Iconos-->
<script src="https://kit.fontawesome.com/35db202371.js" crossorigin="anonymous"></script>
<!-- JQUERY-->
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<!-- JS Main -->
 <script src="resources/javascrip/RegistrarEditar.js"></script>

 <script>
  
  document.addEventListener('DOMContentLoaded', function() {
    // var elems = document.querySelectorAll('.sidenav');
    // var instances = M.Sidenav.init(elems);
    M.AutoInit();
  });
    
  </script>
</body>
</html>
