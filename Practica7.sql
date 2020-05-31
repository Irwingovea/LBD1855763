
SELECT * FROM Cliente WHERE Sexo ='Femenino'
SELECT * FROM Venta WHERE Total >1000
SELECT * FROM Departamento WHERE Sueldo>2000
SELECT * FROM Bebida WHERE Costo>200
SELECT * FROM Cliente WHERE Nombre='Diego'

SELECT TOP 10 * FROM Bebida
SELECT TOP 10 * FROM Cliente
SELECT TOP 10 * FROM Departamento
SELECT TOP 8 * FROM Venta
SELECT TOP 8 * FROM Turno

SELECT Sexo FROM Cliente GRoUP by SEXO
SELECT NomBebida From Bebida Group by NomBebida
SELECT NomPlatillo From Platillo Group by NomPlatillo
SELECT MetodoDePago From MetodoDePago Group by MetodoDePago
SELECT NomProveedor From Proveedor Group by NomProveedor

SELECT SUM(Costo) From Bebida
SELECT MAX(Costo) From Bebida
SELECT AVG(Costo) From Bebida
SELECT MIN(Costo) From Bebida
SELECT COUNT (*) From Bebida

SELECT COUNT (*) From Bebida WHERE Costo>200
SELECT  COUNT (*) FROM Venta WHERE idPlatillo> 5 Group By idPlatillo
SELECT SUM(Costo) From Bebida WHERE Costo>300 AND idProducto= '6'
SELECT COUNT (Sexo) From Cliente WHERE Nombre= 'Gabriela' AND Sexo= 'Femenino' Group by Sexo
SELECT TOP 1 MAX(Telefono)  From Empleado WHERE Sexo= 'Masculino' 


SELECT * FROM Cliente