package ModeloDao;

/**
 *
 * @author KAMIR
 */
import Convertidores.Encriptador;
import DataBase.CONEXION;
import Interfaces.CRUD_TAREA;
import Modelo.TAREA;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TAREA_DAO {
     
Encriptador enc = new Encriptador();
TAREA c = new TAREA();
CONEXION cn = new CONEXION();
CallableStatement cs;
Connection con;
ResultSet rs;
String LISTAR = "Call SELECT_TAREA()"; 
String LISTAR_ID = "CALL SELEC_ID()"; 
String CREAR = "CREATE SELEC_ID()"; 
String ACTUALIZAR = "UPDATE SELEC_ID()"; 
String ELIMINAR = "DELETE SELEC_ID()"; 
String ACTUALIZAR_ESTADO = "UPDATE ESTADO()"; 
    

public List listar() {
    ArrayList<TAREA> lista = new ArrayList<>();
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(LISTAR);
            rs = cs.executeQuery();
            while (rs.next()) {
                TAREA cli = new TAREA();
                cli.setID_TAREA(rs.getInt(1));
                cli.setTA_FECHA_CREACION (rs.getString(2));
                cli.setTA_FECHA_VENCIMIENTO (rs.getString(3));
                cli.setTA_DESCRIPCION(rs.getString(4));
                cli.setTA_IMPORTANCIA(rs.getInt(5));
                cli.setTA_ESTADO(rs.getString(6));
                lista.add(cli);
            }
        } catch (SQLException ex) {
            System.out.println("ERROR AL LISTAR LAS TAREAS" + ex);
        }
        System.out.println("SE ESTAN LISTANDO LAS TAREAS");
        return lista;
    }

  
    public TAREA list(int idTarea) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(LISTAR_ID);
            cs.setInt(1, idTarea);
            rs = cs.executeQuery();
            while (rs.next()) {
                c.setID_TAREA(rs.getInt(1));
                c.setTA_FECHA_CREACION (rs.getString(2));
                c.setTA_FECHA_VENCIMIENTO (rs.getString(3));
                c.setTA_DESCRIPCION(rs.getString(4));
                c.setTA_IMPORTANCIA(rs.getInt(5));
                c.setTA_ESTADO(rs.getString(6));
            }
        } catch (SQLException ex) {
            System.out.println("ERROR AL LISTAR LAS TAREAS" + ex);
        }
        return c;
    }


    public String add(TAREA mp) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(CREAR);
            cs.setString(1, mp.getTA_FECHA_CREACION());
            cs.setString(2, mp.getTA_FECHA_VENCIMIENTO());
            cs.setString(3, mp.getTA_DESCRIPCION());
            cs.setInt(4, mp.getTA_IMPORTANCIA());
            cs.setString(5, mp.getTA_ESTADO());
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("ERROR AL CREAR LA TAREA");
            System.out.println(ex);
            return "La Tarea no fue creada con exito!";
        }
        return "La Tarea fue creadada con exito!"; 
    }

   
    public String update(TAREA mp) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(ACTUALIZAR);
            cs.setInt(1, c.getID_TAREA());
            cs.setString(2, c.getTA_FECHA_VENCIMIENTO());
            cs.setString(3, c.getTA_DESCRIPCION());
            cs.setInt(4, c.getTA_IMPORTANCIA());
            cs.setString(5, c.getTA_ESTADO());
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("ERROR AL ACTUALIZAR LA TAREA");
            System.out.println(ex);
            return "La Tarea no fue actualizada!";
        }
        return "La Tarea fue actualizada con exito!"; 
    }


    public String delete(int id) {
       try {
            con = (Connection) cn.getConexion();
            CallableStatement cs = con.prepareCall(ELIMINAR);
            cs.setInt(1, id);
            System.out.println(ELIMINAR);
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("Error al eliminar la Tarea!");
            System.out.println(ex);
            return "Error al eliminar la Tarea!";
        }
        return "La Tarea fue eliminada con exito!";
    }

  
    public String actualizar_estado(int id, String estado) {
        try {
            con = (Connection) cn.getConexion();
            CallableStatement cs = con.prepareCall(ACTUALIZAR_ESTADO);
            cs.setInt(1, id);
            cs.setString(2, estado);
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("ERROR AL DAR DE BAJA A LA TAREA");
            System.out.println(ex);
            return "Error al dar baja a la Tarea!";
        }
        return "La Tarea fue dada de baja con exito!";
    }
    

}
