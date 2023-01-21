package Modelo;

/**
 *
 * @author ThonyDev0726
 */
public class AUDITORIA {

    public AUDITORIA() {
    }
    public Integer ID_AUDITORIA;
    public Integer FK_USUARIO;
    public String AUD_IP;
    public String AUD_ACCION;
    public String AUD_DESCRIPCION;
    public String AUD_RUTA_PDF;

    public Integer getID_AUDITORIA() {
        return ID_AUDITORIA;
    }

    public void setID_AUDITORIA(Integer ID_AUDITORIA) {
        this.ID_AUDITORIA = ID_AUDITORIA;
    }

    public Integer getFK_USUARIO() {
        return FK_USUARIO;
    }

    public void setFK_USUARIO(Integer FK_USUARIO) {
        this.FK_USUARIO = FK_USUARIO;
    }

    public String getAUD_IP() {
        return AUD_IP;
    }

    public void setAUD_IP(String AUD_IP) {
        this.AUD_IP = AUD_IP;
    }

    public String getAUD_ACCION() {
        return AUD_ACCION;
    }

    public void setAUD_ACCION(String AUD_ACCION) {
        this.AUD_ACCION = AUD_ACCION;
    }

    public String getAUD_DESCRIPCION() {
        return AUD_DESCRIPCION;
    }

    public void setAUD_DESCRIPCION(String AUD_DESCRIPCION) {
        this.AUD_DESCRIPCION = AUD_DESCRIPCION;
    }

    public String getAUD_RUTA_PDF() {
        return AUD_RUTA_PDF;
    }

    public void setAUD_RUTA_PDF(String AUD_RUTA_PDF) {
        this.AUD_RUTA_PDF = AUD_RUTA_PDF;
    }

}
