/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author Administrador
 */
public class LProvincia {
    private int id;
    private String nombre;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String toString(){
       return this.nombre; 
    }
    
    public Vector<LProvincia> mostrarProvincia(){
                  
           conexion mysql = new conexion();
           Connection cn = mysql.conectar();
           String sSQL="";
           PreparedStatement ps=null;
           ResultSet rs=null;
           sSQL="SELECT  idprovincia, provincia  FROM provincia ORDER BY provincia";
           
           Vector<LProvincia> datos = new Vector<LProvincia>();
           LProvincia dat=null;
          //CoProvincia.addItem("Selecione...");
        try {
            ps = cn.prepareStatement(sSQL);
            rs= ps.executeQuery();
            
            dat = new LProvincia();
            dat.setId(0);
            dat.setNombre("Selecione...");
            datos.add(dat);
            while(rs.next()){
              //CoProvincia.addItem(rs.getString("provincia"));
            dat = new LProvincia();
            dat.setId(rs.getInt("idprovincia"));
            dat.setNombre(rs.getString("provincia"));
            datos.add(dat);  
            }
            rs.close();
        } catch (SQLException ex) {
            //mensaje("Error Conexion");
        }
        return datos;
    }
}
