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

    mascotaDAO dao = new mascotaDAO();

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        int edad = Integer.parseInt(request.getParameter("edad"));
        String tipo = request.getParameter("tipo");

        mascota m = new mascota(nombre, edad, tipo);

        dao.guardar(m);

        response.sendRedirect("MascotaServlet");
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<mascota> lista = dao.listar();

        request.setAttribute("datos", lista);
        request.getRequestDispatcher("listar.jsp").forward(request, response);
    }
}