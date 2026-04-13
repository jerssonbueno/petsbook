<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.petsbook_web.modelo.mascota" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Mascotas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">

    <h2>Lista de Mascotas</h2>

    <%
        // Capturamos el mensaje enviado desde el Servlet (si existe)
        String mensaje = (String) request.getAttribute("mensaje");
        if (mensaje != null) {
    %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>¡Éxito!</strong> <%= mensaje %>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <%
        }
    %>

    <table class="table table-striped table-bordered mt-3">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Tipo</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
        <%
            List<mascota> lista = (List<mascota>) request.getAttribute("datos");
            if (lista != null) {
                for (mascota m : lista) {
        %>
            <tr>
                <td><%= m.getId() %></td>
                <td><%= m.getNombre() %></td>
                <td><%= m.getEdad() %></td>
                <td><%= m.getTipo() %></td>
                <td>
                    <a href="MascotaServlet?accion=editar&id=<%= m.getId() %>" class="btn btn-warning btn-sm">Editar</a>
                </td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>

    <br>
    <a href="index.jsp" class="btn btn-secondary">Volver</a>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>