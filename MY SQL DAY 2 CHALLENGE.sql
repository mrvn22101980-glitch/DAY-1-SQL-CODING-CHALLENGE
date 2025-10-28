create database online_bookstore;
use online_bookstore;
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    ISBN VARCHAR(13)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    BookID INT,
    Quantity INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
ALTER TABLE Books
ADD CONSTRAINT unique_isbn UNIQUE (ISBN);
DELETE FROM Orders
WHERE OrderID < 100;
TRUNCATE TABLE Orders;
