USE ProveedoresDB;

SELECT s.idSuministro, pr.nombre AS Proveedor, pi.nombre AS Pieza, 
       s.fecha, s.cantidad
FROM Suministro s
INNER JOIN Proveedor pr ON s.idProveedor = pr.idProveedor
INNER JOIN Pieza pi ON s.idPieza = pi.idPieza;

