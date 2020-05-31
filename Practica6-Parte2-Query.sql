insert into Direccion
values 
('1','Islandia', 1045 , 'Hacienda los morales' , 'Guadalupe' , 'Nuevo Leon'),
('2','Alamor', 1735 , 'Hacienda los morales' , 'Apodaca' , 'Nuevo Leon'),
('3','Cristales', 1564 , 'Col juarez' , 'Monterrey' , 'Nuevo Leon'),
('4','Juarez', 1563 , 'Col Independencia' , 'Apodaca' , 'Nuevo Leon'),
('5','Israel', 1679 , 'Col Los alamos' , 'San Nicolas' , 'Nuevo Leon'),
('6','Nillo', 1042 , 'Hacienda Villareal' , 'Guadalupe' , 'Nuevo Leon'),
('7','Independencia', 123 , 'Hacienda los morales' , 'Guadalupe' , 'Nuevo Leon'),
('8','Santo', 368 , 'Hacienda Camilo' , 'Monterrey' , 'Nuevo Leon'),
('9','Carta', 100 , 'Hacienda las aguilas' , 'San pedro Garza Garcia' , 'Nuevo Leon'),
('10','Provida', 1350 , 'Hacienda Vuelo' , 'Guadalupe' , 'Nuevo Leon')
go

update Direccion
set  Ciudad = 'Apodaca' , Estado = 'hola'
where Ciudad= 'San pedro Garza Garcia'
go
update Direccion 
set Calle = 'Islandia'
where Colonia= 'Col juarez'
go
update Direccion
set Estado = 'Puebla'
where Calle= 'NOAPLICA'
go
update Direccion
set idDireccion =  '2'
where Calle= 'Barrio2'
go
update Direccion
set idDireccion =  '6'
where Calle= 'Barrio6'
go

DELETE FROM Direccion WHERE Calle= 'Barrio6'
DELETE FROM Direccion WHERE NumeroCasa= '1000'
DELETE FROM Direccion WHERE NumeroCasa= '1'
DELETE FROM Direccion WHERE Calle= 'Alamor'
DELETE FROM Direccion WHERE Colonia= 'Col Los alamos'
go

insert into Productos values 
( '1','Pan Integral 250gr' , 'Pastin'  ,40,'22' ,'04-03-2020' ),
( '2','Vino 1L' , 'Pastin'  ,500,'29' ,'11-03-2024' ),
( '3','Licor 500 ml' , 'Bromo'  ,600,'24' ,'11-12-2023' ),
( '4','Cerveza' , 'Tecate'  ,20,'430' ,'04-12-2021' ),
( '5','Cerveza ligth' , 'Tecate'  ,21,'654' ,'01-04-2022' ),
( '6','Juego de limon' , 'Pastin'  ,0,'8' ,'01-02-2025' ),
( '7','Chile en polvo' , 'Pastin'  ,0,'245' ,'04-03-2023' ),
( '8','Cerveza artesanal' , 'Bromo' ,   200,'22' ,'11-10-2023' ),
( '9','Pan Integral 550gr' , 'Pastin'  ,70,'26' ,'04-03-2021' ),
( '10','Cerveza corona' , 'Corona'  ,20,'224' ,'04-07-2024' )
go

SELECT * From Productos
update Productos
set  Costo = 40 , Cantidad = 22
where Marca= 'Bromo'
go
update Productos 
set Marca = 'Corona'
where Costo= '0'
go
update Productos
set Marca = 'Tecate'
where idProducto= '8'
go
update Productos
set Marca =  'Bruma'
where Cantidad= '32'
go
update Productos
set Costo =  '20'
where Cantidad= '430'
go

DELETE FROM Productos WHERE Marca= 'Bromo'
DELETE FROM Productos WHERE Cantidad= '323'
DELETE FROM Productos WHERE Costo= '23'
DELETE FROM Productos WHERE Marca= 'Alamor'
DELETE FROM Productos WHERE Costo= '423'
go



insert into Proveedor 
 values ('1' , 'Bromo' ,  '3', 'Bromo'),
  ('2' , 'Tecate' ,  '4', 'Tecate'),
  ('3' , 'Corona' ,  '10', 'Corona'),
  ('4' , 'Pastin' ,  '1', 'Pastin'),
  ('5' , 'Costa' ,  '3', 'Costa'),
  ('6' , 'Salvador' ,  '3', 'Salvador'),
  ('7' , 'Eterny' ,  '3', 'Eterny'),
  ('8' , 'Bluesky' ,  '3', 'Bluesky'),
  ('9' , 'coc',  '3', 'coc'),
  ('10' , 'rew' ,  '3', 'rew')
 go

 SELECT * From Proveedor
