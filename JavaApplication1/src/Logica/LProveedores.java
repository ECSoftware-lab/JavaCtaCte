/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Datos.CProveedores;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Administrador
 */
public class LProveedores {
    private conexion mysql = new conexion();
    private Connection cn = mysql.conectar();
    private String sSQL="";
    public Integer totalregistros;
    public String Memo;

    public DefaultTableModel mostrar(String buscar){
        DefaultTableModel modelo;
        String [] titulos={"N Proveedores","RazonSocial" , "Cuit", "Provincia", "Localidad", "domicilio", "telefono", "celular", "Email","FechaAlta", "RespAlta", "hora","Baja", "Piso", "Depto", "CreditoAf"};
        
        String [] registros = new String[16];
        totalregistros=0;
        
        modelo=new DefaultTableModel(null,titulos);
        sSQL="SELECT idproveedores,RazonSocial , Cuit, "+
                " Provincia, Localidad, domicilio, telefono, celular, Email,"+
                " FechaAlta, RespAlta, hora,Baja, Piso, Depto, CreditoAf "+
                " FROM proveedores WHERE idproveedores='"+buscar+"'" +
                " OR RazonSocial LIKE '%" + buscar+ "%'"
                +" ORDER BY RazonSocial desc ";
        try {
            this.Memo=sSQL;
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);
            
            while(rs.next()){
                registros [0]=rs.getString("idproveedores");
                registros [1]=rs.getString("RazonSocial");
                registros [2]=rs.getString("Cuit");
                registros [3]=rs.getString("Provincia");
                registros [4]=rs.getString("Localidad");
                registros [5]=rs.getString("domicilio");
                registros [6]=rs.getString("telefono");
                registros [7]=rs.getString("celular");
                
                registros [8]=rs.getString("Email");
                registros [9]=rs.getString("FechaAlta");
                registros [10]=rs.getString("RespAlta");
                registros [11]=rs.getString("hora");
                registros [12]=rs.getString("Baja");
                registros [13]=rs.getString("Piso");
                registros [14]=rs.getString("Depto");
                registros [15]=rs.getString("CreditoAf");
                
                totalregistros=totalregistros+1;
                //JOptionPane.showConfirmDialog(null,Integer.toString(totalregistros));
                modelo.addRow(registros);
        
            }
            return modelo;
        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null,e);
            return null;   
        }
    }
    
    public boolean insertar(CProveedores dts){
        //unico,
        sSQL="INSERT INTO provpagos(idproveedores,  RazonSocial, Cuit,"+
                "Provincia, Localidad, domicilio, telefono, celular, Email,"+
                " FechaAlta, RespAlta, hora, OBS, CodPostal, LugarAlta, Piso, Depto) " 
                   + " VALUES (?,?,?,?,?,?,?,?,?,CURDATE(),?,CURTIME(),?,?,'CENTRAL',?,?)";
        try {
          PreparedStatement pst = cn.prepareStatement(sSQL);
          pst.setInt(1, dts.getIdproveedores());
          pst.setString(2, dts.getRazonSocial());
          pst.setString(3, dts.getCuit());
          pst.setString(4, dts.getProvincia());
          pst.setString(5, dts.getLocalidad());
          pst.setString(6, dts.getDomicilio());
          pst.setString(7, dts.getTelefono());
          pst.setString(8, dts.getCelular());
          pst.setString(9, dts.getEmail());
          pst.setInt(10, dts.getRespAlta());
          pst.setString(11, dts.getOBS());
          pst.setString(12, dts.getCodPostal());
          pst.setString(13, dts.getPiso());
          pst.setString(14, dts.getDepto());
          
          int n=pst.executeUpdate();
          if(n!=0){
              return true;
          }
          else{
              return false;
          }
                
        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null,e);
        }
        return false;
    }
    
    public boolean editar(CProveedores dts){
        
        sSQL="UPDATE proveedores  SET Provincia =?, Localidad = ?, domicilio =?,"+
        " telefono = ?, celular =?, Email = ?,  OBS =?, Baja =?, "+
        " FechaMod = CURDATE(), RespMod =?, CodPostal =? , Piso = ?, Depto =? " +
"WHERE idproveedores =? ";
        try {
          PreparedStatement pst = cn.prepareStatement(sSQL);
          
          pst.setString(1, dts.getProvincia());
          pst.setString(2, dts.getLocalidad());
          pst.setString(3, dts.getDomicilio());
          pst.setString(4, dts.getTelefono());
          pst.setString(5, dts.getCelular());
          pst.setString(6, dts.getEmail());
          pst.setString(7, dts.getBaja());
          pst.setInt(8, dts.getRespMod());
          pst.setString(9, dts.getCodPostal());
          pst.setString(10, dts.getPiso());
          pst.setString(11, dts.getDepto());
          pst.setInt(8, dts.getIdproveedores());
          
          int n=pst.executeUpdate();
          if(n!=0){
              return true;
          }
          else{
              return false;
          }
        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null,e);
             return false;
        }
    }
    
    public boolean eliminar(CProveedores dts){
        sSQL="DELETE FROM proveedores WHERE idproveedores = ?";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setInt(1, dts.getIdproveedores());
          
          int n=pst.executeUpdate();
          if(n!=0){
              return true;
          }
          else{
              return false;
          }
        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null,e);
             return false;
        }
    }

}
