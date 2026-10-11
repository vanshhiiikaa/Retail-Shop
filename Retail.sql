CREATE DATABASE IF NOT EXISTS RetailStore;
USE RetailStore;

CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    Product VARCHAR(100),
    Amount DECIMAL(10,2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Customers Table
INSERT INTO Customers VALUES
(1, 'Rahul Sharma'),
(2, 'Anjali Mehta'),
(3, 'Amit Vermaq');

-- Orders Table
INSERT INTO Orders VALUES
(101, 'Laptop', 50000, 2),
(102, 'Mouse', 500, 1),
(103, 'Keyboard', 700, 1);

SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
FULL INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
