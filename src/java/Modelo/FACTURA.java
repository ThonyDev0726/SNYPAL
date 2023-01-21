package Modelo;

/**
 *
 * @author ThonyDev0726
 */
public class FACTURA {

    public FACTURA() {
    }
    public Integer ID_FACTURA;
    public Integer FK_USUARIO;
    public String FAC_FECHA;
    public String FAC_HORA;
    public String FAC_CODIGO;
    public String FAC_TOTAL_DESCUENTO;
    public String FAC_TOTAL;
    public String FAC_TIPO_PAGO;
    public String FAC_RUTA_PDF;

    public Integer getID_FACTURA() {
        return ID_FACTURA;
    }

    public void setID_FACTURA(Integer ID_FACTURA) {
        this.ID_FACTURA = ID_FACTURA;
    }

    public Integer getFK_USUARIO() {
        return FK_USUARIO;
    }

    public void setFK_USUARIO(Integer FK_USUARIO) {
        this.FK_USUARIO = FK_USUARIO;
    }

    public String getFAC_FECHA() {
        return FAC_FECHA;
    }

    public void setFAC_FECHA(String FAC_FECHA) {
        this.FAC_FECHA = FAC_FECHA;
    }

    public String getFAC_HORA() {
        return FAC_HORA;
    }

    public void setFAC_HORA(String FAC_HORA) {
        this.FAC_HORA = FAC_HORA;
    }

    public String getFAC_CODIGO() {
        return FAC_CODIGO;
    }

    public void setFAC_CODIGO(String FAC_CODIGO) {
        this.FAC_CODIGO = FAC_CODIGO;
    }

    public String getFAC_TOTAL_DESCUENTO() {
        return FAC_TOTAL_DESCUENTO;
    }

    public void setFAC_TOTAL_DESCUENTO(String FAC_TOTAL_DESCUENTO) {
        this.FAC_TOTAL_DESCUENTO = FAC_TOTAL_DESCUENTO;
    }

    public String getFAC_TOTAL() {
        return FAC_TOTAL;
    }

    public void setFAC_TOTAL(String FAC_TOTAL) {
        this.FAC_TOTAL = FAC_TOTAL;
    }

    public String getFAC_TIPO_PAGO() {
        return FAC_TIPO_PAGO;
    }

    public void setFAC_TIPO_PAGO(String FAC_TIPO_PAGO) {
        this.FAC_TIPO_PAGO = FAC_TIPO_PAGO;
    }

    public String getFAC_RUTA_PDF() {
        return FAC_RUTA_PDF;
    }

    public void setFAC_RUTA_PDF(String FAC_RUTA_PDF) {
        this.FAC_RUTA_PDF = FAC_RUTA_PDF;
    }
    
    
}
