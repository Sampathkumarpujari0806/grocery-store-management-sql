create database  Grocery_Store_management;

use Grocery_Store_management;

-- 1. Supplier Table 
CREATE TABLE IF NOT EXISTS supplier ( 
Supplier_ID TINYINT PRIMARY KEY AUTO_INCREMENT, 
Supplier_Name VARCHAR(255),
Address TEXT
 );
 
-- 2. Categories Table 
 CREATE TABLE IF NOT EXISTS categories ( 
 Category_ID TINYINT PRIMARY KEY AUTO_INCREMENT, 
 Category_Name VARCHAR(255)
 );
 
-- 3. Employees Table 
 CREATE TABLE IF NOT EXISTS employees ( 
 Employee_ID TINYINT PRIMARY KEY AUTO_INCREMENT, 
 Employee_Name VARCHAR(255), 
 Hire_Date VARCHAR(255) 
 );
 
-- 4. Customers Table 
CREATE TABLE IF NOT EXISTS customers ( 
Customer_ID SMALLINT PRIMARY KEY AUTO_INCREMENT, 
Customer_Name VARCHAR(255),
Address TEXT 
);
 
-- 5. Products Table 
CREATE TABLE IF NOT EXISTS products ( 
Product_ID TINYINT PRIMARY KEY AUTO_INCREMENT, 
Product_Name VARCHAR(255), 
Supplier_ID TINYINT, 
Category_ID TINYINT, 
Price DECIMAL(10,2), 
FOREIGN KEY (Supplier_ID) REFERENCES supplier(Supplier_ID) 
	ON UPDATE CASCADE ON DELETE CASCADE, 
FOREIGN KEY (Category_ID) REFERENCES categories(Category_ID) 
	ON UPDATE CASCADE ON DELETE CASCADE 
);

-- 6. Orders Table 
CREATE TABLE IF NOT EXISTS orders ( 
Order_ID SMALLINT PRIMARY KEY AUTO_INCREMENT, 
Customer_ID SMALLINT, 
Employee_ID TINYINT, 
Order_Date VARCHAR(255), 
FOREIGN KEY (Customer_ID) REFERENCES customers(Customer_ID) 
	ON UPDATE CASCADE ON DELETE CASCADE, 
FOREIGN KEY (Employee_ID) REFERENCES employees(Employee_ID) 
	ON UPDATE CASCADE ON DELETE CASCADE 
);
 
 -- 7. Order_Details Table 
 CREATE TABLE IF NOT EXISTS order_details ( 
 Order_details_ID SMALLINT AUTO_INCREMENT PRIMARY KEY, 
 Order_ID SMALLINT, 
 Product_ID TINYINT, 
 Quantity TINYINT, 
 Each_Price DECIMAL(10,2), 
 Total_Price DECIMAL(10,2), 
 FOREIGN KEY (Order_ID) REFERENCES orders(Order_ID) 
	ON UPDATE CASCADE ON DELETE CASCADE, 
FOREIGN KEY (Product_ID) REFERENCES products(Product_ID) 
	ON UPDATE CASCADE ON DELETE CASCADE 
);

show tables;
select * from supplier;

select * from categories;

select * from employees;

select * from customers;

select * from products;

select * from orders;

select * from order_details;