DELIMITER //
CREATE FUNCTION totalVentasCliente(idCliente INT) 
RETURNS INT 
DETERMINISTIC
BEGIN
    DECLARE total INT;
    
    SELECT SUM(ValorTotal) INTO total 
    FROM facturaVenta 
    WHERE facturaVenta.idCliente = idCliente;
    
    RETURN IFNULL(total, 0);
    
END//

SELECT totalVentasCliente(1);