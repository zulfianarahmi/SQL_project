CREATE DATABASE praktek;
USE praktek;

-- Tabel Pemasok
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactPerson VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

-- Tabel Produk 
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE,
    StockQuantity INT,
    Price DECIMAL(10, 2),
    SupplierID INT,
    ExpiryDate DATE,
    Category VARCHAR(50),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactPerson, PhoneNumber)
VALUES
    (3, 'Supplier C', 'Zulfiana', '1111222333'),
    (4, 'Supplier D', 'Rahmi', '1111222333');


INSERT INTO Products (ProductID, ProductName, StockQuantity, Price, SupplierID, ExpiryDate, Category)
VALUES
    (1, 'Sosis', 12, 120000, 1, '2023-01-30', 'Makanan'),
    (2, 'Indomie', 13, 100000, 2, '2023-01-22', 'Makanan'),
    (3, 'Baso', 14, 400000, 1, '2023-01-12', 'Makanan'),
    (4, 'Jellydrink', 14, 70000, 2, '2023-01-11', 'Minuman');
    
SELECT * FROM Suppliers;