update Proveedor
set  Marca = 'Raiz' , idProducto = 'Raiz'
where Marca= 'coc'
go
update Proveedor 
set Marca = 'Corona'
where idProveedor= '0'
go
update Proveedor
set Marca = 'Tecate'
where idProducto= 'coc'
go
update Proveedor
set idProducto =  'Bromo'
where idProveedor= '1'
go
update Proveedor
set Marca = 'Eterny'
where idProducto= 'Costa'
go

DELETE FROM Proveedor WHERE Marca= 'Bromo'
DELETE FROM Proveedor WHERE idProducto= 'coc'
DELETE FROM Proveedor WHERE idProveedor= '8'
DELETE FROM Proveedor WHERE Marca= '2'
DELETE FROM Proveedor WHERE NomProveedor = 'Salvador' 
go

 insert into Turno values('1', '0 / 8'),
 ('2', '2 / 10'),
 ('3', '4 / 12'),
 ('4', '6 / 2'),
 ('5', '8 / 4'),
 ('6', '10 / 6'),
 ('7', '12 / 8'),
 ('8', '2 / 10'),
 ('9', '4  / 12'),
 ('10', '6 / 2')
 go

  SELECT * From Turno
update Turno
set  idTurno = '1' , Turno = '0/8'
where idTurno= '5'
go
update Turno 
set idTurno = '2'
where Turno= '12/8'
go
update Turno
set Turno = '0/8'
where idTurno= '1'
go
update Turno
set idTurno = '2'
where Turno= '8/4'
go
update Turno
set idTurno = '8'
where Turno= '10/6'
go

DELETE FROM Turno WHERE Turno= '3'
DELETE FROM Turno WHERE idTurno= '0/8'
DELETE FROM Turno WHERE idTurno= '0/5'
DELETE FROM Turno WHERE Turno= '2'
DELETE FROM Turno WHERE Turno = '1' 
go


 insert into Departamento values
 ('1' , 'Gerente' , 'Seguridad' , 4000),
 ('2' , 'subGerente' , 'Seguridad' , 3500),
 ('3' , 'auxiliar' , 'Seguridad' , 1800),
 ('4' , 'General' , 'Seguridad' , 2100),
 ('5' , 'Gerente' , 'Mesero' , 4000),
 ('6' , 'General' , 'Mesero' , 2100),
 ('7' , 'Gerente' , 'Cocinero' , 4000),
 ('8' , 'subGerente' , 'Cocinero' , 3500),
 ('9' , 'General' , 'Cocinero' , 2100),
 ('10' , 'auxiliar' , 'Cocinero' , 1900)
 go

   SELECT * From Departamento
update Departamento
set  Puesto = 'General 2' , Sueldo = '2500'
where Sueldo= '2100'
go
update Departamento 
set  Sueldo = '2500'
where Sueldo= '2200'
go
update Departamento
set NombreD = 'Seguridad'
where NombreD= 'Mesero'
go
update Departamento
set idDepartamento = '5'
where Sueldo= '4000'
go
update Departamento
set  Puesto = 'General aux'
where Sueldo= '2000'
go

DELETE FROM Departamento WHERE Sueldo= '4100'
DELETE FROM Departamento WHERE Sueldo= '3000'
DELETE FROM Departamento WHERE NombreD= 'auxiliar'
DELETE FROM Departamento WHERE idDepartamento=  '7'
DELETE FROM Departamento WHERE NombreD= 'auxiliar chef'
go

 insert into DetalleFac  values
 ('1' , 001 , 'COMPRABAR' , '1'),
 ('2' , 002 , 'COMPRABAR' , '2'),
 ('3' , 003 , 'COMPRABAR' , '3'),
 ('4' , 004 , 'COMPRABAR' , '4'),
 ('5' , 005 , 'COMPRABAR' , '5'),
 ('6' , 006 , 'COMPRABAR' , '6'),
 ('7' , 007 , 'COMPRABAR' , '7'),
 ('8' , 008 , 'COMPRABAR' , '8'),
 ('9' , 009 , 'COMPRABAR' , '9'),
 ('10' , 010 , 'COMPRABAR' , '10')
 go

 SELECT * From DetalleFac
