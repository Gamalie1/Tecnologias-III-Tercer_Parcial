<%-- 
    Autor: Gamaliel Silva Lopez
 Fecha de creacion: 16 de mayo de 2022
 Fecha de modificacion: 30 de mayo de 2022
 Descripcion: Se crea una pagina web para poder actualizar un formulario.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>

        <!-- CSS MATERIALIZE -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- JS MATERIALIZE -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

        <!-- Iconos de materialize  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- CSS formulario -->
        <link rel="stylesheet" href="resources/css/RegistrarEditar.css">
        <!-- CSS login -->
        <link rel="stylesheet" href="resources/css/LOGIN.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

        <!-- CSS MATERIALIZE -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- JS MATERIALIZE -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <!-- Iconos -->
   <script src="https://kit.fontawesome.com/4c08261d94.js" crossorigin="anonymous"></script>

    </head>
    <body class="bodylogin">
        

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
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown2">Productos<i class="material-icons right">arrow_drop_down</i></a></li>
                    <!-- Sub menu -->
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Usuarios<i class="material-icons right">arrow_drop_down</i></a></li>  

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
       
<div class="container">
    <form action="UsuarioServletController?action=login" method="post">
	<div class="row loginContainer" >
		<div class="col s12 m12 18 offset-12 loginDiv">
			<div class="col s12 m6 16">
				<div class="col s11 offset-1">
					<img src="resources/img/login.png">
				</div>
			</div>
			<div class="col s12 m5 15 offset-11 offset-m1">
			<div class="LoginTitle">
				<h5>Inicia sesion</h5>
			</div>
			<div class="row">
				<div class="col 12 custosninput">
					<i class="fa-solid fa-envelope prefix">
				
					</i>
					<input class="browser-default" type="text" name="user" placeholder="Nombre usuario" autocomplete="off">
				</div>
				<div class="col 12 custosninput">
					<i class="fa-solid fa-key">
						
					</i>
					<input class="browser-default" type="password" name="contrasena" placeholder="Contraseña" autocomplete="off">
				</div>
			</div>
			<div class="row">
				<button class="btn col l12 s12 m12 BTNLOGIN green accent-3">LOGIN</button>
			</div>
		</div>
		</div>
		
	</div>
        </form>
</div>
       





        <!--  Scripts-->
        <!--  Iconos-->
        <script src="https://kit.fontawesome.com/35db202371.js" crossorigin="anonymous"></script>
        <!-- JQUERY-->
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <!-- JS Main -->
         <script src="resources/javascrip/RegistrarEditar.js"></script>

        <script>

                                        document.addEventListener('DOMContentLoaded', function () {
                                            // var elems = document.querySelectorAll('.sidenav');
                                            // var instances = M.Sidenav.init(elems);
                                            M.AutoInit();
                                        });

        </script>




    </body>
</html>

