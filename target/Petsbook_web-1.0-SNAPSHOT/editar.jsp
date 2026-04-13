<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.mycompany.petsbook_web.modelo.mascota" %>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Mascota</title>

    <!-- Bootstrap para mejorar el diseño -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<h2>Editar Mascota</h2>

<%
    // Se obtiene la mascota enviada desde el Servlet
    mascota m = (mascota) request.getAttribute("mascota");

    // Validamos que sí exista una mascota para editar
    if (m != null) {
%>

<!-- 
    Formulario para actualizar los datos de la mascota
    Se envía nuevamente al Servlet
-->
<form action="MascotaServlet" method="post">

    <!-- Campo oculto para enviar el ID de la mascota -->
    <input type="hidden" name="id" value="<%= m.getId() %>">

    <!-- Campo para editar el nombre -->
    <label>Nombre:</label><br>
    <input type="text" name="nombre" value="<%= m.getNombre() %>"><br><br>

    <!-- Campo para editar la edad -->
    <label>Edad:</label><br>
    <input type="number" name="edad" value="<%= m.getEdad() %>"><br><br>

    <!-- Campo para editar el tipo de mascota -->
    <label>Tipo:</label><br>
    <input type="text" name="tipo" value="<%= m.getTipo() %>"><br><br>

    <!-- Botón para enviar la actualización -->
    <button type="submit">Actualizar</button>
</form>

<%
    } else {
%>

<!-- Mensaje en caso de que no haya datos -->
<p>No hay datos para editar</p>

<%
    }
%>

<br>

<!-- Enlace para volver al listado -->
<a href="MascotaServlet">Volver</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>