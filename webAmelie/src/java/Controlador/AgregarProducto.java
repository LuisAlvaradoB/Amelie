/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import Modelo.Usuario;
import java.io.IOException;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Felipe
 */
public class AgregarProducto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Producto p1 = new Producto();
        Producto p2 = new Producto();
        Producto p3 = new Producto();
        Producto p4 = new Producto();
        
        p1.setCodigo(1);
        p1.setNombre("Pasta de Soldar");
        p1.setMarca("Indepp");
        p1.setPeso("0.104KG");
        p1.setOrigen("Chile");
        p1.setDescripcion("Pasta para soldar");
        p1.setGarantia("3 Meses");
        p1.setMaterial("Estaño");
        p1.setPrecio(1499);
        p1.setPrecioTotalProducto(1499);
        p1.setCantidadComprada(1);
//        int cantidad = Integer.valueOf(request.getParameter("cantidad-producto"));
       
        
        Usuario.proCliente.add(p1);
        
        p2.setCodigo(2);
        p2.setNombre("Herramienta");
        p2.setMarca("Bosh");
        p2.setPeso("1KG");
        p2.setOrigen("Chile");
        p2.setDescripcion("Taladro Mecánico");
        p2.setGarantia("12 Meses");
        p2.setMaterial("Plastico");
        p2.setPrecio(14999);
        p2.setCantidadComprada(3);
        p2.setPrecioTotalProducto(44997);
        Usuario.proCliente.add(p2);
        
        p3.setCodigo(3);
        p3.setNombre("Martillo");
        p3.setMarca("Steel");
        p3.setPeso("0.5KG");
        p3.setOrigen("Chile");
        p3.setDescripcion("Martillo de Goma");
        p3.setGarantia("1 Meses");
        p3.setMaterial("Plastico");
        p3.setPrecio(5999);
        p3.setCantidadComprada(2);
        p3.setPrecioTotalProducto(11998);
        
        Usuario.proCliente.add(p3);
        
        response.sendRedirect("html/catalogo.jsp");
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
