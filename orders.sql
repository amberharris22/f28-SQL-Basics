-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR(40),
product_price FLOAT,
quantity INTEGER
);
-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES (1, 'orange chicken', 12, 1),
(1, 'mongolian beef', 14, 2),
(2, 'kung pao chicken', 13, 1),
(3, 'lo mein', 10, 1),
(2, 'egg roll', 5, 4);
-- Select all the records from the orders table.
SELECT *FROM orders
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
-- Calculate the total order price.
SELECT SUM(quantity*product_price) FROM orders;
-- Calculate the total order price by a single person_id.
SELECT SUM(quantity*product_price) FROM orders
GROUP BY person_id;