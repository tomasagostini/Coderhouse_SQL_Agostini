
-- PRIMER SP QUE SE ENCARGA DE INSERTAR VALORES, RECIBE POR PARAMETRO EL TIPO , CANTIDAD Y PRECIO POR UNIDAD.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_clothes_insert`(IN typeof VARCHAR(60),IN amount INT, IN pricepu INT)
BEGIN
   DECLARE verifier INT;
   SELECT COUNT(*) INTO verifier FROM clothes WHERE type_of = typeof;
   IF verifier > 0 THEN
   SELECT 'Tipo de ropa ya se encuentra en la tabla' AS ERROR_;
   ELSE
   INSERT INTO clothes(type_of,amount,price_per_unit) VALUES (typeof, amount, pricepu);
   SELECT 'REGISTRO INGRESADO' AS SUCCESS_;
   END IF;
END$$
DELIMITER ;


-- SEGUNDO SP ENCARGADO DE ELIMINAR UN REGISTRO RECIBE POR PARAMETRO ID

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_clothes_delete`(IN id INT)
BEGIN
	DECLARE id_comparison INT;
    SELECT idclothes INTO id_comparison FROM clothes WHERE idclothes=id;
    IF id_comparison IS NOT NULL THEN
	DELETE FROM clothes
    WHERE idclothes = id;
	SELECT 'ID ELIMINADO' AS Success_;
    ELSE
    SELECT 'ID NO SE ENCUENTRA' AS Error_;
    END IF;
END$$
DELIMITER ;
