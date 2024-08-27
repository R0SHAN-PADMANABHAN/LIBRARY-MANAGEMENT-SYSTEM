# LIBRARY-MANAGEMENT-SYSTEM

# Overview

This is a database-driven library management system designed to manage book inventory, customer information, employee details, and book lending/returning processes. The system consists of several tables that store data related to books, customers, employees, branches, and issue/return status.

# Database Schema

The database schema consists of the following tables:

1. Branch: Stores information about library branches, including branch number, manager ID, address, and contact number.
2. Employee: Stores information about library employees, including employee ID, name, position, salary, and branch number.
3. Books: Stores information about books, including ISBN, title, category, rental price, and status.
4. Customer: Stores information about customers, including customer ID, name, address, and registration date.
5. IssueStatus: Stores information about book lending, including issue ID, customer ID, book title, issue date, and ISBN.
6. ReturnStatus: Stores information about book returning, including return ID, customer ID, book title, return date, and ISBN.

# Features

1. Book Management: Add, update, and delete books.
2. Customer Management: Add, update, and delete customers.
3. Employee Management: Add, update, and delete employees.
4. Branch Management: Add, update, and delete branches.
5. Book Lending: Issue books to customers and track issue status.
6. Book Returning: Track book returns and update return status.
7. Reports: Generate reports on book availability, customer information, employee details, and issue/return status.

# Queries

The database includes several queries to perform various operations, such as:

1. Retrieving available books.
2. Listing employees by salary in descending order.
3. Displaying customer information for issued books.
4. Counting total books by category.
5. Identifying employees with salaries above 50000.
6. Finding customers who registered before 2022-01-01 and have not borrowed any books.
7. Counting total employees by branch.
8. Retrieving customers who borrowed books in June 2023.
9. Finding books with "history" in their title.
10. Identifying branches with more than 5 employees.
11. Displaying manager names and branch addresses.
12. Retrieving customers who borrowed books with rental prices above 25.

