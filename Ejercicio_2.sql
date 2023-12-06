--a)
SELECT sNombreProducto ||' '|| nPrecioProducto ||' '|| sColorProducto ||' '|| sTamanoProducto
FROM Productos;
--b)
SELECT sNombreProducto ||' '|| nPrecioProducto ||' '|| sColorProducto
FROM Productos
WHERE sTamanoProducto = 'Mediano';
--c)
SELECT sNombre ||' '|| sGenero ||' '|| nEdad ||' '|| sUsuario ||' '|| sContrasena
FROM Clientes;
--d)
SELECT *
FROM Clientes
WHERE nEdad != 24;
--f)
SELECT AVG(nPrecioProducto) AS promedio_precios
FROM Productos
WHERE sColorProducto = 'Amarillo';
--g)
SELECT COUNT(*) AS numero_de_ordenes
FROM Ordenes;
--h)
SELECT sNombre ||' '|| nEdad AS clientes_entre_20_y_40
FROM Clientes
WHERE nEdad >= 20 AND nEdad <= 40;
--i)
SELECT COUNT(*)
FROM Clientes
Where nEdad <= 25 OR nEdad >= 40;
--j)
SELECT COUNT(*)
FROM Clientes
Where nEdad != 25 AND nEdad != 20 AND nEdad != 40;
--k)
SELECT sNombre ||' '|| sApellidoPaterno ||' '|| sApellidoMaterno ||', '|| sUsuario
FROM Clientes
WHERE sApellidoPaterno = 'Pérez' OR sApellidoMaterno = 'Pérez'

