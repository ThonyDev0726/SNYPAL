package Modelo;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author KAMIR
 */
public class TAREA {

    public Integer ID_TAREA;
    public String TA_FECHA_CREACION;
    public String TA_HORA_CREACION;
    public String TA_FECHA_VENCIMIENTO;
    public String TA_HORA_VENCIMIENTO;
    public String TA_DESCRIPCION;
    public Integer TA_IMPORTANCIA;
    public String TA_ESTADO;
    public Integer DIA;
    public Integer MES;
    public Integer ANO;
    public Integer HORA;
    public Integer MINUTO;
    public Integer SEGUNDO;

    //
    LocalDate DIA_ACTUAL = LocalDate.now();
    LocalDateTime locaDate = LocalDateTime.now();
    int HORAS = locaDate.getHour();
    int MINUTOS = locaDate.getMinute();
    int SEGUNDOS = locaDate.getSecond();
    SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");

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

    public String getTA_HORA_CREACION() {
        return TA_HORA_CREACION;
    }

    public void setTA_HORA_CREACION(String TA_HORA_CREACION) {
        this.TA_HORA_CREACION = TA_HORA_CREACION;
    }

    public String getTA_HORA_VENCIMIENTO() {
        return TA_HORA_VENCIMIENTO;
    }

    public void setTA_HORA_VENCIMIENTO(String TA_HORA_VENCIMIENTO) {
        this.TA_HORA_VENCIMIENTO = TA_HORA_VENCIMIENTO;
    }

    public String diaActual() {
        DIA = DIA_ACTUAL.getDayOfMonth();
        MES = DIA_ACTUAL.getMonth().getValue();
        ANO = DIA_ACTUAL.getYear();
        return ANO + "-" + MES + "-" + DIA;
    }

    public String diaEntrega() {
        DIA = DIA_ACTUAL.getDayOfMonth();
        MES = DIA_ACTUAL.getMonth().getValue();
        ANO = DIA_ACTUAL.getYear();
        return ANO + "-" + MES + "-" + DIA;
    }

    public String calculoTotal(String diaEntrega) {
        try {
            SimpleDateFormat dFormat = new SimpleDateFormat("dd-MM-yyyy");
            int mes = 2;
            String dateInicio = diaActual();

            Date fecha = dFormat.parse(dateInicio);
            Calendar cal = Calendar.getInstance();
            cal.setTime(fecha);
            for (int i = 0; i < mes; i++) {
                cal.add(Calendar.MONTH, 1);
                dateInicio = dFormat.format(cal.getTime());
                System.out.println(dateInicio);
            }
            return dateInicio;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