update DetalleFac
set  idFactura = '11' , Concepto= 'Promo'
where idVenta = '6'
go
update DetalleFac 
set  NumFactura = '25'
where NumFactura= '2'
go
update DetalleFac
set idFactura = '8'
where idVenta= '25'
go
update DetalleFac
set Concepto = 'NOAPLICA'
where idFactura= '6'
go
update DetalleFac
set Concepto = 'NOAPLICA'
where idFactura= '9'
go

DELETE FROM DetalleFac WHERE Concepto = 'NOAPLICA'
DELETE FROM DetalleFac WHERE idVenta= '25'
DELETE FROM DetalleFac WHERE idVenta = '1'
DELETE FROM DetalleFac WHERE idVenta = '7'
DELETE FROM DetalleFac WHERE Concepto= 'Desconocido'
go
 
insert into MetodoDePago (idMPago , MetodoDePago)values
('1' , 'Tarjeta Credito'),
('2' , 'Tarjeta Debito'),
('3' , 'Tarjeta Mercado'),
('4' , 'Tarjeta Bonos'),
('5' , 'Vales'),
('6' , 'Cheques'),
('7' , 'Efectivo'),
('8' , 'Efectivo en dolares'),
('9' , 'Efectivo en euros'),
('10' , 'CUPON')
go

 SELECT * From MetodoDePago
update MetodoDePago
set  idMPago = '11' , MetodoDePago= 'Rechazado'
where MetodoDePago = 'Promo'
go
update MetodoDePago 
set  MetodoDePago = 'Rechazado'
where idMPago= '2'
go
update MetodoDePago
set MetodoDePago = 'Vencido'
where idMPago= '8'
go
update MetodoDePago
set MetodoDePago = 'Vencido'
where idMPago= '12'
go
update MetodoDePago
set MetodoDePago = 'Vencido'
where idMPago= '67'
go

DELETE FROM MetodoDePago WHERE idMPago = '5'
DELETE FROM MetodoDePago WHERE MetodoDePago= 'Correcto'
DELETE FROM MetodoDePago WHERE idMPago = '7'
DELETE FROM MetodoDePago WHERE MetodoDePago = 'Alarmado'
DELETE FROM MetodoDePago WHERE MetodoDePago= 'Rechazado'
go

insert into Venta (idVenta, Total, idPedido , idPago ) values
('1' , 120 , '1' , '3'),
('2' , 890 , '2' , '3'),
('3' , 720 , '3' , '1'),
('4' , 2220 , '4' , '3'),
('5' , 1320 , '5' , '2'),
('6' , 1200 , '6' , '2'),
('7' , 1280 , '7' , '1'),
('8' , 1820 , '8' , '3'),
('9' , 620 , '9' , '2'),
('10' , 740 , '10' , '4')
go

 SELECT * From Venta
update Venta
set  idPedido = '9' , idPago= '8'
where Total = '120'
go
update Venta 
set  Total = '890'
where idVenta= '7'
go
update Venta
set idPago = '3'
where Total= '720'
go
update Venta
set idVenta = '6'
where idPago= '5'
go
update Venta
set  Total = '670'
where idVenta= '80'
go

DELETE FROM Venta WHERE Total = '670'
DELETE FROM Venta WHERE idPago= '8'
DELETE FROM Venta WHERE Total = '670'
DELETE FROM Venta WHERE idVenta = '6'
DELETE FROM Venta WHERE idPago= '8'
go


insert into Pedido (idPedido , Fecha, idEstablecimiento , idCliente, idEmpleado, idPlatillo, idBebida, idMesa) values
( '1','04-03-2020' ,'4' ,'1','3' , '2','4','2'),
( '2','11-04-2024', '5' ,'2','6' , '6','3','5' ),
( '3','11-11-2021', '2' ,'3','1' , '3','4','4' ),
( '4','11-12-2021' ,'5' ,'4','7' , '2','4','4'),
( '5','01-04-2021' ,'6' ,'5','3' , '1','3','1'),
( '6','01-12-2021' ,'4' ,'6','5' , '4','4','4'),
( '7','04-12-2022','5' ,'7','7' , '5','4','5' ),
( '8','11-12-2024' ,'1' ,'8','9' , '7','6','4'),
( '9' ,'04-05-2022' ,'1' ,'9','1' , '3','4','3'),
( '10' ,'04-07-2023','1' ,'10','3' , '2','7','7')
go

 SELECT * From Pedido
