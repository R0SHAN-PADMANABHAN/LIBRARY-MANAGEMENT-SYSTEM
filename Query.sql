CREATE DATABASE Library;
USE library;

-- Branch table

CREATE TABLE Branch (
  Branch_no INT PRIMARY KEY,
  Manager_Id INT,
  Branch_address VARCHAR(100),
  Contact_no VARCHAR(20)
);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES(1,251,'Kochi, Ernakulam, Kerala','+91 9279965321'),
(2,962,'Thiruvanathapuram, Kerala','+91 8126354587'),
(3,453,'West fort, Thrissur, Kerala','+91 8179523602'),
(4,804,'Chennai Tamilnadu','+91 9178031201'),
(5,545,'Mumbai, Maharashtra','+91 7995566330'),
(6,756,'Bengaluru, Karnataka','+91 8129523685'),
(7,117,'Aluva, Ernakulam, Kerala','+91 9205854557'),
(8,208,'Kappad, Kozhikode, Kerala','+91 8129563687');

SELECT * FROM Branch;

-- Employee table

CREATE TABLE Employee (
  Emp_Id INT PRIMARY KEY,
  Emp_name VARCHAR(100),
  Position VARCHAR(50),
  Salary DECIMAL(10, 2),
  Branch_no INT,
  FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES(251,'Ebin Varghese','Manager',58000,1),
(366,'Adithyan','Assistan Librarian',51000,1),
(123,'Jancy','Staff',32000,1),
(951,'Vismaya','Cataloger',40000,1),
(962,'Naveen','Manager',55000,2),
(995,'Sooraj','Staff',35000,2),
(401,'Jasin Joy','Assistant Librarian',48000,2),
(453,'Roshan Padmanabhan','Manager',45000,3),
(776,'Varsha','Assistant Librarian',40000,3),
(109,'Vishnu','Staff',33000,3),
(804,'Sijo Mathew','Manager',48000,4),
(654,'Sarath Kumar','Assistant Librarian',45000,4),
(527,'Rohith','Staff',35000,4),
(545,'Firoz Khan','Manager',51500,5),
(306,'Priyamvada','Assistant Librarian',49000,5),
(703,'Keerthana','Cataloger',42000,5),
(756,'Raghuvaran','Manager',50000,6),
(850,'Pranavdas','Assistant Librarian',45000,6),
(059,'Vishnu Unnikrishnan','Staff',35000,6),
(117,'Santhosh','Manager',45000,7),
(717,'Sandhya','Assistant Librarian',40000,7),
(883,'Rahana','Staff',30000,7),
(208,'Amal Davis','Manager',45000,8),
(028,'Ebin Mathew','Assistant Librarian',42000,8),
(367,'Shibil','Staff',35000,8);

SELECT * FROM Employee ;

-- Books table

CREATE TABLE Books (
  ISBN VARCHAR(50) PRIMARY KEY,
  Book_title VARCHAR(100),
  Category VARCHAR(50),
  Rental_Price DECIMAL(10, 2),
  Status VARCHAR(10),
  Author VARCHAR(100),
  Publisher VARCHAR(100)
);

INSERT INTO Books (ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
VALUES 
('978-01-4341-633-3', 'Aadujeevitham', 'Novel', 50.00, 'Available', 'Benyamin', 'Penguin Books'),
('978-81-226-0731-4', 'Randamoozham', 'Mythology', 70.00, 'Available', 'M. T. Vasudevan Nair', 'Current Books'),
('978-8171301263', 'Khasakkinte ithihasam', 'Novel', 60.00, 'Available', 'O V Vijayan', 'DC Books'),
('978-8126439362', 'Arachaar', 'Novel', 55.00, 'Available', 'K R Meera', 'DC Books'),
('978-81-226-0727-7', 'Nalukettu', 'Novel', 65.00, 'Available', 'M. T. Vasudevan Nair', 'Current Books'),
('978-8171302093', 'Pathummayude Aadu', 'Comic novel', 45.00, 'Available', 'Vaikom Muhammad Basheer', 'DC Books'),
('978-8171302094', 'Mathilukal', 'Novel', 40.00, 'Available', 'Vaikom Muhammad Basheer', 'DC Books'),
('978-8171302095', 'Balyakalasakhi', 'Novel', 35.00, 'Available', 'Vaikom Muhammad Basheer', 'DC Books'),
('978-8171302096', 'Chemmeen', 'Novel', 30.00, 'Available', 'Thakazhi Sivasankara Pillai', 'DC Books'),
('978-8171302097', 'Ente Katha', 'Autobiography', 50.00, 'Available', 'Madhavikutty', 'DC Books'),
('978-0-7475-3269-9', 'Harry Potter', 'Fantasy', 60.00, 'Available', 'J. K. Rowling', 'Bloomsbury'),
('978-1-4027-6378-7', 'Anna Karenina', 'Classic', 55.00, 'Available', 'Leo Tolstoy', 'Penguin Books'),
('978-1-4027-6379-4', 'War and Peace', 'Classic', 70.00, 'Available', 'Leo Tolstoy', 'Penguin Books'),
('978-0-261-10263-3', 'The Lord of the Rings', 'Fantasy', 65.00, 'Available', 'J. R. R. Tolkien', 'Allen & Unwin'),
('978-0-19-953715-9', 'Alice''s Adventures in Wonderland', 'Classic', 40.00, 'Available', 'Lewis Carroll', 'Oxford University Press'),
('978-81-220-0463-6', 'Kayar', 'Novel', 45.00, 'Available', 'Thakazhi Sivasankara Pillai', 'DC Books'),
('978-81-220-0463-7', 'Ponniyin Selvan', 'Historical fiction', 60.00, 'Available', 'Kalki Krishnamurthy', 'DC Books'),
('978-1-4019-0880-1', 'Rich Dad Poor Dad', 'Self-help', 50.00, 'Available', 'Robert Kiyosaki', 'Warner Books'),
('978-0-316-18137-4', 'I Am Malala', 'Biography', 55.00, 'Available', 'Malala Yousafzai', 'Little, Brown and Company'),
('978-81-220-0463-8', 'The Story of My Experiments with Truth', 'Autobiography', 40.00, 'Available', 'Mahatma Gandhi', 'DC Books'),
('978-81-220-0463-9', 'Wings of Fire', 'Autobiography', 45.00, 'Available', 'A. P. J. Abdul Kalam', 'DC Books'),
('978-81-220-0470-7', 'Verukal', 'Novel', 35.00, 'Available', 'V. K. N.', 'DC Books'),
('978-81-220-0471-4', 'Aalahayude Penmakkal', 'Novel', 40.00, 'Available', 'S. K. Pottekkatt', 'DC Books'),
('978-81-220-0472-1', 'Papathara', 'Novel', 40.00, 'Available', 'Sarah Thomas', 'DC Books'),
('978-81-220-0473-8', 'Enmakaje', 'Novel', 35.00, 'Available', 'M. T. Vasudevan Nair', 'DC Books'),
('978-81-220-0474-5', 'Oru Desathinte Katha', 'Novel', 45.00, 'Available', 'S. K. Pottekkatt', 'DC Books'),
('978-81-220-0475-2', 'Ave Maria', 'Novel', 40.00, 'Available', 'M. Mukundan', 'DC Books'),
('978-81-220-0476-9', 'Mazhayil Parakkunna Pakshikal', 'Novel', 35.00, 'Available', 'N. P. Mohammed', 'DC Books'),
('978-81-220-0477-6', 'Cultural History of Kerala', 'History', 40.00, 'Available', 'V. V. K. Valath', 'DC Books'),
('978-81-220-0478-3', 'Francis Itty Cora', 'Biography', 45.00, 'Available', 'Francis Itty Cora', 'DC Books');

SELECT * FROM Books;

-- Customer table

CREATE TABLE Customer (
  Customer_Id INT PRIMARY KEY,
  Customer_name VARCHAR(100),
  Customer_address VARCHAR(200),
  Reg_date DATE
);

INSERT INTO Customer (Customer_Id,Customer_name,Customer_address,Reg_date)
VALUES
 (121, 'Ardra', 'Nenmara, Palakkad, Kerala', '2022-01-01'),
 (122, 'Harshitha', 'Kakanad, Ernakulam, Kerala', '2022-01-15'),
 (123, 'Sajan Joseph', 'Kochi, Ernakulam, Kerala', '2022-02-01'),
 (124, 'Kishore', 'Mannuthy, Thrissur, Kerala', '2022-02-15'),
 (125, 'Vismaya', 'Ramanattukkara, Kozhikode, Kerala', '2022-03-01'),
 (126, 'Adithyan', 'East fort, Thrissur, Kerala', '2022-03-15'),
 (127, 'Sreekuttan', 'Kakanad, Ernakulam, Kerala', '2022-04-01'),
 (128, 'Sophia Paul', 'Kolazhi, Thrissur,Ernakulam', '2023-04-15'),
 (129, 'Ahamed', 'Kochi, Ernakulam, Kerala', '2020-05-01'),
 (130, 'Eva maria', 'Coimbatore, Tamil Nadu', '2019-05-15'),
 (131, 'Meera', 'Bengaluru, Karnataka', '2022-06-01'),
 (132, 'Sujitha Raj', 'Palarivattom, Ernakulam, Kerala', '2022-06-15'),
 (133,'Haritha Haridas', 'Kalamasseri, Ernakulam, Kerala', '2020-07-01'),
 (134, 'Praveena', 'Mulangunathukavu, Thrissur, Kerala', '2018-07-15'),
 (135, 'Nithin', 'Bengaluru, Karnataka', '2021-08-01'),
 (136, 'Midhun', 'Kovalam, Thiruvananthapuram, Kerala', '2020-08-15'),
 (137, 'Anas Mon', 'Vattiyoorkavu, Thiruvananthapuram, Kerala', '2023-09-01'),
 (138, 'Akash Menon', 'Kappad, Kozhikode, Kerala', '2021-09-15'),
 (139, 'Praveen', 'Salem, Tamil Nadu', '2020-10-01'),
 (140, 'Sujith Unnikrishnan', 'Chennai, Tamil Nadu', '2019-10-15');

SELECT * FROM Customer ;

-- Issuestatus table

CREATE TABLE IssueStatus (
  Issue_Id INT PRIMARY KEY,
  Issued_cust INT,
  Issued_book_name VARCHAR(100),
  Issue_date DATE,
  Isbn_book VARCHAR(20),
  FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
  FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO IssueStatus (Issue_id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES (5896,121,'Aadujeevitham','2022-01-03','978-01-4341-633-3'),
(5412,132,'Pathummayude Aadu','2022-06-03','978-8171302093'),
(5225,139,'I Am Malala','2022-10-01','978-0-316-18137-4'),
(5648,122,'The Story of My Experiments with Truth','2022-01-16','978-81-220-0463-8'),
(5684,136,'Ponniyin Selvan','2022-01-03','978-81-220-0463-7'),
(5369,121,'The Lord of the Rings','2020-09-01','978-0-261-10263-3'),
(5879,124,'Wings of Fire','2023-06-02','978-81-220-0463-9'),
(5478,135,'Chemmeen','2021-08-01','978-8171302096'),
(5411,138,'I Am Malala','2021-09-16','978-0-316-18137-4'),
(5248,128,'War and Peace','2024-01-03','978-1-4027-6379-4'),
(5960,133,'Aadujeevitham','2021-03-10','978-01-4341-633-3'),
(5906,123,'Harry Potter','2022-12-31','978-0-7475-3269-9'),
(5237,126,'Francis Itty Cora','2023-11-29','978-81-220-0478-3'),
(5690,136,'Rich Dad Poor Dad','2022-12-12','978-1-4019-0880-1'),
(5124,137,'Verukal','2023-09-02','978-81-220-0470-7'),
(5798,139,'Aadujeevitham','2020-11-01','978-01-4341-633-3'),
(5936,125,'Enmakaje','2023-01-03','978-81-220-0473-8'),
(5114,127,'Ponniyin Selvan','2024-02-28','978-81-220-0463-7'),
(5009,121,'I Am Malala','2024-01-10','978-0-316-18137-4'),
(5141,131,'Kayar','2023-06-02','978-81-220-0463-6'),
(5143,130,'Rich Dad Poor Dad','2019-05-16','978-1-4019-0880-1'),
(5770,132,'Verukal','2022-10-03','978-81-220-0470-7'),
(5707,140,'Alice"s Adventures in Wonderland','2019-10-20','978-0-19-953715-9'),
(5443,127,'Anna Karenina','2022-04-30','978-1-4027-6378-7'),
(5996,136,'Harry Potter','2021-01-01','978-0-7475-3269-9'),
(5077,128,'Francis Itty Cora','2023-04-16','978-81-220-0478-3'),
(5900,133,'Ente Katha','2020-12-01','978-8171302097'),
(5015,130,'Papathara','2019-05-22','978-81-220-0472-1'),
(5224,122,'Kayar','2022-05-30','978-81-220-0463-6'),
(5105,139,'Alice"s Adventures in Wonderland','2022-01-03','978-0-19-953715-9'),
(5886,140,'Enmakaje','2020-01-22','978-81-220-0473-8');

SELECT * FROM IssueStatus;

-- Returnstatus table

CREATE TABLE ReturnStatus (
  Return_Id INT PRIMARY KEY,
  Return_cust INT,
  Return_book_name VARCHAR(100),
  Return_date DATE,
  Isbn_book2 VARCHAR(20),
  FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
  FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus (Return_Id, Return_cusT, Return_book_name, Return_date, ISBN_book2)
VALUES (8896,121,'Aadujeevitham','2022-02-01','978-01-4341-633-3'),
(8412,132,'Pathummayude Aadu','2022-07-10','978-8171302093'),
(8225,139,'I Am Malala','2022-12-01','978-0-316-18137-4'),
(8648,122,'The Story of My Experiments with Truth','2022-03-01','978-81-220-0463-8'),
(8684,136,'Ponniyin Selvan','2022-01-31','978-81-220-0463-7'),
(8369,121,'The Lord of the Rings','2020-10-28','978-0-261-10263-3'),
(8879,124,'Wings of Fire','2023-07-30','978-81-220-0463-9'),
(8478,135,'Chemmeen','2021-12-01','978-8171302096'),
(8411,138,'I Am Malala','2021-10-21','978-0-316-18137-4'),
(8248,128,'War and Peace','2024-02-28','978-1-4027-6379-4'),
(8960,133,'Aadujeevitham','2021-05-11','978-01-4341-633-3'),
(8906,123,'Harry Potter','2023-02-02','978-0-7475-3269-9'),
(8237,126,'Francis Itty Cora','2024-01-20','978-81-220-0478-3'),
(8690,136,'Rich Dad Poor Dad','2023-02-19','978-1-4019-0880-1'),
(8124,137,'Verukal','2023-12-02','978-81-220-0470-7'),
(8798,139,'Aadujeevitham','2021-01-01','978-01-4341-633-3'),
(8936,125,'Enmakaje','2023-03-03','978-81-220-0473-8'),
(8114,127,'Ponniyin Selvan','2024-03-28','978-81-220-0463-7'),
(8009,121,'I Am Malala','2024-03-30','978-0-316-18137-4'),
(8141,131,'Kayar','2023-10-02','978-81-220-0463-6'),
(8143,130,'Rich Dad Poor Dad','2019-07-01','978-1-4019-0880-1'),
(8770,132,'Verukal','2022-12-24','978-81-220-0470-7'),
(8707,140,'Alice"s Adventures in Wonderland','2019-12-12','978-0-19-953715-9'),
(8443,127,'Anna Karenina','2022-05-30','978-1-4027-6378-7'),
(8996,136,'Harry Potter','2021-03-01','978-0-7475-3269-9'),
(8077,128,'Francis Itty Cora','2023-06-16','978-81-220-0478-3'),
(8900,133,'Ente Katha','2021-02-28','978-8171302097'),
(8015,130,'Papathara','2019-07-22','978-81-220-0472-1'),
(8224,122,'Kayar','2022-07-30','978-81-220-0463-6'),
(8105,139,'Alice"s Adventures in Wonderland','2022-03-03','978-0-19-953715-9'),
(8886,140,'Enmakaje','2020-04-01','978-81-220-0473-8');

SELECT * FROM ReturnStatus;

SELECT Book_title, Category, Rental_Price
FROM Books
WHERE Status = 'Available';

SELECT Emp_name, Salary
FROM Employee
ORDER BY Salary DESC;

SELECT Book_title, Customer_name
FROM IssueStatus
JOIN Books ON IssueStatus.Isbn_book = Books.ISBN
JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id;

SELECT Category, COUNT(*) AS Total_Books
FROM Books
GROUP BY Category;

SELECT Emp_name, Position
FROM Employee
WHERE Salary > 50000;

SELECT Customer_name
FROM Customer
WHERE Reg_date < '2022-01-01'
AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus);

SELECT Branch_no, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Branch_no;

SELECT Customer_name
FROM IssueStatus
JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id
WHERE Issue_date >= '2023-06-01' AND Issue_date < '2023-07-01';

SELECT Book_title
FROM Books
WHERE Book_title LIKE '%history%';

SELECT Branch_no, COUNT(*) AS Total_Employees
FROM Employee
GROUP BY Branch_no
HAVING COUNT(*) > 5;

SELECT Emp_name, Branch_address
FROM Employee
JOIN Branch ON Employee.Branch_no = Branch.Branch_no
WHERE Position = 'Manager';

SELECT Customer_name
FROM IssueStatus
JOIN Customer ON IssueStatus.Issued_cust = Customer.Customer_Id
JOIN Books ON IssueStatus.Isbn_book = Books.ISBN
WHERE Rental_Price > 25;
