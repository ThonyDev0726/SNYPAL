package Modelo;

/**
 *
 * @author ThonyDev0726
 */
public class FACTURA_DESCRIPCION {

    public FACTURA_DESCRIPCION() {
    }

    public Integer ID_DESCRIPCION;
    public Integer FK_FACTURA;
    public Integer FK_PRODUCTO;
    public Integer DES_CANTIDAD;
    public Integer DES_PRECIO_PROD;
    public Integer DES_DESCUENTO;
    public Integer DES_TOTAL;

    public Integer getID_DESCRIPCION() {
        return ID_DESCRIPCION;
    }

    public void setID_DESCRIPCION(Integer ID_DESCRIPCION) {
        this.ID_DESCRIPCION = ID_DESCRIPCION;
    }

    public Integer getFK_FACTURA() {
        return FK_FACTURA;
    }

    public void setFK_FACTURA(Integer FK_FACTURA) {
        this.FK_FACTURA = FK_FACTURA;
    }

    public Integer getFK_PRODUCTO() {
        return FK_PRODUCTO;
    }

    public void setFK_PRODUCTO(Integer FK_PRODUCTO) {
        this.FK_PRODUCTO = FK_PRODUCTO;
    }

    public Integer getDES_CANTIDAD() {
        return DES_CANTIDAD;
    }

    public void setDES_CANTIDAD(Integer DES_CANTIDAD) {
        this.DES_CANTIDAD = DES_CANTIDAD;
    }

    public Integer getDES_PRECIO_PROD() {
        return DES_PRECIO_PROD;
    }

    public void setDES_PRECIO_PROD(Integer DES_PRECIO_PROD) {
        this.DES_PRECIO_PROD = DES_PRECIO_PROD;
    }

    public Integer getDES_DESCUENTO() {
        return DES_DESCUENTO;
    }

    public void setDES_DESCUENTO(Integer DES_DESCUENTO) {
        this.DES_DESCUENTO = DES_DESCUENTO;
    }

    public Integer getDES_TOTAL() {
        return DES_TOTAL;
    }

    public void setDES_TOTAL(Integer DES_TOTAL) {
        this.DES_TOTAL = DES_TOTAL;
    }

}
