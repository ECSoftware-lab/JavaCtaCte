/*
 * 

Field Type Comment
idproveedores int(10) unsigned NOT NULL
unico varchar(45) NOT NULL
RazonSocial varchar(45) NOT NULL
Cuit varchar(15) NOT NULL
Provincia varchar(45) NOT NULL
Localidad varchar(45) NOT NULL
domicilio varchar(100) NOT NULL
telefono varchar(15) NOT NULL
celular varchar(15) NOT NULL
Email varchar(50) NOT NULL
FechaAlta date NOT NULL
RespAlta int(11) NOT NULL
hora time NOT NULL
OBS varchar(245) NULL
Baja varchar(2) NOT NULL
Fecha Moddate NULL
Resp Modint(10) unsigned NOT NULL
CodPostal varchar(15) NOT NULL
LugarAlta varchar(45) NULLen que sucursal se le dio de alta
Piso varchar(3) NULL
Depto varchar(3) NULL
CreditoAf decimal(13,2) unsigned NOT NULL.
 */
package Datos;

/**
 *
 * @author Administrador
 */
public class CProveedores {
    /*para proveedores */
    int idproveedores;
    String unico;
    String RazonSocial;
    String Cuit;
    String Provincia;
    String Localidad;
    String domicilio;
    String telefono;
    String celular;
    String Email;
    String FechaAlta;
    int RespAlta;
    String hora;
    String OBS;
    String Baja;
    String Fecha;
    String Resp;
    String CodPostal;
    String LugarAlta;
    String Piso;
    String Depto;
    int CreditoAf;

    public CProveedores() {
    }

    public CProveedores(String RazonSocial, String Cuit, int RespAlta, String LugarAlta) {
        this.RazonSocial = RazonSocial;
        this.Cuit = Cuit;
        this.RespAlta = RespAlta;
        this.LugarAlta = LugarAlta;
    }
    /*Solo seters */
    
    
    
    
    /*solo geter */

    public int getIdproveedores() {
        return idproveedores;
    }

    public String getRazonSocial() {
        return RazonSocial;
    }

    public String getCuit() {
        return Cuit;
    }

    public String getFechaAlta() {
        return FechaAlta;
    }

    public int getRespAlta() {
        return RespAlta;
    }

    public String getHora() {
        return hora;
    }

    public String getFecha() {
        return Fecha;
    }

    public String getResp() {
        return Resp;
    }

    public String getLugarAlta() {
        return LugarAlta;
    }

    public int getCreditoAf() {
        return CreditoAf;
    }
    
/*Geter and seter */
    public String getProvincia() {
        return Provincia;
    }

    public void setProvincia(String Provincia) {
        this.Provincia = Provincia;
    }

    public String getLocalidad() {
        return Localidad;
    }

    public void setLocalidad(String Localidad) {
        this.Localidad = Localidad;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getOBS() {
        return OBS;
    }

    public void setOBS(String OBS) {
        this.OBS = OBS;
    }

    public String getBaja() {
        return Baja;
    }

    public void setBaja(String Baja) {
        this.Baja = Baja;
    }

    public String getCodPostal() {
        return CodPostal;
    }

    public void setCodPostal(String CodPostal) {
        this.CodPostal = CodPostal;
    }

    public String getPiso() {
        return Piso;
    }

    public void setPiso(String Piso) {
        this.Piso = Piso;
    }

    public String getDepto() {
        return Depto;
    }

    public void setDepto(String Depto) {
        this.Depto = Depto;
    }
    
    
}
