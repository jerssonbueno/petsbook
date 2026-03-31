<!DOCTYPE html>
<html>
<head>
    <title>Registro Mascota</title>
</head>
<body>

<h2>Registrar Mascota</h2>

<form action="MascotaServlet" method="post">
    Nombre: <input type="text" name="nombre"><br><br>
    Edad: <input type="number" name="edad"><br><br>
    Tipo: <input type="text" name="tipo"><br><br>

    <input type="submit" value="Guardar">
</form>

<br><br>

<a href="MascotaServlet">Ver mascotas registradas</a>

</body>
</html>