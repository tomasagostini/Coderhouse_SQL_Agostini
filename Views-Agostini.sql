CREATE OR REPLACE VIEW customer_vendor AS
    SELECT 
        customers.idcustomer, customers.name, customers.last_name, customers.email, 
        purchases.idpurchase, purchases.employee_pur, purchases.final_value, purchases.shop_pur, 
        shops.idshop, shops.city,
        employees.idemployee, employees.name AS name_employee, employees.last_name AS last_name_employee
    FROM
        customers
	JOIN
        purchases ON customers.purchase = purchases.idpurchase
    JOIN
		employees ON purchases.employee_pur = employees.idemployee
    INNER JOIN
		shops ON purchases.shop_pur = shops.idshop
    
    