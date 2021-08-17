/*
 idProvPagosParc int(10) unsigned NOT NULL
idProvPagos int(10) unsigned NOT NULL
Acuenta double(13,2) NOT NULL
Tipo varchar(25) NOT NULL
Fecha date NOT NULL
idresponsable int(11) NOT NULL
idcompras int(11) NOT NULL
 */
package Datos;

/**
 *
 * @author Esteban
 */
public class CPagosParc {
    private int idProvPagos;
    private double Acuenta;
    private String Tipo;
    private String Fecha;
    private int idresponsable;
    private int idcompras;

    public CPagosParc() {
    }

    public CPagosParc(int idProvPagos, double Acuenta, String Tipo, String Fecha, int idresponsable, int idcompras) {
        this.idProvPagos = idProvPagos;
        this.Acuenta = Acuenta;
        this.Tipo = Tipo;
        this.Fecha = Fecha;
        this.idresponsable = idresponsable;
        this.idcompras = idcompras;
    }

    public int getIdProvPagos() {
        return idProvPagos;
    }

    public void setIdProvPagos(int idProvPagos) {
        this.idProvPagos = idProvPagos;
    }

    public double getAcuenta() {
        return Acuenta;
    }

    public void setAcuenta(double Acuenta) {
        this.Acuenta = Acuenta;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public int getIdresponsable() {
        return idresponsable;
    }

    public void setIdresponsable(int idresponsable) {
        this.idresponsable = idresponsable;
    }

    public int getIdcompras() {
        return idcompras;
    }

    public void setIdcompras(int idcompras) {
        this.idcompras = idcompras;
    }
    
    
    
}
