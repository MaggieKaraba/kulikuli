CREATE DATABASE  IF NOT EXISTS `KULIKULI` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `KULIKULI`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: KULIKULI
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 14:09:06

-- KuliKuli database creation SQL code

CREATE DATABASE KULIKULI;
USE KULIKULI;
CREATE TABLE suppliers
(supplier_id CHAR(8)PRIMARY KEY,
first_name CHAR (20) NOT NULL,
last_name CHAR(20) NOT NULL,
address CHAR (30),
city CHAR (15),
postal_number CHAR(8),
supplier_contact CHAR(20),
price_per_kilo DECIMAL (7,2)
);
INSERT INTO suppliers (supplier_id, first_name, last_name, address, city, postal_number, supplier_contact, price_per_kilo)
VALUES
('S0001', 'John', 'Doe', '123 Main Street', 'Niamey', '12345', '555-555-5551', 5.25),
('S0002', 'Jane', 'Smith', '456 Elm Avenue', 'Niamey', '23456', '555-555-5552', 4.75),
('S0003', 'Robert', 'Johnson', '789 Oak Lane', 'Niamey', '34567', '555-555-5553', 4.50),
('S0004', 'Emily', 'Brown', '101 Pine Road', 'Niamey', '45678', '555-555-5554', 5.00),
('S0005', 'Michael', 'Wilson', '222 Cedar Street', 'Niamey', '56789', '555-555-5555', 4.25),
('S0006', 'Sarah', 'Davis', '333 Maple Drive', 'Niamey', '67890', '555-555-5556', 5.50),
('S0007', 'David', 'Martinez', '444 Birch Court', 'Niamey', '78901', '555-555-5557', 4.80),
('S0008', 'Lisa', 'Garcia', '555 Walnut Place', 'Niamey', '89012', '555-555-5558', 4.90),
('S0009', 'William', 'Rodriguez', '666 Cedar Lane', 'Niamey', '90123', '555-555-5559', 5.75),
('S0010', 'Mary', 'Lopez', '777 Oak Street', 'Niamey', '01234', '555-555-5560', 4.65);

CREATE TABLE supply_chain_transactions
(supply_transaction_id CHAR(8)PRIMARY KEY,
quantity_supplied DECIMAL(7,2),
transaction_date DATE
);
INSERT INTO supply_chain_transactions (supply_transaction_id, quantity_supplied, transaction_date)
VALUES
    ('ST001', 500.25, '2023-10-01'),
    ('ST002', 320.50, '2023-10-02'),
    ('ST003', 700.75, '2023-10-03'),
    ('ST004', 400.30, '2023-10-04'),
    ('ST005', 600.10, '2023-10-05'),
    ('ST006', 450.60, '2023-10-06'),
    ('ST007', 550.80, '2023-10-07'),
    ('ST008', 350.40, '2023-10-08'),
    ('ST009', 800.90, '2023-10-09'),
    ('ST010', 420.70, '2023-10-10');
    
CREATE TABLE raw_moringa_batch
(raw_moringa_batch_id CHAR(8)PRIMARY KEY,
warehouse_location VARCHAR (30),
quantity_received DECIMAL(7,2),
date_received DATE
);
INSERT INTO raw_moringa_batch (raw_moringa_batch_id, warehouse_location, quantity_received, date_received)
VALUES
    ('RB1001', 'Elm Street, Los Angeles, CA', 500.25, '2023-10-01'),
    ('RB1002', 'Oak Avenue, San Francisco, CA', 320.50, '2023-10-02'),
    ('RB1003', 'Maple Drive, San Diego, CA', 700.75, '2023-10-03'),
    ('RB1004', 'Birch Lane, Sacramento, CA', 400.30, '2023-10-04'),
    ('RB1005', 'Pine Road, San Jose, CA', 600.10, '2023-10-05'),
    ('RB1006', 'Cedar Street, Oakland, CA', 450.60, '2023-10-06'),
    ('RB1007', 'Sycamore Court, Fresno, CA', 550.80, '2023-10-07'),
    ('RB1008', 'Redwood Circle, Riverside, CA', 350.40, '2023-10-08'),
    ('RB1009', 'Willow Lane, Long Beach, CA', 800.90, '2023-10-09'),
    ('RB1010', 'Elm Street, Bakersfield, CA', 420.70, '2023-10-10');

