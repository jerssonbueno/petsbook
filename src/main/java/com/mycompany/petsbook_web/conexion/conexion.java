package com.mycompany.petsbook_web.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {

    public static Connection conectar() {
        Connection con = null;

        try {
            String url = "jdbc:mysql://localhost:3306/petsbook_java";
            String user = "root";
            String password = "Julitabravo1001*";

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);

            System.out.println("Conexión exitosa");

        } catch (Exception e) {
            System.out.println("Error de conexión: " + e);
        }

        return con;
    }
}