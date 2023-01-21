package Interfaces;

import Modelo.TAREA;
import java.util.List;

/**
 *
 * @author KAMIR
 */
public interface CRUD_TAREA {
    
    public List listar();

    public TAREA list(int idTarea);

    public String add(TAREA mp);

    public String update(TAREA mp);

    public String delete(int id);

    public String actualizar_estado(int id, String estado);
}
