/*
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
package Datos;

/**
 *
 * @author Esteban
 */
public class CPagos {
    private int idProvPagos;
    private int IdProveedor;
    private double Total;
    private double Usado;
    private double SaldoPago;
    private String Fecha;
    private String Tipo;
    private int idresponsable;
    private String Unico;
    private String Descripcion;
    private String NTransaccion;

    public CPagos() {
    }

    public CPagos(int IdProveedor, double Total, String Fecha, String Tipo, int idresponsable, String Unico, String Descripcion, String NTransaccion) {
        this.IdProveedor = IdProveedor;
        this.Total = Total;
        this.Fecha = Fecha;
        this.Tipo = Tipo;
        this.idresponsable = idresponsable;
        this.Unico = Unico;
        this.Descripcion = Descripcion;
        this.NTransaccion = NTransaccion;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public int getIdProvPagos() {
        return idProvPagos;
    }

    public void setIdProvPagos(int idProvPagos) {
        this.idProvPagos = idProvPagos;
    }

    public int getIdProveedor() {
        return IdProveedor;
    }

    public void setIdProveedor(int IdProveedor) {
        this.IdProveedor = IdProveedor;
    }

    public double getTotal() {
        return Total;
    }

    public void setTotal(double Total) {
        this.Total = Total;
    }

    public double getUsado() {
        return Usado;
    }

    public void setUsado(double Usado) {
        this.Usado = Usado;
    }

    public double getSaldoPago() {
        return SaldoPago;
    }

    public void setSaldoPago(double SaldoPago) {
        this.SaldoPago = SaldoPago;
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

    public String getUnico() {
        return Unico;
    }

    public void setUnico(String Unico) {
        this.Unico = Unico;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getNTransaccion() {
        return NTransaccion;
    }

    public void setNTransaccion(String NTransaccion) {
        this.NTransaccion = NTransaccion;
    }
    
    
}
