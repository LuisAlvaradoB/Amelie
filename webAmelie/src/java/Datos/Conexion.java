/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Modelo.Cliente;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Felipe
 */
public class Conexion {
    
    private Connection conn;
    private Statement state;
    
    public Conexion(){
        
    }
    
    public void conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aurora","root",null);
            state = conn.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public ArrayList<Usuario> listar() throws Exception{
        conexion();
        ArrayList<Usuario> users = new ArrayList<Usuario>();
        ResultSet rs = state.executeQuery("SELECT * FROM usuario");
        while(rs.next()){
            Usuario user = new Usuario();
            user.setnombreUsuario((String) rs.getObject(2));
            user.setPassword((String) rs.getObject(3));
            users.add(user);
        }
        return users;
    }
    
    public boolean ingreso_datos(Cliente cliente, Usuario usuario){
        boolean encontrado = false;
        try {
            conexion();
            int i = state.executeUpdate("INSERT INTO cliente (Nombre,Apellido_Paterno,Apellido_Materno,email) VALUES ('"+cliente.getNombre()+"','"+cliente.getApellidoPaterno()+"','"+cliente.getApellidoMaterno()+"','"+cliente.getEmail()+"')");
            
            int id = buscarID(cliente.getEmail());
            int e = state.executeUpdate("INSERT INTO usuario VALUES ('"+id+"','"+usuario.getnombreUsuario()+"','"+usuario.getPassword()+"')");
            
            if(i > 0 & e > 0){
                encontrado = true;
            }
            
            
        } catch (Exception e) {
            e.getStackTrace();
            System.out.println(e);
        }
        return encontrado;
    }
     public int buscarID(String email) throws SQLException{
        ResultSet rs = state.executeQuery("SELECT * FROM cliente WHERE email = '"+email+"'");
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
}
