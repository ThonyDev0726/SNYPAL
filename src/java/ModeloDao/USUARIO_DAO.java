package ModeloDao;

import Convertidores.Encriptador;
import DataBase.CONEXION;
import Interfaces.CRUD_USUARIO;
import Modelo.USER;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author perez
 */
public class USUARIO_DAO implements CRUD_USUARIO {

    /* ========= VARIABLES GLOBALES ========= */
    Encriptador enc = new Encriptador();
    USER c = new USER();
    CONEXION cn = new CONEXION();
    CallableStatement cs;
    Connection con;
    ResultSet rs;

    /* ========= VARIABLES PROCEDIMIENTOS ========= */
    String CONSULTAR_USUARIO = "CALL U_S_ID_USUARIO(?)";
    String CONSULTAR_CLAVE = "CALL U_S_USU_CLAVE(?)";
    String CONSULTAR_CARGO = "CALL U_S_USU_PARAMETRO(?)";
    String CONSULTAR_ESTADO = "CALL U_S_USU_ESTADO(?)";
    String LISTAR = "CALL SELECT_ALL_USUARIO()";
    String LISTAR_ID = "CALL A_S_ID_USUARIO(?)";
    String CREAR = "CALL INSERT_USUARIO(?,?,?,?,?,?)";
    String ACTUALIZAR = "CALL UPDATE_USUARIO(?,?,?,?,?)";
    String ACTUALIZAR_ESTADO = "CALL UPDATE_USU_ESTADO(?,?)";
    String ACTUALIZAR_CLAVE = "CALL UPDATE_CLAVE(?,?)";
    String ELIMINAR = "CALL DELETE_USUARIO(?)";

    /* ========= VARIABLES PROCEDIMIENTOS PARAMETROS ========= */
    Integer ID_USUARIO;
    String CLAVE = "";
    String CARGO = "";
    String ESTADO = "";

    /* =================== LOGIN =================== */
    @Override
    public Integer consultarUsuario(String USU_USUARIO) {
        try {
            ID_USUARIO = 0;
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(CONSULTAR_USUARIO);
            cs.setString(1, USU_USUARIO);
            rs = cs.executeQuery();
            while (rs.next()) {
                ID_USUARIO = Integer.parseInt(rs.getString(1));
            }
        } catch (SQLException ex) {
            System.out.println("ID_USUARIO no encontrado: " + ex);
            return 0;
        }
        return ID_USUARIO;
    }

    @Override
    public String obtenerClave(int ID_USUARIO) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(CONSULTAR_CLAVE);
            cs.setInt(1, ID_USUARIO);
            rs = cs.executeQuery();
            while (rs.next()) {
                CLAVE = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println("USU_CLAVE no encontrada: " + e);
        }
        return CLAVE;
    }

    @Override
    public String consultarCargo(int ID_USUARIO) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(CONSULTAR_CARGO);
            cs.setInt(1, ID_USUARIO);
            rs = cs.executeQuery();
            while (rs.next()) {
                CARGO = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println("USU_CARGO no encontrada: " + e);
        }
        return CARGO;
    }

    @Override
    public String consultarEstado(int ID_USUARIO) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(CONSULTAR_ESTADO);
            cs.setInt(1, ID_USUARIO);
            rs = cs.executeQuery();
            while (rs.next()) {
                ESTADO = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println("USU_ESTADO no encontrado: " + e);
        }
        System.out.println(ESTADO);
        return ESTADO;
    }

    /* ==================================== 
            CRUD 
    ==================================== */
    @Override
    public List listar() {
        ArrayList<USER> lista = new ArrayList<>();
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(LISTAR);
            rs = cs.executeQuery();
            while (rs.next()) {
                USER cli = new USER();
                cli.setID_USUARIO(rs.getInt(1));
                cli.setUSU_USUARIO(rs.getString(2));
                cli.setUSU_CLAVE(rs.getString(3));
                cli.setUSU_EMAIL(rs.getString(4));
                cli.setUSU_CREACION(rs.getString(5));
                cli.setUSU_ESTADO(rs.getString(6));
                cli.setUSU_TIPO(rs.getString(7));
                lista.add(cli);
            }
        } catch (SQLException ex) {
            System.out.println("ERROR AL LISTAR LOS USUARIOS" + ex);
        }
        System.out.println("SE ESTAN LISTANDO LOS USUARIOS");
        return lista;
    }

    @Override
    public USER list(int idUsuario) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(LISTAR_ID);
            cs.setInt(1, idUsuario);
            rs = cs.executeQuery();
            while (rs.next()) {
                c.setID_USUARIO(rs.getInt(1));
                c.setUSU_USUARIO(rs.getString(2));
                c.setUSU_CLAVE(enc.desencriptar(rs.getString(3)));
                c.setUSU_EMAIL(rs.getString(4));
                c.setUSU_CREACION(rs.getString(5));
                c.setUSU_ESTADO(rs.getString(6));
                c.setUSU_TIPO(rs.getString(7));
            }
        } catch (SQLException ex) {
            System.out.println("ERROR AL LISTAR LOS EMPLEADOS" + ex);
        }
        return c;
    }

    @Override
    public String add(USER mp) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(CREAR);
            cs.setString(1, mp.getUSU_USUARIO());
            cs.setString(2, enc.encriptar(mp.getUSU_CLAVE()));
