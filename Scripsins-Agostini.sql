USE clothes_shop;

INSERT INTO shops (idshop, city, country)
VALUES
  (1,'Buenos Aires', 'Argentina'),
  (2,'Mar Del Plata', 'Argentina'),
  (3,'Salta', 'Argentina'),
  (4,'Rosario', 'Argentina'),
  (5,'Ciudad de Cordoba', 'Argentina'),
  (6,'Mendoza', 'Argentina'),
  (7,'Comodoro Rivadavia', 'Argentina'),
  (8,'Pedro', 'Argentina');
  
INSERT INTO clothes (idclothes,type_of, amount, price_per_unit)
VALUES
	(1,'Remera-NorthFace',300,1500),
	(2,'Pantalones-Alpine',250,499.50),
    (3,'Buzos-Alpine',200,956.75),
    (4,'Camperas-Montagne',197,786.45),
    (5,'Zapatillas-Alpine',304,1045.67),
    (6,'Gorros-Alpine',475,567.86),
    (7,'Sweater-NorthFace',655,1267.32);

INSERT INTO employees ( idemployee,name, last_name, phone)
VALUES
	(1,'Alivia','Walter','223495758'),
	(2,'Gregory','Randall','223493456'),
	(3,'Lina','Oliver','223465654'),
	(4,'Yash','Dickson','223465633'),
	(5,'Ted','Bonilla','223465238');
 
 INSERT INTO purchases (idpurchase,final_value, clothes_pur, employee_pur, shop_pur)
 VALUES
	(1,30000,'Remera-NorthFace','1','4'),
	(2,2900.50,'Pantalones-Alpine','2','3'),
	(3,50943,'Buzos-Alpine','3','2'),
	(4,25866,'Camperas-Montagne','1','7'),
	(5,32566.50,'Gorros-Alpine','5','6');

INSERT INTO customers ( idcustomer,name, last_name, email, purchase)
VALUES	
    (1,'Annalise', 'Morris','amorris@gmail.com',1),
    (2,'Astrid', 'Freeman','afreeman@gmail.com',2),
    (3,'Yahya', 'Hogan','yhogan@gmail.com',3),
	(4,'Samira', 'Malone','smalone@gmail.com',4),
	(5,'Everly', 'Osborne','eosborne@gmail.com',5);
