/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import Modelo.Usuario;
import java.io.IOException;
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
        
        
        p1.setNombre("Pasta de Soldar");
        p1.setMarca("Indepp");
        p1.setPeso("0.104KG");
        p1.setOrigen("Chile");
        p1.setDescripcion("Pasta para soldar");
        p1.setGarantia("3 Meses");
        p1.setMaterial("Estaño");
        p1.setPrecio(1499);
//        int cantidad = Integer.valueOf(request.getParameter("cantidad-producto"));
//        p1.setCantidadComprada(cantidad);
        
        Usuario.proCliente.add(p1);
        
        p2.setNombre("Herramienta");
        p2.setMarca("Bosh");
        p2.setPeso("1KG");
        p2.setOrigen("Chile");
        p2.setDescripcion("Taladro Mecánico");
        p2.setGarantia("12 Meses");
        p2.setMaterial("Plastico");
        p2.setPrecio(14999);
//        p2.setCantidadComprada(cantidad);
        Usuario.proCliente.add(p2);
        
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