CREATE TABLE retailers
(retailer_id CHAR(10)PRIMARY KEY,
retailer_name CHAR (20) NOT NULL,
retailer_address VARCHAR (50),
retailer_city CHAR (15),
retailer_postal_number CHAR(8),
retailer_contact CHAR(20),
retail_shipping_status CHAR(20),
total_purchase_value DECIMAL (7,2),
retail_transaction_date DATE
);
INSERT INTO retailers (retailer_id, retailer_name, retailer_address, retailer_city, retailer_postal_number, retailer_contact, retail_shipping_status, total_purchase_value, retail_transaction_date)
VALUES
    ('R1001', 'Walmart', '1234 Supermart Street', 'Bentonville', '72712', 'John Smith', 'Shipped', 1500.75, '2023-10-01'),
    ('R1002', 'Costco', '5678 Wholesale Avenue', 'Issaquah', '98027', 'Jane Doe', 'Processing', 2200.50, '2023-10-02'),
    ('R1003', 'Kroger', '9876 Grocery Lane', 'Cincinnati', '45202', 'David Johnson', 'Shipped', 1800.25, '2023-10-03'),
    ('R1004', 'Target', '4321 Retail Road', 'Minneapolis', '55403', 'Mary Brown', 'Delivered', 2500.30, '2023-10-04'),
    ('R1005', 'Publix', '6543 Supermarket Drive', 'Lakeland', '33811', 'Michael Wilson', 'Processing', 2100.10, '2023-10-05'),
    ('R1006', 'Safeway', '7890 Grocery Street', 'Pleasanton', '94588', 'Linda Lee', 'Shipped', 1950.60, '2023-10-06'),
    ('R1007', 'Whole Foods Market', '2345 Organic Avenue', 'Austin', '78703', 'Robert Garcia', 'Delivered', 2800.80, '2023-10-07'),
    ('R1008', 'Trader Joes', '8765 Specialty Lane', 'Monrovia', '91016', 'Sarah Martinez', 'Shipped', 2300.40, '2023-10-08'),
    ('R1009', 'H-E-B', '3456 Grocer Place', 'San Antonio', '78204', 'William Harris', 'Processing', 2600.90, '2023-10-09'),
    ('R1010', 'Aldi', '5678 Discount Street', 'Batavia', '60510', 'Karen Davis', 'Delivered', 2400.70, '2023-10-10');
    
CREATE TABLE customers
(customer_id CHAR(10)PRIMARY KEY,
first_name CHAR (30) NOT NULL,
last_name CHAR (30) NOT NULL,
customer_address CHAR (30),
customer_city CHAR (30),
customer_postal_number CHAR(8),
customer_contact CHAR(20)
);

INSERT INTO customers (customer_id, first_name, last_name, customer_address, customer_city, customer_postal_number, customer_contact)
VALUES
('C1001', 'John', 'Smith', '123 Main Street', 'Los Angeles', '90001', '555-123-4567'),
('C1002', 'Alice', 'Johnson', '456 Elm Avenue', 'San Francisco', '94101', '555-987-6543'),
('C1003', 'David', 'Brown', '789 Oak Road', 'San Diego', '92101', '555-789-1234'),
('C1004', 'Mary', 'Wilson', '101 Pine Lane', 'Sacramento', '95814', '555-234-5678'),
('C1005', 'Michael', 'Lee', '222 Cedar Street', 'San Jose', '95101', '555-876-5432'),
('C1006', 'Linda', 'Garcia', '333 Maple Drive', 'Oakland', '94601', '555-345-6789'),
('C1007', 'Robert', 'Martinez', '444 Birch Court', 'Fresno', '93701', '555-654-3210'),
('C1008', 'Sarah', 'Harris', '555 Redwood Circle', 'Riverside', '92501', '555-789-0123'),
('C1009', 'William', 'Davis', '696 Willow Lane', 'Long Beach', '90801', '555-432-1098'),
('C1010', 'Karen', 'Taylor', '777 Sycamore Road', 'Bakersfield', '93301', '555-210-9876'),
('C1011', 'James', 'Anderson', '888 Oak Avenue', 'San Francisco', '94101', '555-987-4321'),
('C1012', 'Emily', 'Perez', '999 Elm Street', 'Los Angeles', '90001', '555-123-7890'),
('C1013', 'Daniel', 'Clark', '111 Pine Drive', 'San Diego', '92101', '555-345-2109'),
('C1014', 'Jennifer', 'White', '222 Cedar Lane', 'San Jose', '95101', '555-678-1098'),
('C1015', 'Christopher', 'Lopez', '333 Maple Avenue', 'Oakland', '94601', '555-432-5678'),
('C1016', 'Patricia', 'Gonzalez', '444 Birch Road', 'Fresno', '93701', '555-789-2345'),
('C1017', 'Matthew', 'Hernandez', '555 Redwood Drive', 'Riverside', '92501', '555-210-6543'),
('C1018', 'Samantha', 'Young', '666 Willow Avenue', 'Long Beach', '90801', '555-987-2109'),
('C1019', 'Joseph', 'Turner', '777 Sycamore Lane', 'Bakersfield', '93301', '555-345-6789'),
('C1020', 'Nancy', 'Scott', '888 Oak Road', 'San Francisco', '94101', '555-654-9876');

