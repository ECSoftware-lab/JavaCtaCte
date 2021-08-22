/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;


import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Esteban
 */
public class conexion {
    public String db="cuentascorrientes";
    public String url="jdbc:mysql://127.0.0.1/"+db;
    public String user="root";
    public String pass="ebenezer01";
    
    public conexion(){
}
    public Connection conectar(){
        Connection link=null;
        try{
           Class.forName("org.gjt.mm.mysql.Driver");
           link= DriverManager.getConnection(this.url, this.user,this.pass);
           
        }catch(Exception e){
            JOptionPane.showConfirmDialog(null,e);
        }
      return link;  
    }
}
