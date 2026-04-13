package com.mycompany.petsbook_web.service;

import com.mycompany.petsbook_web.dao.mascotaDAO;
import com.mycompany.petsbook_web.modelo.mascota;
import java.util.List;

/**
 * Clase de servicio para la entidad Mascota.
 * Aplica validaciones antes de enviar datos al DAO.
 */
public class mascotaService {

    private final mascotaDAO dao = new mascotaDAO();

    /**
     * Guarda una mascota si es válida
     */
    public void guardar(mascota mascota) {
        if (mascota != null && esValido(mascota)) {
            dao.guardar(mascota);
        }
    }

    /**
     * Lista todas las mascotas
     */
    public List<mascota> listar() {
        return dao.listar();
    }

    /**
     * Validaciones (adaptadas a tu modelo)
     */
    private boolean esValido(mascota mascota) {

        if (mascota.getNombre() == null || mascota.getNombre().isEmpty()) {
            return false;
        }

        if (mascota.getTipo() == null || mascota.getTipo().isEmpty()) {
            return false;
        }

        if (mascota.getEdad() < 0) {
            return false;
        }

        return true;
    }
}