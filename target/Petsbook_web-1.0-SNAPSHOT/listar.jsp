<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.petsbook_web.modelo.mascota" %>

<!DOCTYPE html>
<html>
<head>
    <title>Lista de Mascotas</title>
</head>
<body>

<h2>Lista de Mascotas</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Edad</th>
        <th>Tipo</th>
    </tr>

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
    </tr>
<%
        }
    }
%>

</table>

<br>
<a href="index.jsp">Volver</a>

</body>
</html>