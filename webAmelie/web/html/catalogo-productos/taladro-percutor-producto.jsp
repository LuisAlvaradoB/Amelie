<%-- 
    Document   : taladro-percutor-producto
    Created on : 13-nov-2018, 15:11:00
    Author     : luis
--%>

<%@page import="Modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../css/ed-grid.css">
    <link rel="stylesheet" href="../../css/styles.css">
    <link rel="stylesheet" href="../../css/catalogo-productos.css">
    <script type="text/javascript">
            function Redirigir() {
                alert("Producto Agregado");
                document.location.href = "../catalogo.jsp";
            }
        </script>
        <script>
            function Redirigir2() {
                document.location.href = "../../TerminarCompra";
            }
        </script>

    <title>R3D | Producto-Taladro-percutor</title>
</head>
<body>
    <header class="main-header cross-center">
        <div class="ed-container">
            <div class="ed-item s-30 m-20 l-50 cross-center">
                <img src="../../img/logo-r3d-negro.png" alt="Logo R3D" class="logo">
            </div>
            <nav class="ed-item s-70 m-80 l-50 main-end cross-center">
                <ul class="main-menu ed-menu l-horizontal">
                    <li class="main-menu-item"><a class="main-menu-link" href="../../index.jsp">Inicio</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="../../html/catalogo.jsp">Catalogo</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="#">Ubicación</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="#">Preguntas Frecuentes</a></li>
                    <li class="main-menu-item"><a class="main-menu-link" href="../login.jsp">Iniciar Sesión</a></li>
                    
                </ul>
            </nav>
        </div> 

    </header>

    
    <div class="ed-container main-caract">
        <div class="ed-item l-25" name="">
            <h2>Taladro percutor GSB 16 RE 750w Bosch</h2>
            <img class="img-producto to-center" src="../../img/herramientas/taladro-percutor.jpeg" alt="pasta-de-soldar"/>
        </div>
        <div class="ed-item l-50">
            <div class="ed-item fila-caract-gral">
                <p>Marca :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>Bosch</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>Peso producto :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>1 kg</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>Garantia producto :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>6 meses</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>Material producto :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>Plástico</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>Origen producto :</p>
            </div>
             <div class="ed-item fila-caract">
                <p>Chile</p>
            </div>
        </div>
        
         <div class="ed-item l-25">
             <div class="ed-item">
                 <p class="fila-caract-gral">
                     Descripcion producto :
                 </p>  
                 <p>
                     Taladro Percutor de gran Potencía.
                 </p>
                 
                 <p>
                 <h4>Precio : $78.990</h4>
                 </p>
                 
             </div>
             <div class="ed-item">
                 <p><input class="form-cantidad" type="text" name="cantidad-producto" value="" /> Cantidad producto</p>
             </div>
             
            <div class="ed-item">
                    <button class="button radius main-form-btn btn-comprar" onclick="Redirigir()">Agregar</button>
                </div>
                <div class="ed-item">
                    <button class="button radius main-form-btn btn-comprar" onclick="Redirigir2()">Terminar Compra</button>
                </div>
             
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


