--RIGTH
select Dep.puesto as Depo, emp.*
from  Empleado emp right join Departamento Dep
on emp.idDepartamento=Dep.idDepartamento
go

select Tur.idTurno as Turn, emp.*
from  Empleado emp right join Turno Tur
on emp.idTurno =Tur.idTurno
go


--Left
select  mes.* ,ped.*
from  Mesa mes left join Pedido ped
on mes.idMesa =ped.idMesa
go

select  Dep.idDepartamento as Depo, emp.*
from Departamento Dep left join Empleado emp
on Dep.idDepartamento = emp.idDepartamento



Cross
select  emp.* ,Dir.*
from  Empleado emp cross join Direccion Dir
go

select ven.* , ped.*
from  Venta ven cross join Pedido ped
go


Inner
SELECT Emp.Nombre , Emp.aPaterno , Emp.aMaterno , dep.Puesto
from Empleado Emp , Departamento dep
go

SELECT Ven.Total , Ven.idPago , Ven.idVenta , Met.MetodoDePago
From Venta Ven , MetodoDePago Met
go

--SUBQUERY

SELECT idPedido FROM Pedido WHERE idCliente  in (SELECT idcliente FROM Cliente WHERE Sexo = 'Masculino' )



--Select INTO
SELECT * INTO Solo FROM Direccion