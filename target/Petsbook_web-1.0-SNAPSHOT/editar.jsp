<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.mycompany.petsbook_web.modelo.mascota" %>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Mascota</title>
</head>
<body>

<h2>Editar Mascota</h2>

<%
    mascota m = (mascota) request.getAttribute("mascota");
    if (m != null) {
%>

<form action="MascotaServlet" method="post">
    <input type="hidden" name="id" value="<%= m.getId() %>">

    <label>Nombre:</label><br>
    <input type="text" name="nombre" value="<%= m.getNombre() %>"><br><br>

    <label>Edad:</label><br>
    <input type="number" name="edad" value="<%= m.getEdad() %>"><br><br>

    <label>Tipo:</label><br>
    <input type="text" name="tipo" value="<%= m.getTipo() %>"><br><br>

    <button type="submit">Actualizar</button>
</form>

<%
    } else {
%>
<p>No hay datos para editar</p>
<%
    }
%>

<br>
<a href="MascotaServlet">Volver</a>

</body>
</html>