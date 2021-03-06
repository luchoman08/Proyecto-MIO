/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectomio.controlador;

import proyectomio.accesoDatos.DaoPasajero;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import proyectomio.modelo.Pasajero;

/**
 *
 * @author Alejandro
 */
public class Controlador_Pasajero {

    DaoPasajero data_acces_object;

    public Controlador_Pasajero() {
        this.data_acces_object = new DaoPasajero();
    }

    public int adicionar_pasajero(int id_pasajero, int id_tarjeta, String nombres, String apellidos, String fecha_nacimiento, String direccion, String telefono, String correo_electronico) {
        Pasajero pasajero_adicionar = new Pasajero();
        pasajero_adicionar.setId_pasajero(id_pasajero);
        pasajero_adicionar.setId_tarjeta(id_tarjeta);
        pasajero_adicionar.setNombres(nombres);
        pasajero_adicionar.setApellidos(apellidos);
        pasajero_adicionar.setFecha_nacimiento(fecha_nacimiento);
        pasajero_adicionar.setDireccion(direccion);
        pasajero_adicionar.setTelefono(telefono);
        pasajero_adicionar.setCorreo_electronico(correo_electronico);
        int resultado = data_acces_object.adicionar_pasajero(pasajero_adicionar);
        return resultado;
    }

    public int modificar_pasajero(int id_pasajero, int id_tarjeta, String nombres, String apellidos, String fecha_nacimiento, String direccion, String telefono, String correo_electronico) {
        Pasajero pasajero_adicionar = new Pasajero();
        pasajero_adicionar.setId_pasajero(id_pasajero);
        pasajero_adicionar.setId_tarjeta(id_tarjeta);
        pasajero_adicionar.setNombres(nombres);
        pasajero_adicionar.setApellidos(apellidos);
        pasajero_adicionar.setFecha_nacimiento(fecha_nacimiento);
        pasajero_adicionar.setDireccion(direccion);
        pasajero_adicionar.setTelefono(telefono);
        pasajero_adicionar.setCorreo_electronico(correo_electronico);
        int resultado = data_acces_object.modificar_pasajero(id_pasajero, pasajero_adicionar);
        return resultado;
    }

    public int eliminar_pasajero(int id_pasajero) {
        int resultado = data_acces_object.eliminar_pasajero(id_pasajero);
        return resultado;
    }

    public ArrayList<Pasajero> get_pasajeros(int id_pasajero) {
        ArrayList<Pasajero> lista_pasajeros = new ArrayList<>();
        lista_pasajeros = data_acces_object.get_pasajeros(id_pasajero);
        return lista_pasajeros;
    }

    public ArrayList<Pasajero> get_pasajerosTarjeta(int id_tarjeta) {
        ArrayList<Pasajero> lista_pasajeros = new ArrayList<>();
        lista_pasajeros = data_acces_object.get_pasajerosTarjeta(id_tarjeta);
        return lista_pasajeros;
    }

}
