/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.util.HashMap;
/**
 *
 * @author Marlon
 */
public class ClienteData {

    private HashMap clientes = new HashMap();

    public HashMap getClientes() {
        return clientes;
    }

    public ClienteData() {

        clientes.put("1", new Cliente("1", "Carlos", "Zapata","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("2", new Cliente("2", "Juan", "Gutierrez","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("3", new Cliente("3", "Jose", "Betancur","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("4", new Cliente("4", "Luis", "Gonzalez","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("5", new Cliente("5", "Carmen", "Ruiz","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("6", new Cliente("6", "Patricia", "Guzman","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("7", new Cliente("7", "Osvaldo", "Perez","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("8", new Cliente("8", "Ximena", "Alvarez","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("9", new Cliente("9", "Raul", "Lopez","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("10", new Cliente("10", "Marcelo", "Mejia","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        clientes.put("11", new Cliente("11", "Federico", "Rodriguez","1993/01/01","3773745","carlos@gmail.com","5555","32897456","Medellin", "Carrera 20B"));
        
        

    }
}
