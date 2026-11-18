# SQL Part Project: Database Design Using MySQL

## Project Overview

In this project, you will design and create a database from scratch using MySQL.

You will choose a real-world business scenario, identify the information that needs to be stored, create the required tables, establish relationships between them, and insert sample data.

The objective is to understand how real businesses organize and manage their data using relational databases.

**This is an individual project.**

---

## 1. Choose Your Business Scenario

Select ONE real-world business scenario for your project.

Here are some examples to help you get started:

| Scenario | Possible Tables |
|---|---|
| Gym Management | Members, Trainers, Membership Plans, Classes, Attendance, Payments |
| E-commerce | Customers, Products, Categories, Orders, Order Details, Payments |
| Food Delivery | Customers, Restaurants, Menu Items, Orders, Delivery Partners, Payments |
| Hotel Management | Guests, Rooms, Reservations, Payments, Services |
| Logistics / Courier Service | Customers, Shipments, Branches, Delivery Partners, Tracking |

**Important:**
- These are only examples. You are free to choose any other business scenario.
- You must decide the tables and columns based on your selected business.
- Think about what information the business needs to store.
- Do not simply copy the sample table structures.

---

## 2. What You Need to Do

Follow these steps to complete your project.

**Step 1: Plan Your Database**
- Decide the tables required for your business.
- Identify the columns needed in each table.
- Decide how the tables are related to each other.

**Step 2: Create the Database**
- Create a new database in MySQL.
- Create all the required tables(at least 4).
- Choose suitable data types for every column.

**Step 3: Apply Constraints and Relationships**

Use appropriate constraints wherever necessary:

- PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, DEFAULT, CHECK, etc.
Make sure related tables are connected using Foreign Keys.

**Step 4: Insert Data**
- Insert at least 5 records into every table.
- Use meaningful and realistic sample data.


**Step 5: Generate the ER Diagram**

Generate an Entity Relationship (ER) Diagram using MySQL Workbench.

---

## 3. Database Requirements

Your database must satisfy the following conditions:

1. Minimum 4 tables.
2. Minimum 5 records in every table.
3. Every table must have a suitable Primary Key.
4. Related tables must be connected using Foreign Keys.
5. Every column must have an appropriate data type.
6. Use suitable constraints wherever required.
7. Avoid unnecessary repetition of data.
8. The complete SQL script must execute from beginning to end without errors.

**Remember:** Each fact should be stored in the appropriate place. If you are repeating the same information in multiple tables, think about whether it should be maintained in a separate table.

---

## 4. Generate the ER Diagram

Follow these steps in MySQL Workbench:

1. Open MySQL Workbench.
2. Go to **Database → Reverse Engineer**.
3. Select your MySQL connection.
4. Select the database you created.
5. Continue through the wizard and click Execute.
6. Arrange the tables neatly so that relationship lines are clearly visible.
7. Go to **File → Export → Export as PNG**.
8. Save the diagram as `ER_Diagram.png`.

**Important:**
- Your ER diagram must show all the tables.
- Relationship lines must be visible between related tables.
- If relationship lines are missing, check whether you have correctly declared Foreign Keys.

---

## 5. GitHub Submission Instructions

1. Open the original GitHub repository shared by your trainer.
2. Click **Fork** to create your own copy.
3. Open your forked repository.
4. Update the `README.md` with details of your selected business scenario.
5. Upload your SQL script (`database.sql`) and ER diagram (`ER_Diagram.png`).
6. Commit your changes and submit your forked repository link.

**Note:** Submit your own forked repository link, not the original repository link.

### Your Final Repository Structure

Your repository should contain the following files:

```text
SQL-Database-Design-Project/
│
├── README.md
├── database.sql
└── ER_Diagram.png
```

### What to Include in Your Modified README

Update the original README to describe your own project.

Include:

- **Project Title:** Name of your database project.
- **Selected Scenario:** The business or industry you selected.
- **Project Description:** Briefly explain what your database manages.
- **Tables Created:** Mention all the tables you designed.
- **Relationships:** Briefly explain how the tables are connected.

Do not keep the original sample scenarios as your project description. Your README must describe your own database.


## 6. Project Review

Be prepared to explain your database design.

You may be asked questions such as:

1. Why did you choose this business scenario?
2. Why did you create these particular tables?
3. Why did you choose these columns?
4. Why did you use INT, VARCHAR, DATE or DECIMAL for specific columns?
5. What is the purpose of a Primary Key?
6. What is the purpose of a Foreign Key?
7. What is the relationship between your tables?
8. Why did you separate certain information into different tables?
9. How does your ER diagram represent your database?

---

## Final Instructions

- This is an individual project. Work on your own.
- Do not copy another student's database.
- Choose a meaningful real-world business scenario.
- Use realistic sample data.
- Follow proper naming conventions for tables and columns.
- Check your SQL script before submitting.
- Make sure your ER diagram is clear and readable.
- Update the README according to your selected business domain.
- Be prepared to explain your database design.

**The goal is not just to create tables and insert data. Understand how a real business stores and organizes its information using a relational database.**