update Pedido
set  idPedido = '9' , idPlatillo= '8'
where idBebida = '1'
go
update Pedido 
set  idMesa = '8'
where idPedido= '7'
go
update Pedido
set idEmpleado = '3'
where idMesa= '7'
go
update Pedido
set idCliente = '6'
where idPlatillo= '5'
go
update Pedido
set  idMesa = '3'
where idPedido= '7'
go

DELETE FROM Pedido WHERE idMesa= '7'
DELETE FROM Pedido WHERE idPedido = '2'
DELETE FROM Pedido WHERE idPedido = '6'
DELETE FROM Pedido WHERE idMesa = '3'
DELETE FROM Pedido WHERE idPlatillo= '5'
go

insert into Mesa (idMesa , idPedido , idEmpleado) values
('1'  , '1' , '3'),
('2'  , '2' , '3'),
('3'  , '3' , '1'),
('4'  , '4' , '3'),
('5'  , '5' , '2'),
('6'  , '6' , '2'),
('7'  , '7' , '1'),
('8'  , '8' , '3'),
('9'  , '9' , '2'),
('10' , '10' , '4')
go

 SELECT * From Mesa
update Mesa
set  idPedido = '3' , idEmpleado= '8'
where idMesa = '1'
go
update Mesa 
set  idMesa = '8'
where idPedido= '7'
go
update Mesa
set idEmpleado = '3'
where idMesa= '7'
go
update Mesa
set idMesa = '6'
where idEmpleado= '5'
go
update Mesa
set  idMesa = '3'
where idPedido= '7'
go

DELETE FROM Mesa WHERE idPedido= '7'
DELETE FROM Mesa WHERE idMesa = '2'
DELETE FROM Mesa WHERE idEmpleado = '6'
DELETE FROM Mesa WHERE idMesa = '3'
DELETE FROM Mesa WHERE idEmpleado= '5'
go

insert into Bebida values
('1' , 'Mojito cubano ' , 200 , '1'),
('2' , 'Julepe de menta ' , 200 , '2'),
('3' , ' Agua de Valencia' , 100 , '3'),
('4' , ' Sangría' , 200 , '4'),
('5' , 'Cóctel frutal con sidra y tequila ' , 300 , '5'),
('6' , 'Caipirinha brasileña' , 300 , '6'),
('7' , 'Long island iced tea' , 100 , '7'),
('8' , ' Margarita de piña' , 300 , '8'),
('9' , 'Piña colada ' , 100 , '9'),
('10' , ' Margarita de fresa' , 150 , '10')
go

 SELECT * From Bebida
update Bebida
set  Costo = 300  , idProducto= '8'
where idBebida = '5'
go
update Bebida 
set  idBebida = '5'
where Costo = 300
go
update Bebida
set idProducto= '8'
where Costo = 100
go
update Bebida
set idProducto = '6'
where idProducto= '8'
go
update Bebida
set  idBebida= '13'
where idProducto= '7'
go

DELETE FROM Bebida WHERE Costo= 200
DELETE FROM Bebida WHERE Costo = 300
DELETE FROM Bebida WHERE idBebida= '13'
DELETE FROM Bebida WHERE idProducto= '5'
DELETE FROM Bebida WHERE idProducto= '10'
go


insert into Cliente values
('1' , 'Diego' , 'Lazaro' , 'Ramirez' , 'Masculino' , '12-12-2020' , '8138563857' , 'diego@gmail.com'),
('2' , 'Adrian' , 'Rodriguez' , 'Hernandez' , 'Masculino' , '02-04-2020' , '813623857' , 'adrian@gmail.com'),
('3' , 'Joaquin' , 'Flores' , 'Morales' , 'Masculino' , '17-21-2020' , '8138547552' , 'flores@gmail.com'),
('4' , 'Jorge' , 'Martinez' , 'Govea' , 'Masculino' , '17-11-2021' , '8138558200' , 'Jorge@gmail.com'),
('5' , 'Eduardo' , 'Moran' , 'Larraga' , 'Masculino' , '07-13-2020' , '8138569214' , 'eduardo@gmail.com'),
('6' , 'Arturo' , 'Morales' , 'Martinez' , 'Masculino' , '01-12-2020' , '8138566829' , 'morales@gmail.com'),
('7' , 'Gabriela' , 'Martinez' , 'Mata' , 'Femenino' , '19-08-2020' , '8138569847' , 'gabriela@gmail.com'),
('8' , 'Valeria' , 'Rodriguez' , 'Flores' , 'Femenino' , '12-04-2021' , '8138593521' , 'valeria@gmail.com'),
('9' , 'Myriam' , 'Rodulfo' , 'Cabrera' , 'Femenino' , '05-02-2020' , '8138595720' , 'myriam@gmail.com'),
('10' , 'Lizbeth' , 'De la cruz' , 'Ramirez' , 'Femenino' , '11-07-2020' , '8138569470' , 'lizbeth@gmail.com')
go

 SELECT * From Cliente
