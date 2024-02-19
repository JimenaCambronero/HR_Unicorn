-- Ejercicio 1
-- Devuelve los datos solicitados en las siguientes preguntas.
-- 1. Escriba una consulta en SQL para mostrar el nombre, el apellido, el num de departamento y el nombre del departamento de cada empleado.
SELECT e.nombre_empleado, e.apellido_empleado, 
d.id_departamento, d.nombre_departamento 
FROM empleados e
JOIN departamentos d 
ON e.id_departamento = d.id_departamento;
 
-- 2. Escriba una consulta en SQL para mostrar el nombre y apellido, departamento, ciudad y provincia de cada empleado.
SELECT e.nombre_empleado, e.apellido_empleado, 
d.nombre_departamento,
u.ciudad,u.estado_provincia 
FROM empleados e
JOIN departamentos d
ON e.id_departamento = d.id_departamento
JOIN ubicaciones u
ON d.id_ubicacion = u.id_ubicacion;

-- 3. Escriba una consulta en SQL para mostrar el nombre, el apellido, el salario y la categoria laboral de todos los empleados.
SELECT e.nombre_empleado, e.apellido_empleado, e.salario, 
t.titulo_trabajo 
FROM empleados e 
JOIN trabajos t 
ON e.id_trabajo = t.id_trabajo;

-- 4. Escriba una consulta en SQL para mostrar el nombre, el apellido, el numero de departamento y el nombre del departamento para todos los empleados de los departamentos 80 o 40.
SELECT e.nombre_empleado, e.apellido_empleado, 
d.id_departamento, d.nombre_departamento 
FROM empleados e 
JOIN departamentos d 
ON e.id_departamento = d.id_departamento
WHERE e.id_departamento = 80 or e.id_departamento = 40;

-- 5. Escriba una consulta en SQL para mostrar aquellos empleados que contengan una letra z en su nombre y tambien muestre su apellido, departamento, ciudad y provincia del estado.
SELECT e.nombre_empleado, e.apellido_empleado,
d.nombre_departamento, u.ciudad, u.estado_provincia
FROM empleados e 
JOIN departamentos d
ON e.id_departamento = d.id_departamento
JOIN ubicaciones u
ON d.id_ubicacion = u.id_ubicacion;
