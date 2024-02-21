-- Escriba una consulta en SQL para mostrar todos los departamentos, incluidos aquellos donde no tiene ningún empleado.
SELECT d.nombre_departamento, e.nombre_empleado FROM departamentos d 
LEFT JOIN empleados e 
ON d.id_departamento = e.id_departamento;
-- WHERE id_empleado IS NULL;

-- Escriba una consulta en SQL para mostrar el nombre y apellido y el salario de aquellos empleados que ganan más de 4800.
SELECT nombre_empleado, apellido_empleado, salario
FROM empleados
WHERE salario >4800
ORDER BY salario DESC;

-- Escriba una consulta en SQL para mostrar el nombre, apellido y el salario de aquellos empleados que viven en Seattle o Venice. 
SELECT e.nombre_empleado, e.apellido_empleado, e.salario, u.ciudad FROM empleados e 
LEFT JOIN departamentos d
ON e.id_departamento = d.id_departamento
LEFT JOIN ubicaciones u
ON d.id_ubicacion = u.id_ubicacion
-- WHERE ciudad = 'Seattle' OR ciudad = 'Venice';
WHERE ciudad IN ('Seattle', 'Venice');

-- Escriba una consulta en SQL para mostrar el nombre de todos los empleados que se han incorporado luego de la fecha 2002-08-17 y que viven en la ciudad de Seattle.
SELECT nombre_empleado FROM empleados e
LEFT JOIN departamentos d
ON e.id_departamento = d.id_departamento
LEFT JOIN ubicaciones u
ON d.id_ubicacion = u.id_ubicacion
WHERE fecha_contratacion > '2002-08-17' AND ciudad = 'Seattle';

-- Escribe una consulta en SQL para mostrar el nombre, apellido y salario de aquellos empleados que su categoria de salario maximo sea mayor o igual a 30000.
SELECT nombre_empleado, apellido_empleado, salario FROM empleados e 
LEFT JOIN trabajos t
ON e.id_trabajo = t.id_trabajo
WHERE t.salario_max >= 30000;