CREATE DATABASE SUPERMARKET_DB;
USE SUPERMARKET_DB;
CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(255));
    SHOW TABLES;
    INSERT INTO Categories (category_name, description)
VALUES
('Groceries', 'Daily grocery products'),
('Beverages', 'Drinks and juices'),
('Dairy Products', 'Milk, cheese and butter'),
('Personal Care', 'Personal hygiene products'),
('Household Items', 'Home cleaning products');
SELECT * FROM CATEGORIES;

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    expiry_date DATE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    CHECK (price > 0),
    CHECK (stock_quantity >= 0)
);

DESCRIBE PRODUCTS;
INSERT INTO Products
(product_name, category_id, price, stock_quantity, expiry_date)
VALUES
('Rice', 1, 65.00, 100, '2027-06-30'),
('Orange Juice', 2, 45.00, 50, '2027-02-15'),
('Milk', 3, 30.00, 40, '2026-12-10'),
('Soap', 4, 35.00, 80, NULL),
('Floor Cleaner', 5, 120.00, 25, NULL);
SELECT * FROM PRODUCTS;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    registration_date DATE DEFAULT (CURRENT_DATE)
);
INSERT INTO Customers
(customer_name, phone, email, address)
VALUES
('Arun Kumar', '9876543210', 'arun@gmail.com', 'Kannur'),
('Anjali Raj', '9876543211', 'anjali@gmail.com', 'Thalassery'),
('Rahul Das', '9876543212', 'rahul@gmail.com', 'Kozhikode'),
('Meera Nair', '9876543213', 'meera@gmail.com', 'Mahe'),
('Vishnu Mohan', '9876543214', 'vishnu@gmail.com', 'Vadakara');
SELECT * FROM CUSTOMERS;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(30) DEFAULT 'Pending',
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id),
    CHECK (total_amount >= 0)
);
INSERT INTO Orders
(customer_id, order_date, order_status, total_amount)
VALUES
(1, '2026-11-20', 'Completed', 650.00),
(2, '2026-11-21', 'Completed', 450.00),
(3, '2026-11-21', 'Pending', 300.00),
(4, '2026-11-22', 'Completed', 750.00),
(5, '2026-11-23', 'Processing', 500.00);
SELECT * FROM ORDERS;
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES Products(product_id),

    CHECK (quantity > 0),
    CHECK (unit_price > 0),
    CHECK (subtotal >= 0)
);
INSERT INTO Order_Details
(order_id, product_id, quantity, unit_price, subtotal)
VALUES
(1, 1, 5, 65.00, 325.00),
(1, 3, 2, 30.00, 60.00),
(2, 2, 10, 45.00, 450.00),
(3, 4, 5, 35.00, 175.00),
(4, 5, 3, 120.00, 360.00);
SELECT * FROM ORDER_DETAILS;
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL UNIQUE,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    payment_status VARCHAR(30) DEFAULT 'Pending',

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),

    CHECK (payment_amount >= 0)
);
INSERT INTO Payments
(order_id, payment_date, payment_method, payment_amount, payment_status)
VALUES
(1, '2026-11-20', 'UPI', 650.00, 'Paid'),
(2, '2026-11-21', 'Cash', 450.00, 'Paid'),
(3, '2026-11-21', 'Debit Card', 0.00, 'Pending'),
(4, '2026-11-22', 'Credit Card', 750.00, 'Paid'),
(5, '2026-11-23', 'UPI', 0.00, 'Pending');
SELECT * FROM PAYMENTS;