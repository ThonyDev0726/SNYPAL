package Modelo;

import java.util.*;

/**
 *
 * @author KAMIR
 */
public class TAREA {

    public Integer ID_TAREA;
    public String TA_FECHA_CREACION;
    public String TA_FECHA_VENCIMIENTO;
    public String TA_DESCRIPCION;
    public Integer TA_IMPORTANCIA;
    public String TA_ESTADO;

    public TAREA() {
    }

    public Integer getID_TAREA() {
        return ID_TAREA;
    }

    public void setID_TAREA(Integer ID_TAREA) {
        this.ID_TAREA = ID_TAREA;
    }

    public String getTA_FECHA_CREACION() {
        return TA_FECHA_CREACION;
    }

    public void setTA_FECHA_CREACION(String TA_FECHA_CREACION) {
        this.TA_FECHA_CREACION = TA_FECHA_CREACION;
    }

    public String getTA_FECHA_VENCIMIENTO() {
        return TA_FECHA_VENCIMIENTO;
    }

    public void setTA_FECHA_VENCIMIENTO(String TA_FECHA_VENCIMIENTO) {
        this.TA_FECHA_VENCIMIENTO = TA_FECHA_VENCIMIENTO;
    }

    public String getTA_DESCRIPCION() {
        return TA_DESCRIPCION;
    }

    public void setTA_DESCRIPCION(String TA_DESCIPCION) {
        this.TA_DESCRIPCION = TA_DESCIPCION;
    }

    public Integer getTA_IMPORTANCIA() {
        return TA_IMPORTANCIA;
    }

    public void setTA_IMPORTANCIA(Integer TA_IMPORTANCIA) {
        this.TA_IMPORTANCIA = TA_IMPORTANCIA;
    }

    public String getTA_ESTADO() {
        return TA_ESTADO;
    }

    public void setTA_ESTADO(String TA_ESTADO) {
        this.TA_ESTADO = TA_ESTADO;
    }

}