update Cliente
set  idCliente = '12'  , Email = 'NA'
where Telefono = '8138593521'
go
update Cliente 
set  Nombre= 'Rodrigo'
where Telefono = '8138558200'
go
update Cliente
set Sexo = 'NA'
where aMaterno = 'Gonzales'
go
update Cliente
set Telefono = 'NA'
where aParterno= 'Moran'
go
update Cliente
set  idCliente= '13'
where Email= 'flores@gmail.com'
go

DELETE FROM Cliente WHERE Telefono = '8138558200'
DELETE FROM Cliente WHERE aMaterno = 'Gonzales'
DELETE FROM Cliente WHERE aPaterno= 'Moran'
DELETE FROM Cliente WHERE Email= 'Jorge@gmail.com'
DELETE FROM Cliente WHERE Email= 'eduardo@gmail.com'
go

insert into Establecimient values
('1' , '8273847568' , 'fjas@email.com' , '1' , '1'),
('2' , '8273873628' , 'frgy@email.com' , '2' , '2'),
('3' , '8273849375' , 'hyhd@email.com' , '3' , '3'),
('4' , '8273803750' , 'hfwe@email.com' , '4' , '4'),
('5' , '8273892740' , 'ujnc@email.com' , '5' , '5'),
('6' , '8273884637' , 'jklu@email.com' , '6' , '6'),
('7' , '8273885746' , 'hrfy@email.com' , '7' , '7'),
('8' , '8273809384' , 'ujdv@email.com' , '8' , '8'),
('9' , '8273857128' , 'fyrh@email.com' , '9' , '9'),
('10' , '8273843246' , 'nvgs@email.com' , '10' , '10')
go


 SELECT * From Establecimient
update Establecimient
set  telefono='827385578'  , Email = 'NA'
where idDireccion = '3'
go
update Establecimient 
set  idEmpleado= '3'
where Telefono = '8273885746'
go
update Establecimient
set idEstablecimiento= '6'
where idEmpleado = '3'
go
update Establecimient
set Telefono = 'NA'
where Email= 'hyhd@email.com'
go
update Establecimient
set  idDireccion= '14'
where Email= 'sdgz@gmail.com'
go

DELETE FROM Establecimient WHERE Telefono = 'NA'
DELETE FROM Establecimient WHERE idDireccion = '6'
DELETE FROM Establecimient WHERE Email = 'NA'
DELETE FROM Establecimient WHERE Email= 'Jsgv@gmail.com'
DELETE FROM Establecimient WHERE idCliente= '4'
go

insert into Empleado  values
('1' , 'Diego' , 'Lazaro' , 'Ramirez' , 'Masculino' , '12-12-2020' , '8138563857' , 'diego@gmail.com' , '1' , '2' , '3'),
('2' , 'Adrian' , 'Rodriguez' , 'Hernandez' , 'Masculino' , '02-04-2020' , '813623857' , 'adrian@gmail.com' , '4' , '7' , '2'),
('3' , 'Lucero' , 'Perez' , 'Mata' , 'Femenino' , '02-20-2021' , '8138546895' , 'perez@gmail.com' , '6' , '4' , '2'),
('4' , 'Angustio' , 'Martinez' , 'rodriguez' , 'Masculino' , '17-11-2021' , '8138558200' , 'Angustio@gmail.com' , '4' , '1' , '7'),
('5' , 'Lizbeth' , 'De la cruz' , 'Ramirez' , 'Masculino' , '07-13-2020' , '8138569214' , 'eduardo@gmail.com' , '4' , '6' , '7'),
('6' , 'Francisco' , 'Morales' , 'Martinez' , 'Masculino' , '01-12-2020' , '8138566829' , 'Francisco@gmail.com' , '2' , '6' , '9'),
('7' , 'Gabriela' , 'Martinez' , 'Mata' , 'Femenino' , '19-08-2020' , '8138569847' , 'gabriela@gmail.com' , '3' , '8' , '7'),
('8' , 'Valeria' , 'Rodriguez' , 'Flores' , 'Femenino' , '12-04-2021' , '8138593521' , 'valeria@gmail.com' , '1' , '6' , '8'),
('9' , 'Myriam' , 'Rodulfo' , 'Cabrera' , 'Femenino' , '05-02-2020' , '8138595720' , 'myriam@gmail.com' , '1' , '1' , '4'),
('10' , 'Cynthia' , 'Reyes' , 'Rivera' , 'Femenino' , '14-08-2020' , '8138569470' , 'lizbeth@gmail.com' , '1' , '7' , '3')
go

 SELECT * From Empleado

