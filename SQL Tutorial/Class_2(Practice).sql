 CREATE DATABASE shop;
 USE shop;
 
 CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
    name VARCHAR(20),
    mode VARCHAR(25),
    city VARCHAR(25)
 );
 
 INSERT INTO customers (customer_id, name, mode, city) VALUES
(101, 'Sameer', 'Credit Card', 'Karachi'),
(102, 'Ali', 'Net Banking', 'Lahore'),
(103, 'Zara', 'Debit Card', 'Islamabad'),
(104, 'Ahmed', 'Credit Card', 'Karachi'),
(105, 'Fatima', 'Net Banking', 'Hyderabad'),
(106, 'Bilal', 'Debit Card', 'Multan'),
(107, 'Ayesha', 'Credit Card', 'Faisalabad'),
(108, 'Omar', 'Net Banking', 'Peshawar'),
(109, 'Hina', 'Debit Card', 'Quetta'),
(110, 'Tariq', 'Credit Card', 'Rawalpindi'),
(111, 'Sana', 'Net Banking', 'Lahore'),
(112, 'Hassan', 'Debit Card', 'Karachi'),
(113, 'Noor', 'Credit Card', 'Islamabad'),
(114, 'Yasir', 'Net Banking', 'Multan'),
(115, 'Iqra', 'Debit Card', 'Hyderabad'),
(116, 'Danish', 'Credit Card', 'Faisalabad'),
(117, 'Kiran', 'Net Banking', 'Peshawar'),
(118, 'Rehan', 'Debit Card', 'Quetta'),
(119, 'Lubna', 'Credit Card', 'Rawalpindi'),
(120, 'Jawad', 'Net Banking', 'Lahore');
 
--  
-- SELECT * FROM customers;

SELECT mode, city, COUNT(*) AS total_payments
FROM customers
GROUP BY mode, city
ORDER BY mode, city;