//            cs.setString(2, mp.getUSU_CLAVE());
            cs.setString(3, mp.getUSU_EMAIL());
            cs.setString(4, mp.getUSU_CREACION());
            cs.setString(5, mp.getUSU_ESTADO());
            cs.setString(6, mp.getUSU_TIPO());
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("ERROR AL CREAR EL USUARIO");
            System.out.println(ex);
            return "El usuario no fue creado con exito!";
        }
        return "El usuario fue creado con exito!";
    }

    @Override
    public String update(USER usu) {
        try {
            con = (Connection) cn.getConexion();
            cs = con.prepareCall(ACTUALIZAR);
            cs.setInt(1, usu.getID_USUARIO());
            cs.setString(2, enc.encriptar(usu.getUSU_CLAVE()));
            cs.setString(3, usu.getUSU_EMAIL());
            cs.setString(4, usu.getUSU_ESTADO());
            cs.setString(5, usu.getUSU_TIPO());
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("ERROR AL ACTUALIZAR EL USUARIO");
            System.out.println(ex);
            return "El usuario no fue actualizado!";
        }
        return "El usuario fue actualizado con exito!";
    }

    @Override
    public String delete(int id) {
        try {
            con = (Connection) cn.getConexion();
            CallableStatement cs = con.prepareCall(ELIMINAR);
            cs.setInt(1, id);
            System.out.println(ELIMINAR);
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("Error al eliminar el cliente!");
            System.out.println(ex);
            return "Error al eliminar el usuario!";
        }
        return "El usuario fue eliminado con exito!";
    }

    @Override
    public String actualizar_estado(int id, String estado) {
        try {
            con = (Connection) cn.getConexion();
            CallableStatement cs = con.prepareCall(ACTUALIZAR_ESTADO);
            cs.setInt(1, id);
            cs.setString(2, estado);
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("ERROR AL DAR DE BAJA AL USUARIO");
            System.out.println(ex);
            return "Error al dar baja al usuario!";
        }
        return "El usuario fue dado de baja con exito!";
    }

    @Override
    public String update_password(int id, String password) {
        try {
            con = (Connection) cn.getConexion();
            CallableStatement cs = con.prepareCall(ACTUALIZAR_CLAVE);
            cs.setInt(1, id);
            cs.setString(2, enc.encriptar(password));
            cs.execute();
        } catch (SQLException ex) {
            System.out.println("ERROR AL ACTUALIZAR CLAVE DEL USUARIO");
            System.out.println(ex);
            return "Error al actualizar clave del usuario!";
        }
        return "La clave del usaurios se actualizo con con exito!";
    }

}