CREATE TABLE finished_moringa_product
(product_id CHAR(5)PRIMARY KEY,
product_name CHAR (20) NOT NULL,
nutritional_information TEXT NOT NULL,
serving_size CHAR (20),
net_weight INT(5),
price DECIMAL (7,2)
);
INSERT INTO finished_moringa_product (product_id, product_name, nutritional_information, serving_size, net_weight, price)
VALUES
('P001', 'Moringa Powder', 'Serving Size: 1 tablespoon (10g)\nCalories: 30\nProtein: 2g\nCarbohydrates: 4g\nFat: 0g', '1 tablespoon', 250, 12.99),
('P002', 'Moringa Capsules', 'Each capsule contains:\nMoringa Leaf Powder: 500mg\nTotal Carbohydrates: 1g\nDietary Fiber: 0.5g', '1 capsule', 120, 24.99),
('P003', 'Moringa Tea Bags', 'Serving Size: 1 tea bag (2g)\nCalories: 0\nProtein: 0g\nCarbohydrates: 0g\nFat: 0g', '1 tea bag', 30, 9.49),
('P004', 'Moringa Oil', '100% Pure Moringa Seed Oil\nNutritional information not applicable', 'N/A', 100, 17.50),
('P005', 'Moringa Energy Bars', 'Serving Size: 1 bar (40g)\nCalories: 150\nProtein: 6g\nCarbohydrates: 20g\nFat: 7g', '1 bar', 12, 14.99),
('P006', 'Moringa Shampoo', 'Moringa Extract, Aqua, Sodium Laureth Sulfate, Cocamidopropyl Betaine, etc.', '250ml', 250, 8.99),
('P007', 'Moringa Facial Cream', 'Moringa Oil, Shea Butter, Aloe Vera Extract, Glycerin, etc.', '50ml', 50, 19.99),
('P008', 'Moringa Soap', 'Sodium Palmate, Sodium Palm Kernelate, Moringa Leaf Extract, Glycerin, Fragrance, etc.', '100g', 100, 3.99),
('P009', 'Moringa Herbal Tea', 'Serving Size: 1 tea bag (2g)\nCalories: 0\nProtein: 0g\nCarbohydrates: 0g\nFat: 0g', '1 tea bag', 50, 7.99),
('P010', 'Moringa Facial Mask', 'Moringa Leaf Powder, Kaolin Clay, Aloe Vera Gel, Lavender Oil, etc.', '100g', 100, 11.49);

CREATE TABLE orders
(
    order_id CHAR(10) PRIMARY KEY,
    customer_id CHAR(10),
    total_price DECIMAL(7,2),
    order_shipping_status CHAR(15),
    transaction_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, total_price, order_shipping_status, transaction_date)
VALUES
    ('O0001', 'C1001', 125.99, 'Shipped', '2023-10-01'),
    ('O0002', 'C1002', 75.50, 'Processing', '2023-10-02'),
    ('O0003', 'C1003', 200.25, 'Delivered', '2023-10-03'),
    ('O0004', 'C1005', 50.75, 'Shipped', '2023-10-04'),
    ('O0005', 'C1007', 180.00, 'Delivered', '2023-10-05'),
    ('O0006', 'C1011', 90.99, 'Processing', '2023-10-06'),
    ('O0007', 'C1012', 40.25, 'Shipped', '2023-10-07'),
    ('O0008', 'C1013', 150.00, 'Processing', '2023-10-08'),
    ('O0009', 'C1019', 60.75, 'Delivered', '2023-10-09'),
    ('O0010', 'C1020', 110.49, 'Shipped', '2023-10-10');
    
