/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
            e.printStackTrace();
        }
    }
    
//    public ArrayList<Usuario> listar() throws Exception{
//        conexion();
//        ArrayList<Usuario> users = new ArrayList<Usuario>();
//        ResultSet rs = state.executeQuery("SELECT * FROM usuarios");
//        while(rs.next()){
//            Usuario user = new Usuario();
//            user.setUsuario((String) rs.getObject(1));
//            user.setPassword((String) rs.getObject(2));
//            users.add(user);
//        }
//        return users;
//    }
}
