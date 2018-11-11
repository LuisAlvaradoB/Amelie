/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Cliente;
import Modelo.Producto;
import Modelo.Usuario;
import com.sun.istack.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;

/**
 *
 * @author Felipe
 */
public class Conexion {
    
    private Connection conex;
    private Statement consulta;
    private ResultSet resultado;
        
    
    public Conexion(){
        
    }
    
    public void conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conex = DriverManager.getConnection("jdbc:mysql://localhost:3306/aurora","root",null);
            consulta = conex.createStatement();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException ex) {
            System.out.println(ex);
            Logger.getLogger(Conexion.class).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Usuario> listar() throws Exception{
        conexion();
        ArrayList<Usuario> users = new ArrayList<>();
        resultado = consulta.executeQuery("SELECT * FROM usuario");
        while(resultado.next()){
            Usuario user = new Usuario();
            user.setnombreUsuario((String) resultado.getObject(2));//getString("Nombre")
            user.setPassword((String) resultado.getObject(3));
            users.add(user);
        }
        return users;
    }
    
    public boolean ingreso_datos(Cliente cliente, Usuario usuario){
        boolean encontrado = false;
        String sql;
        String sql2;
        try {
            conexion();
            sql= "INSERT INTO cliente (Nombre,Apellido_Paterno,Apellido_Materno,email) VALUES ('"+cliente.getNombre()+"','"+cliente.getApellidoPaterno()+"','"+cliente.getApellidoMaterno()+"','"+cliente.getEmail()+"')";
            int i = consulta.executeUpdate(sql);
            
            int id = buscarID(cliente.getEmail());
            sql2= "INSERT INTO usuario VALUES ('"+id+"','"+usuario.getnombreUsuario()+"','"+usuario.getPassword()+"')";
            
            int e = consulta.executeUpdate(sql2);
            
            if(i > 0 & e > 0){
                encontrado = true;
            }
            
            
        } catch (SQLException e) {
            e.getStackTrace();
            System.out.println(e);
        }
        return encontrado;
    }
     public int buscarID(String email) throws SQLException{
        String sql = "SELECT * FROM cliente WHERE email = '"+email+"'";
        ResultSet rs = consulta.executeQuery(sql);
        int id = 0;
        while(rs.next()){
            Cliente cliente = new Cliente();
            cliente.setId((Integer) rs.getObject(1));
            cliente.setNombre((String) rs.getObject(2));
            cliente.setApellidoPaterno((String) rs.getObject(3));
            cliente.setApellidoMaterno((String) rs.getObject(4));
            id = cliente.getId();
            }
        return id;
        
    }
//     public Producto cargarProducto(){
//         
//         ResultSet rs = state.executeQuery("SELECT * FROM productos WHERE email = '"++"'");
//        
//        while(rs.next()){
//            Producto pro = new Producto();
//            pro.setId((Integer) rs.getObject(1));
//            pro.setNombre((String) rs.getObject(2));
//            pro.setApellidoPaterno((String) rs.getObject(3));
//            pro.setApellidoMaterno((String) rs.getObject(4));
//            id = cliente.getId();
//            }
//        return null;
//         
//     }
}
