package com.mycompany.petsbook_web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mycompany.petsbook_web.conexion.conexion;
import com.mycompany.petsbook_web.modelo.mascota;

public class mascotaDAO {

   
    public boolean guardar(mascota m) {
        boolean estado = false;

        try {
            Connection con = conexion.conectar();

            String sql = "INSERT INTO mascota(nombre, edad, tipo) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, m.getNombre());
            ps.setInt(2, m.getEdad());
            ps.setString(3, m.getTipo());

            ps.executeUpdate();
            System.out.println("Datos guardados correctamente");
            estado = true;

        } catch (Exception e) {
        e.printStackTrace();
        }

        return estado;
    }

    
    public List<mascota> listar() {
        List<mascota> lista = new ArrayList<>();

        try {
            Connection con = conexion.conectar();

            String sql = "SELECT * FROM mascota";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                mascota m = new mascota();
                m.setId(rs.getInt("id"));
                m.setNombre(rs.getString("nombre"));
                m.setEdad(rs.getInt("edad"));
                m.setTipo(rs.getString("tipo"));

                lista.add(m);
            }

        } catch (Exception e) {
            System.out.println("Error al listar: " + e);
        }

        return lista;
    }
}