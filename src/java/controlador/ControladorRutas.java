/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import accesoDatos.DaoRutas;
import java.util.ArrayList;
import proyectomio.modelo.Ruta;

/**
 *
 * @author root
 */
public class ControladorRutas {
    private DaoRutas data_acces_object;

    public ControladorRutas() {
        this.data_acces_object=new DaoRutas();
    }
    
    
    /*
    en caso que la llave primaria sea duplicada retorna 1
    en caso que la operacion se termine exitosamente retorna 0
     */
    
    public int adicionar_ruta(int id_ruta,String nombre, String descripcion) {
            Ruta ruta_adicionar = new Ruta();
            ruta_adicionar.setId_ruta(id_ruta);
            ruta_adicionar.setNombre(nombre);
            ruta_adicionar.setDescripcion(descripcion);
            int resultado = data_acces_object.adicionar_ruta(ruta_adicionar);
            return resultado;
    }

    /* en caso que la ruta no exista se retornara 1
    si se piensa hacer una modificaicon a nombre ruta tal que el nuevo nombre sea igual a uno ya existente y viole el constrain unique de este campo se retornara 2
    en caso que la consulta se halla ejecutado bien se retornara 0*/
    public int modificar_ruta(String nombre_ruta_modificar, int nuevo_id_ruta,String nuevo_nombre, String nueva_descripcion) {
        Ruta ruta_nueva = new Ruta();
        ruta_nueva.setDescripcion(nueva_descripcion);
        ruta_nueva.setNombre(nuevo_nombre);
        ruta_nueva.setId_ruta(nuevo_id_ruta);
        int resultado = data_acces_object.modificar_ruta(nombre_ruta_modificar, ruta_nueva);
        return resultado;
    }
    
    
    /*
    esta consulta por su naturaleza no presentara errores, los dos unicos casos posibles es que retorne algo
    o no lo haga (por que no hallan rutas registrados en la bd, por lo tanto en caso de que no halla se sabra 
    por el echo de que el array estara vacio.
    */
    public ArrayList<Ruta> get_rutas()
    {
        ArrayList<Ruta> rutas_encontradas = new ArrayList<>();
        rutas_encontradas = data_acces_object.get_rutas();
        return rutas_encontradas;
    }
    

    /*
    en caso que la ruta a eliminar no exista, se retornara 1, 
    si la operacion se realizo con exito se retorna 0
     */
    public int eliminar_ruta(String nombre_ruta_eliminar) {

        int resultado = data_acces_object.eliminar_ruta(nombre_ruta_eliminar);
        return resultado;
    }
     public ArrayList <String> get_nombre_rutas()
    {
      ArrayList<String> lista_rutas = new ArrayList<>();
      lista_rutas=data_acces_object.get_nombre_rutas();
      return lista_rutas;
      
    }
}