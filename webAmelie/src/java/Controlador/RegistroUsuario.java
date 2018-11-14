/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Cliente;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Felipe
 */
@WebServlet(name = "RegistroUsuario", urlPatterns = {"/RegistroUsuario"})
public class RegistroUsuario extends HttpServlet {

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
        
// Creo un objeto conexion para poder llamar los Metodos
        Conexion conexion = new Conexion(); 

        Cliente cliente = new Cliente(); 
        cliente.setNombre(request.getParameter("Nombre"));
        cliente.setApellidoPaterno(request.getParameter("ApellidoP"));
        cliente.setApellidoMaterno((request.getParameter("ApellidoM")));
        cliente.setEmail(request.getParameter("Email"));
// Objeto Usuario que me guarda los datos de USUARIO del cliente
        Usuario usuarioNuevo = new Usuario(); 
        usuarioNuevo.setnombreUsuario(request.getParameter("NombreUsuario"));
        usuarioNuevo.setPassword(request.getParameter("Clave"));
        String claveRe = request.getParameter("ClaveR");
// COMPROBACION DE CONTRASEÑA
        if (claveRe.equals(usuarioNuevo.getPassword())) { 
            if (conexion.ingreso_datos(cliente, usuarioNuevo)) {
                //REGISTRO CON EXITO
                // SI ESTA CORRECTO ME MANDA A LOGIN PARA PODER INICIAR SESION
                response.sendRedirect("html/registroCorrecto.jsp"); 
            } else {
                // REGISTRO ERRONEO
                // SI ESTA INCORRECTO ME REDIRIJE AL SIGNUP PARA RE_INGRESAR LOS DATOS
                response.sendRedirect("html/registroErroneo.jsp"); 
            }
            
        }else{
            response.sendRedirect("html/registroErroneo.jsp");
        }

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