update Empleado
set  Nombre='Myriam'  , Email = 'NA'
where idDireccion = '7'
go

update Empleado 
set  idEmpleado= '16'
where idTurno = '5'
go
update Empleado
set idEmpleado= '19'
where idEmpleado = '3'
go
update Empleado
set Sexo = 'Femenino'
where Email= 'eduardo@gmail.com'
go
update Empleado
set  idTurno= '14'
where Email= 'sdgz@gmail.com'
go

DELETE FROM Empleado WHERE idEmpleado= '19'
DELETE FROM Empleado WHERE idEmpleado = '6'
DELETE FROM Empleado WHERE Email = 'NA'
DELETE FROM Empleado WHERE idDireccion= '5'
DELETE FROM Empleado WHERE aMaterno= 'Reyes'
go



insert into Platillo (idPlatillo, NomPlatillo , Costo , idProducto) values
('1' , 'Empanadas ' , 200 , '1'),
('2' , 'Jugo de Carne ' , 200 , '2'),
('3' , ' Choripan' , 100 , '3'),
('4' , 'Ensaladas' , 200 , '4'),
('5' , 'Milanesas' , 300 , '5'),
('6' , 'Pasta casera' , 300 , '6'),
('7' , 'Paquetes de parrilla' , 100 , '7'),
('8' , ' Alfajores' , 300 , '8'),
('9' , 'Frijoles charros ' , 100 , '9'),
('10' , ' Snack mix' , 150 , '10')
go

 SELECT * From Platillo
update Platillo
set  Costo='1000'  , idProducto = '6'
where idPlatillo = 7
go
update Platillo 
set  idPlatillo= 11
where NomPlatillo = 'Choripan'
go
update Platillo
set Costo= '0'
where idPlatillo= 4
go
update Platillo
set Costo = '200'
where NomPlatillo = 'Pasta Casera'
go
update Platillo
set Costo= '180'
where idPlatillo= 8
go

DELETE FROM Platillo WHERE Costo= '100'
DELETE FROM Platillo WHERE idPlatillo= 8
DELETE FROM Platillo WHERE idProducto = '3'
DELETE FROM Platillo WHERE Costo= '200'
DELETE FROM Platillo WHERE idPlatillo= 9
go


insert into Entrega (idEntrega , FechaDeEntrega, APagar, idProveedor , idMpago) values
( '1','04-03-2020' ,'300' ,'1','3'), 
( '2','11-04-2024', '500' ,'2','6') ,
( '3','11-11-2021', '200' ,'3','1') , 
( '4','11-12-2021' ,'500' ,'4','7') , 
( '5','01-04-2021' ,'600' ,'5','3') , 
( '6','01-12-2021' ,'400' ,'6','5') , 
( '7','04-12-2022','500' ,'7','7') ,
( '8','11-12-2024' ,'100' ,'8','9') ,
( '9' ,'04-05-2022' ,'100' ,'9','1') , 
( '10' ,'04-07-2023','150' ,'10','3') 
go 


 SELECT * From Entrega
update Entrega
set  idMPago= '0'  , idProveedor = '0'
where idEntrega = '5'
go
update Entrega 
set  idProveedor = '3'
where APagar= '0'
go
update Entrega
set APagar= '100'
where idProveedor='1' 
go

update Entrega
set idEntrega= '30'
where FechaDeEntrega = '11-11-2021'
go
update Entrega
set idProveedor= '7'
where APagar = '300'
go

DELETE FROM Entrega WHERE FechaDeEntrega= '11-04-2024'
DELETE FROM Entrega WHERE idProveedor = '4'
DELETE FROM Entrega WHERE idMPago= '5'
DELETE FROM Entrega WHERE idProveedor = '0'
DELETE FROM Entrega WHERE FechaDeEntrega= '04-03-2020'
go