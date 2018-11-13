<%-- 
    Document   : catalogo
    Created on : 30-oct-2018, 8:29:46
    Author     : luis
--%>

<%@page import="Controlador.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Producto, java.util.ArrayList, Controlador.Conexion" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/ed-grid.css">
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/catalogo.css">
    

    <title>R3D | Catalogo</title>
</head>
<body>
    <header class="main-header cross-center">
        <div class="ed-container">
            <div class="ed-item s-30 m-20 l-50 cross-center">
                <img src="../img/logo-r3d-negro.png" alt="Logo R3D" class="logo">
            </div>
            <nav class="ed-item s-70 m-80 l-50 main-end cross-center">
                <ul class="main-menu ed-menu l-horizontal">
                    <li class="main-menu-item"><a class="main-menu-link" href="../index.jsp">Inicio</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="#">Catalogo</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="#">Ubicación</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="#">Preguntas Frecuentes</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="login.jsp">Iniciar Sesión</a></li>
                    
                </ul>
            </nav>
        </div> 

    </header>

    <div class="main-banner">
        <img src="../img/catalogo/banner2.jpg" alt="Lamparas wifi house" class="main-banner-img">
        <div class="ed-container">
            <div class="ed-item l-60 to-center">
                <div class="main-banner-data">
                    <h1>¡Más de 1000 productos garantizados!</h1>
                </div>
            </div>
        </div>
    </div>
    
        
        <div class="ed-container main-catalogo-fila1">
             <div class="ed-item l-25 main-ofertas-producto">
                 <img class="producto-oferta" src="../img/catalogo/pasta-de-soldar.jpeg" alt="pasta-de-soldar"/>
                 <p>Pasta para soldar 100gr Indepp</p>
                 <h3 class="txt-oferta-precio">Oferta Internet: $ 990</h3>
                 <button class="button radius main-form-btn"><a href="catalogo-productos/pasta-de-soldar-producto.jsp"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></a></button>
             </div>
      
       
        <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/atornillador-electrico.jpeg" alt="sierra-circular"/>
            <p>Atornillador inalámbrico 1/4" DCF060 Dewalt</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 39.990</h3>
            <button class="button radius main-form-btn"><a href="catalogo-productos/atornillador-inalambrico-producto.jsp"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></a></button>
        </div>
       <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/sierra-circular.jpeg" alt="sierra-circular"/>
            <p>Sierra circular + taladro percutor + sierra caladora</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 69.990</h3>
            <button class="button radius main-form-btn"><a href="catalogo-productos/sierra-circular-producto.jsp"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></a></button>
        </div>
       <div class="ed-item l-25 main-ofertas-producto">
           <img class="producto-oferta" src="../img/herramientas/taladro-percutor.jpeg" alt="sierra-circular"/>
            <p>Taladro percutor GSB 16 RE 750w Bosch</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 78.990</h3>
            <button class="button radius main-form-btn"><a href="catalogo-productos/taladro-percutor-producto.jsp"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></a></button>
        </div>
       
       <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/atornillador-electrico.jpeg" alt="atornillador-electrico"/>
            <p>Atornillador inalámbrico 1/4" DCF060 Dewalt</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 39.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
        <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/sierra-circular.jpeg" alt="sierra-circular"/>
            <p>Sierra circular + taladro percutor + sierra caladora</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 69.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
       <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/sierra-circular.jpeg" alt="sierra-circular"/>
            <p>Sierra circular + taladro percutor + sierra caladora</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 69.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
       <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/sierra-circular.jpeg" alt="sierra-circular"/>
            <p>Sierra circular + taladro percutor + sierra caladora</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 69.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
       
       <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/atornillador-electrico.jpeg" alt="atornillador-electrico"/>
            <p>Atornillador inalámbrico 1/4" DCF060 Dewalt</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 39.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
        <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/sierra-circular.jpeg" alt="sierra-circular"/>
            <p>Sierra circular + taladro percutor + sierra caladora</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 69.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
       <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/sierra-circular.jpeg" alt="sierra-circular"/>
            <p>Sierra circular + taladro percutor + sierra caladora</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 69.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
       <div class="ed-item l-25 main-ofertas-producto">
            <img class="producto-oferta" src="../img/herramientas/sierra-circular.jpeg" alt="sierra-circular"/>
            <p>Sierra circular + taladro percutor + sierra caladora</p>
            <h3 class="txt-oferta-precio">Oferta Internet: $ 69.990</h3>
            <button class="button radius main-form-btn"><img class="svg-cart-catalogo" src="../assets/svg/043-cart.svg"></button>
        </div>
   </div>
            

        
        
    <footer class="main-footer" role="contentinfo" itemscope="" itemtype="http://schema.org/WPFooter">
        <div class="ed-container main-footer--content">
            <div class="ed-item to-center center">
                <p class="smaller">
                    &copy; 2018 R3D - Ruta D-43 #901 Coquimbo Of 204 | Fono 51 2 65074 | 
                </p>
                <p>
                    Desarrollado por Felipe Olivares & Luis Alvarado</a>
                </p>
            </div>
        </div>
    </footer>
</body>
</html>
