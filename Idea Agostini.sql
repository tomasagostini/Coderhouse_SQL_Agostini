-- CREATION OF SCHEMA
CREATE SCHEMA clothes_shop;
USE clothes_shop;

-- Table with shops where the purchase was made
CREATE TABLE shops (
	idshop INT NOT NULL UNIQUE,
    city VARCHAR(45) NOT NULL,
    country VARCHAR(45) NOT NULL UNIQUE,
    PRIMARY KEY (idshop)
);

-- Table with clothes (NOTE: cannot be two types of clothes equal)
CREATE TABLE clothes(
	idclothes INT NOT NULL AUTO_INCREMENT UNIQUE,
    type_of VARCHAR(45) NOT NULL UNIQUE,
    amount INT,
    price_per_unit FLOAT NOT NULL,
    PRIMARY KEY (idclothes, type_of)
);

-- Table with Vendor data
CREATE TABLE employees(
	idemployee INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    phone VARCHAR(45) NOT NULL,
    PRIMARY KEY (idemployee)
);

-- Table with purchase details
CREATE TABLE purchases (
	idpurchase INT NOT NULL AUTO_INCREMENT UNIQUE,
    final_value INT NOT NULL,
    clothes_pur VARCHAR(45) NOT NULL,
    employee_pur INT NOT NULL,
	shop_pur INT NOT NULL,
    PRIMARY KEY (idpurchase),
    FOREIGN KEY fk_clothes(clothes_pur) REFERENCES clothes(type_of),
    FOREIGN KEY fk_employee(employee_pur) REFERENCES employee(idemployee),
    FOREIGN KEY fk_shop(shop_pur) REFERENCES shop(idshop)
);

-- Table with customer information
CREATE TABLE customers(
	idcustomer INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    purchase INT NOT NULL,
	PRIMARY KEY (idcustomer),
    FOREIGN KEY fk_purchase(purchase) REFERENCES purchase(idpurchase)
);


