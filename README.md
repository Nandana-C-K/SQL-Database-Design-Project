# Supermarket Management System Using MySQL

## Project Description

This project is designed to manage supermarket operations using MySQL.
It stores and manages information about product categories, products,
customers, orders, order details, and payments.

## Tables

1.  Categories
2.  Products
3.  Customers
4.  Orders
5.  Order_Details
6.  Payments

## Relationships

-   Categories → Products (One-to-Many)
-   Customers → Orders (One-to-Many)
-   Orders → Order_Details (One-to-Many)
-   Products → Order_Details (One-to-Many)
-   Orders → Payments (One-to-One)

## Technologies Used

-   MySQL
-   MySQL Workbench

## Project Files

-   database.sql
-   ER_Diagram.png
-   README.md

