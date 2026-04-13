<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro Mascota</title>

   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
String error = (String) request.getAttribute("error");
if (error != null) {
%>
    <div class="alert alert-danger alert-dismissible fade show" role="alert" style="margin-top: 10px;">
        <strong>¡Atención!</strong> <%= error %>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<%
}
%>

<h2>Registrar Mascota</h2>

<!-- 
    Formulario que envía los datos al Servlet llamado MascotaServlet
    method="post" se usa para enviar datos de forma segura
-->
<form action="MascotaServlet" method="post">

    <!-- Campo para ingresar el nombre de la mascota -->
    Nombre: <input type="text" name="nombre"required><br><br>

    <!-- Campo para ingresar la edad de la mascota -->
    Edad: <input type="number" name="edad"required><br><br>

    <!-- Campo para ingresar el tipo de mascota (perro, gato, etc.) -->
    Tipo: <input type="text" name="tipo"required><br><br>

    <!-- Botón para enviar el formulario -->
    <input type="submit" value="Guardar">
</form>

<br><br>

<!-- 
    Enlace que permite ir al Servlet para ver la lista de mascotas registradas 
-->
<a href="MascotaServlet">Ver mascotas registradas</a>

<!-- Script de Bootstrap para funcionalidades dinámicas -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>