--a)
-- Bien, aunque no es necesario concatenar, de hecho en este caso y los demás no hay nada que deba
-- concatenarse, queremos las distintas columnas que nos da de resultado.
SELECT sNombreProducto ||' '|| nPrecioProducto ||' '|| sColorProducto ||' '|| sTamanoProducto
FROM Productos;

--b)
-- Bien pero falta sdescripcionproducto
SELECT sNombreProducto ||' '|| nPrecioProducto ||' '|| sColorProducto
FROM Productos
WHERE sTamanoProducto = 'Mediano';

--c)
-- Bien
SELECT sNombre ||' '|| sGenero ||' '|| nEdad ||' '|| sUsuario ||' '|| sContrasena
FROM Clientes;

--d)
-- El distinto de es <>
SELECT *
FROM Clientes
WHERE nEdad != 24;

--f)
-- Bien
SELECT AVG(nPrecioProducto) AS promedio_precios
FROM Productos
WHERE sColorProducto = 'Amarillo';

--g)
-- Bien
SELECT COUNT(*) AS numero_de_ordenes
FROM Ordenes;

--h)
-- Bien
SELECT sNombre ||' '|| nEdad AS clientes_entre_20_y_40
FROM Clientes
-- Está bien pero lo ideal es usar BETWEEN
WHERE nEdad >= 20 AND nEdad <= 40;


--i)

SELECT COUNT(*)
FROM Clientes
-- En este caso es un AND en lugar de un OR, aunque también puede ser un NOT BETWEEN
Where nEdad <= 25 OR nEdad >= 40;

--j)
SELECT COUNT(*)
FROM Clientes
-- igual es <> o la mejor opción es NOT IN (20, 25, 40)
Where nEdad != 25 AND nEdad != 20 AND nEdad != 40;

--k)
-- Bien
SELECT sNombre ||' '|| sApellidoPaterno ||' '|| sApellidoMaterno ||', '|| sUsuario
FROM Clientes
WHERE sApellidoPaterno = 'Pérez' OR sApellidoMaterno = 'Pérez'

