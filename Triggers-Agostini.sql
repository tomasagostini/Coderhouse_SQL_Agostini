-- BACKUP OF CUSTOMERS DATA

CREATE TABLE `customers_backup` (
  `idcustomer` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `purchase` int NOT NULL,
  `date_backup` DATETIME,
  PRIMARY KEY (`idcustomer`),
  KEY `fk_purchase` (`purchase`),
 
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`purchase`) REFERENCES `purchases` (`idpurchase`)
);

delimiter $$
CREATE TRIGGER customer_backup_trigger
BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
  INSERT INTO customer_backup (idcustomer, name, last_name, email, purchase, date_backup)
  VALUES (NEW.idcustomer, NEW.name, NEW.last_name, NEW.email, NEW.purchase, NOW());
END$$
--------------------------------------------------------------------------------------------------------------

-- UPDATE THE STOCKS FROM CLOTHES

delimiter $$
CREATE TRIGGER update_stock_clothes
BEFORE INSERT ON clothes
FOR EACH ROW
BEGIN
	IF (STRCMP(NEW.type_of,(SELECT amount FROM clothes WHERE type_of = NEW.type_of))) = 1 THEN
		SET NEW.amount =  (SELECT amount FROM clothes WHERE type_of = NEW.type_of) + NEW.amount;
	ELSE
        SET NEW.amount = NEW.amount;
    END IF;
        

END$$

