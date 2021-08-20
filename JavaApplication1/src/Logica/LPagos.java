/*
 idProvPagosParc int(10) unsigned NOT NULL
idProvPagos int(10) unsigned NOT NULL
Acuenta double(13,2) NOT NULL
Tipo varchar(25) NOT NULL
Fecha date NOT NULL
idresponsable int(11) NOT NULL
idcompras int(11) NOT NULL

idProvPagos int(10) unsigned NOT NULL
IdProveedor int(10) unsigned NOT NULL
Total decimal(13,2) NOT NULL
Usado decimal(13,2) NOT NULL
SaldoPago decimal(13,2) unsigned NOT NULL
FechaIngreso datetime NOT NULL
Fecha date NOT NULL
Tipo varchar(25) NOT NULL
idresponsable int(11) NOT NULL
Unico varchar(45) NOT NULL
Descripcion varchar(150) NULL
NTransaccion varchar(15) NULL
 */
package Logica;

import Datos.CPagos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Esteban
 */
public class LPagos {
    private conexion mysql = new conexion();
    private Connection cn = mysql.conectar();
    private String sSQL="";
    public Integer totalregistros;
    
    public DefaultTableModel mostrar(String buscar){
        DefaultTableModel modelo;
        String [] titulos={"idProvPagos","Fecha","Total","Usado","SaldoPago","Tipo","NTransaccion","Descripcion"};
        
        String [] registros = new String[8];
        totalregistros=0;
        
        modelo=new DefaultTableModel(null,titulos);
        sSQL="SELECT idProvPagos,Fecha,Total,Usado,SaldoPago,Tipo,NTransaccion, Descripcion "+
                " FROM provpagos WHERE IdProveedor='"+buscar+"'"
                +" ORDER BY Fecha desc ";
        try {
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sSQL);
            
            while(rs.next()){
                registros [0]=rs.getString("idProvPagos");
                registros [1]=rs.getString("Fecha");
                registros [2]=rs.getString("Total");
                registros [3]=rs.getString("Usado");
                registros [4]=rs.getString("SaldoPago");
                registros [5]=rs.getString("Tipo");
                registros [6]=rs.getString("NTransaccion");
                registros [7]=rs.getString("Descripcion");
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
    
    public boolean insertar(CPagos dts){
        sSQL="INSERT INTO provpagos(IdProveedor, Total, SaldoPago,  Fecha, Tipo, idresponsable, Unico, Descripcion, NTransaccion,FechaIngreso) " 
                   + " VALUES (?,?,?,?,?,?,?,?,?,CURDATE())";
        try {
          PreparedStatement pst = cn.prepareStatement(sSQL);
          pst.setInt(1, dts.getIdProveedor());
          pst.setDouble(2, dts.getTotal());
          pst.setDouble(3, dts.getTotal());
          pst.setString(4, dts.getFecha());
          pst.setString(5, dts.getTipo());
          pst.setInt(6, dts.getIdresponsable());
          pst.setString(7, dts.getUnico());
          pst.setString(8, dts.getDescripcion());
          pst.setString(9, dts.getNTransaccion());
          
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
    
    public boolean editar(CPagos dts){
        sSQL ="UPDATE  provpagos  SET Usado =?, Tipo = ?,   Descripcion = ?, NTransaccion = ? " +
"WHERE idProvPagos =? ";
        try {
          PreparedStatement pst = cn.prepareStatement(sSQL);
          
          pst.setDouble(1, dts.getUsado());
          pst.setString(2, dts.getTipo());
          pst.setString(3, dts.getDescripcion());
          pst.setString(4, dts.getNTransaccion());
           pst.setInt(5, dts.getIdProvPagos());
          
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
    
    public boolean eliminar(CPagos dts){
        sSQL="DELETE FROM provpagos  WHERE idProvPagos = ?";
        try {
                      PreparedStatement pst = cn.prepareStatement(sSQL);
          

           pst.setInt(1, dts.getIdProvPagos());
          
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
