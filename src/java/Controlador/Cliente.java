/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

/**
 *
 * @author ficha1020611
 */
public class Cliente {

    private String id;
    private String nombre;
    private String apellido;
    private String fecha_nacimiento;
    private String tel;
    private String email;
    private String Carnet_id;
    private String documento;
    private String ciudad;
    private String direccion;

    public Cliente(String id, String nombre, String apellido, String fecha_nacimiento, String tel, String email, String Carnet_id, String documento, String ciudad, String direccion) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fecha_nacimiento = fecha_nacimiento;
        this.tel = tel;
        this.email = email;
        this.Carnet_id = Carnet_id;
        this.documento = documento;
        this.ciudad = ciudad;
        this.direccion = direccion;
    }

    public String getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public String getTel() {
        return tel;
    }

    public String getEmail() {
        return email;
    }

    public String getCarnet_id() {
        return Carnet_id;
    }

    public String getDocumento() {
        return documento;
    }

    public String getCiudad() {
        return ciudad;
    }

    public String getDireccion() {
        return direccion;
    }

}
