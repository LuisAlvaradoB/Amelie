<%-- 
    Document   : sierra-circular
    Created on : 13-nov-2018, 15:08:05
    Author     : luis
--%>

<%@page import="Controlador.TerminarCompra"%>
<%@page import="Modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="../css/ed-grid.css">
        <link rel="stylesheet" href="../css/styles.css">
        <link rel="stylesheet" href="../css/catalogo-productos.css">
        <script type="text/javascript">
            function Redirigir() {
                alert("Producto Agregado");
                document.location.href = "../../AgregarProducto";
            }
        </script>
        <script>
            function Redirigir2() {
                document.location.href = "../../TerminarCompra";
            }
        </script>

        <title>R3D | Producto-Sierra-circular</title>
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
                        <li class="main-menu-item"><a class="main-menu-link" href="../html/catalogo.jsp">Catalogo</a></li>
                        <li class="main-menu-item"><a class="main-menu-link" href="#">Ubicación</a></li>
                        <li class="main-menu-item"><a class="main-menu-link" href="#">Preguntas Frecuentes</a></li>
                        <li class="main-menu-item"><a class="main-menu-link" href="login.jsp">Iniciar Sesión</a></li>

                    </ul>
                </nav>
            </div> 

        </header>

        <%
            // recupera la sesion
            //ArrayList<Producto> listaProductos = (ArrayList<Producto>) request.getSession().getAttribute("pro"); 
            ArrayList<Producto> listaProductos = TerminarCompra.retornoLista();

        %>
        <h2 align="center"> Detalle de Compra</h2>
        <div class="ed-container main-caract">
            
            <table border="1" width="500" align="center">
                <% for (Producto p : listaProductos) { %>


                <tr>
                    <td><%=p.getNombre()%> </td>
                    <td><%=p.getMarca()%> </td>
                    <td><%=p.getMaterial()%> </td>
                    <td><%=p.getPrecio()%> </td>
                    <td><%=p.getCantidadComprada()%> </td>
                    <td>$<%=p.getPrecioTotalProducto()%> </td>
                </tr>
                <br>
                
                



                <%
                    int cantidad = p.getCantidadComprada();
                    int precio = p.getPrecio();
                    int precioTotalProducto1 = cantidad * precio;
                    
                    }
                    
                %>
                <%
                
                
                %>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>Total a Pagar:</td>
                <td>$58.494</td>
            </table>





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


