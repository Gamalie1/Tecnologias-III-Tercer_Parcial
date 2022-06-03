<%-- 
 Autor: Gamaliel Silva Lopez
 Fecha de creacion: 16 de mayo de 2022
 Fecha de modificacion: 30 de mayo de 2022
 Descripcion: Se crea una pagina para un formulario.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- CSS MATERIALIZE -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- JS MATERIALIZE -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
       
        <!-- Iconos de materialize  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
       
        <!-- CSS formulario -->
        <link rel="stylesheet" href="resources/css/RegistrarEditar.css">
        
          <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            
        <!-- CSS MATERIALIZE -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- JS MATERIALIZE -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


    </head>
    <body>
        <!-- Navegation Menu -->
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
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Usuarios<i class="material-icons right">arrow_drop_down</i></a><</li>
                     <!-- Sub menu -->
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown2">Productos<i class="material-icons right">arrow_drop_down</i></a><</li>  
                    
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
        <!--Formulario -->
        <div class="containerForm">
            <div class="row card hoverable">
                <div class="card-content ">
                    <h4 class="center blue-text">Registrar usuario</h4>
                    <form class="row s12" action="UsuarioServletController?action=crearBD" method="post">
                        <input type='hidden' name='idUsuario' ><br>  
                        <div class="col s12">
                            <div class="input-field">
                                <input type="text" name="nombreusuario" placeholder="Nombre de ususario*" class="validate" required>
                            </div>
                        </div>
                        <div class="col s12">
                            <div class="input-field">
                                <input type="password" name="contrasena" placeholder="Contraseña*" class="validate" required>
                            </div>
                        </div>
                        <div class="col s12">
                            <div class="input-field">
                                <input type="text" name="nombre" placeholder="Nombre" class="validate" required>
                            </div>
                        </div>
                        <div class="col s12">
                            <div class="input-field">

                                <input type='text' name='sexo' placeholder="Sexo" class="validate" required><br>
                            </div>
                        </div>

                        <div class="col s12">
                            <div class="input-field">

                                <input type="text" name="edad" placeholder="Edad" class="validate" required onkeypress="return event.charCode >= 48 && event.charCode <= 57"   ><br>

                            </div>
                        </div>



                        <div class="col s12">
                            <p><label><input type="checkbox"></label></p>
                        </div>
                        <div class="col s12 center">
                            <button type="submit" class="btn btn-large waves-effect waves-light blue" value='Guardar'>Registrarse<i class="material-icons right">send</i></button>

                        </div>
                    </form>
                </div>
            </div>
        </div>

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
