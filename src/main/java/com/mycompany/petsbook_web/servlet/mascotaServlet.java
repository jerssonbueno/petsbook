package com.mycompany.petsbook_web.servlet;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.mycompany.petsbook_web.dao.mascotaDAO;
import com.mycompany.petsbook_web.modelo.mascota;

@WebServlet("/MascotaServlet")
public class mascotaServlet extends HttpServlet {

    private mascotaDAO dao = new mascotaDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");
        String nombre = request.getParameter("nombre");
        String edadStr = request.getParameter("edad");
        String tipo = request.getParameter("tipo");

        // VALIDACIÓN: Si la edad es incorrecta, te regresa al formulario (index.jsp)
        if (edadStr == null || edadStr.isEmpty() || Integer.parseInt(edadStr) <= 0) {
            request.setAttribute("error", "La edad debe ser mayor a 0");
            // Reenvío al formulario para mostrar el mensaje rojo
            request.getRequestDispatcher("index.jsp").forward(request, response);
            return; // Detiene el proceso aquí
        }

        int edad = Integer.parseInt(edadStr);

        if (idParam != null && !idParam.isEmpty()) {
            // ACTUALIZAR
            int id = Integer.parseInt(idParam);
            mascota m = new mascota();
            m.setId(id);
            m.setNombre(nombre);
            m.setEdad(edad);
            m.setTipo(tipo);
            dao.actualizar(m);
            request.setAttribute("mensaje", "Mascota actualizada correctamente");
        } else {
            // GUARDAR
            mascota m = new mascota(nombre, edad, tipo);
            dao.guardar(m);
            request.setAttribute("mensaje", "Mascota guardada correctamente");
        }

        // Si todo sale bien, carga la lista final
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null && accion.equals("editar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            mascota m = dao.buscarPorId(id);
            request.setAttribute("mascota", m);
            request.getRequestDispatcher("editar.jsp").forward(request, response);
        } else {
            // Carga la lista de mascotas y va a listar.jsp
            List<mascota> lista = dao.listar();
            request.setAttribute("datos", lista);
            request.getRequestDispatcher("listar.jsp").forward(request, response);
        }
    }
}