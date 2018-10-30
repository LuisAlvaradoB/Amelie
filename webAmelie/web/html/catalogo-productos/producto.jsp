<%-- 
    Document   : pasta-de-soldar
    Created on : 30-oct-2018, 9:20:16
    Author     : luis
--%>

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
    

    <title>R3D | Catalogo</title>
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
                    <li class="main-menu-item"><a class="main-menu-link" href="#">Iniciar Sesión</a></li>
                    
                </ul>
            </nav>
        </div> 

    </header>

    
    <div class="ed-container main-caract">
        <div class="ed-item l-25">
            <h2>nombre-producto</h2>
            <img class="img-producto to-center" src="../../img/catalogo/pasta-de-soldar.jpeg" alt="pasta-de-soldar"/>

        </div>
        <div class="ed-item l-50">
            <div class="ed-item fila-caract-gral">
                <p>marca-producto :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>Indepp</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>peso-producto :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>0,104 kg</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>garantia-producto :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>3 meses</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>material-producto :</p>
            </div>
            <div class="ed-item fila-caract">
                <p>Estaño</p>
            </div>
            
            <div class="ed-item fila-caract-gral">
                <p>origen-producto :</p>
            </div>
             <div class="ed-item fila-caract">
                <p>Chile</p>
            </div>
        </div>
        
         <div class="ed-item l-25">
             <div class="ed-item">
                 <p class="fila-caract-gral">
                     descripcion-producto :
                 </p>  
                 <p>
                     Su uso es complementario a la soldadura. Se utiliza para 
                     limpiar la superficie antes de ser soldada. Fácil de utilizar.
                 </p>
                 
             </div>
             <div class="ed-item">
                 <a><input class="form-cantidad" type="text" name="cantidad-producto" value="" /> cantidad-producto</a>
             </div>
             
             <div class="ed-item">
                 <button class="button radius main-form-btn btn-comprar">Comprar</button>
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