CREATE TABLE purchase_orders
(
    purchase_id CHAR(10)PRIMARY KEY,
    product_id CHAR(5),
    order_id CHAR(10),
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES finished_moringa_product(product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
INSERT INTO purchase_orders (purchase_id, product_id, order_id, quantity)
VALUES
('PO001', 'P001', 'O0001', 3),
('PO002', 'P002', 'O0001', 2),
('PO003', 'P003', 'O0002', 1),
('PO004', 'P004', 'O0003', 5),
('PO005', 'P005', 'O0004', 2),
('PO006', 'P006', 'O0004', 1),
('PO007', 'P007', 'O0005', 3),
('PO008', 'P008', 'O0006', 4),
('PO009', 'P009', 'O0007', 2),
('PO010', 'P010', 'O0008', 3);

CREATE TABLE retailer_purchase
(
    retailer_purchase_id CHAR(10) PRIMARY KEY,
    retailer_id CHAR(10),
    product_id CHAR(5),
    FOREIGN KEY (retailer_id) REFERENCES retailers(retailer_id),
    FOREIGN KEY (product_id) REFERENCES finished_moringa_product(product_id)
);
INSERT INTO retailer_purchase (retailer_purchase_id, retailer_id, product_id)
VALUES
('RP001', 'R1001', 'P001'),
('RP002', 'R1002', 'P002'),
('RP003', 'R1003', 'P003'),
('RP004', 'R1004', 'P004'),
('RP005', 'R1005', 'P005'),
('RP006', 'R1006', 'P006'),
('RP007', 'R1007', 'P007'),
('RP008', 'R1008', 'P008'),
('RP009', 'R1009', 'P009'),
('RP010', 'R1010', 'P010');


-- Example Queries 

##QUERIES

USE KULIKULI;

SELECT * 
FROM supply_chain_transactions;

SELECT first_name,last_name,customer_id
FROM customers
WHERE customer_id IN (SELECT customer_id
                     FROM orders);


SELECT c.first_name, c.last_name, o.order_id, COUNT(p.quantity) AS quantity_count
FROM customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id
LEFT JOIN purchase_orders AS p ON o.order_id = p.order_id
GROUP BY c.first_name, c.last_name, o.order_id;

SELECT fmp.product_name,fmp.product_id, MAX(po.quantity) AS top_sellers
FROM finished_moringa_product AS fmp
INNER JOIN purchase_orders AS po
ON fmp.product_id = po.product_id
GROUP BY fmp.product_name, fmp.product_id
ORDER BY top_sellers DESC
LIMIT 3;

SELECT fmp.product_name, fmp.product_id, SUM(fmp.price * po.quantity) AS revenue_generated
FROM finished_moringa_product AS fmp
INNER JOIN purchase_orders AS po
ON fmp.product_id = po.product_id
GROUP BY fmp.product_name, fmp.product_id
ORDER BY revenue_generated DESC;

SELECT first_name,last_name,customer_id
FROM customers
WHERE customer_id IN (SELECT customer_id
                     FROM orders
                     WHERE transaction_date >= DATE_SUB(CURRENT_DATE, INTERVAL 30 DAY));


SELECT fmp.product_name, ROUND(AVG(fmp.price),2) AS average_price
FROM finished_moringa_product AS fmp
GROUP BY fmp.product_name;

SELECT c.customer_id, c.first_name, c.last_name, SUM(fmp.price * po.quantity) AS total_revenue
FROM customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id
INNER JOIN purchase_orders AS po ON o.order_id = po.order_id
LEFT JOIN finished_moringa_product AS fmp ON po.product_id = fmp.product_id
GROUP BY c.customer_id, c.first_name, c.last_name;


SELECT c.first_name, c.last_name, fmp.product_name, po.quantity,o.order_id, fmp.price, po.product_id
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN purchase_orders AS po ON o.order_id = po.order_id
JOIN finished_moringa_product AS fmp ON po.product_id = fmp.product_id
WHERE c.first_name = 'John';

SELECT c.customer_id, c.first_name, c.last_name
FROM customers AS c
LEFT JOIN orders AS o 
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

SELECT o.order_id, c.customer_id, c.first_name, c.last_name
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id
WHERE o.order_id IN (
    SELECT po.order_id
    FROM purchase_orders AS po
    JOIN finished_moringa_product AS fmp ON po.product_id = fmp.product_id
    WHERE fmp.price > (
        SELECT AVG(price)
        FROM finished_moringa_product
    )
);

SELECT c.first_name, c.last_name, o.order_id, COUNT(p.quantity) AS quantity_count
FROM customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id
INNER JOIN purchase_orders AS p ON o.order_id = p.order_id
GROUP BY c.first_name, c.last_name, o.order_id;

SELECT c.first_name, c.last_name, fmp.product_name, po.quantity, fmp.price, po.product_id
FROM customers AS c
INNER JOIN orders AS o ON c.customer_id = o.customer_id
INNER JOIN purchase_orders AS po ON o.order_id = po.order_id
LEFT JOIN finished_moringa_product AS fmp ON po.product_id = fmp.product_id
WHERE c.first_name = 'John';

SELECT o.order_id, c.customer_id, c.first_name, c.last_name
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id
WHERE o.order_id IN (
    SELECT po.order_id
    FROM purchase_orders AS po
    LEFT JOIN finished_moringa_product AS fmp ON po.product_id = fmp.product_id
    WHERE fmp.price > (
        SELECT AVG(price)
        FROM finished_moringa_product
    ));





 










  





