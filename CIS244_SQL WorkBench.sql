CREATE DATABASE weddingServiceDB;
USE weddingServiceDB;

CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address TEXT
);

CREATE TABLE Vendor (
    VendorID INT AUTO_INCREMENT PRIMARY KEY,
    VendorName VARCHAR(100),
    ServiceType VARCHAR(50),
    ContactInfo VARCHAR(100)
);

CREATE TABLE Package (
    PackageID INT AUTO_INCREMENT PRIMARY KEY,
    PackageName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2)
);

CREATE TABLE WeddingEvent (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    EventDate DATE,
    Venue VARCHAR(100),
    Theme VARCHAR(50),
    GuestCount INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Booking (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    PackageID INT,
    BookingDate DATE,
    TotalPrice DECIMAL(10,2),
    FOREIGN KEY (EventID) REFERENCES WeddingEvent(EventID),
    FOREIGN KEY (PackageID) REFERENCES Package(PackageID)
);
CREATE TABLE VendorAssignment (
    AssignmentID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    VendorID INT,
    Cost DECIMAL(10,2),
    FOREIGN KEY (EventID) REFERENCES WeddingEvent(EventID),
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);

INSERT INTO Customer (FullName, Phone, Email, Address) VALUES
('Kumar Khan', '001 9745678945', 'kumar99@gmail.com', '126 ave, Dhaka'),
('Liza Ahmed', '001 9850987650', 'liza09@hotmail.com', '789 ave, Cumilla '),
('Sarah Hossain', '001 4532786549', 'sarahj@gmail.com', '303 ave, Dhaka'),
('Maria Khan', '001 9267094567', 'maria80@yahoo.com', '404 ave, Chittagoan'),
('Priya kumar', '001 0256783456', 'priyap@gmail.com', '505 ave, Dhaka');


INSERT INTO Vendor (VendorName, ServiceType, ContactInfo) VALUES
('Elegant Catering', 'Catering', '001 987555-1111'),
('Flash Photography', 'Photography', '001 786555-2222'),
('Dream Decor', 'Decoration', '5001 453555-3333'),
('Luxe Events Music', 'Entertainment', '001 956555-4444'),
('Sweet Moments Cakes', 'Cake', '001 256765-5555');


INSERT INTO Package (PackageName, Description, Price) VALUES
('Basic Love', 'Catering + Decoration', 70000.00),
('Classic Romance', 'Catering + Photography + Decor', 80000.00),
('Premium Dream', 'All services included', 45000.00),
('Custom Package', 'Flexible selections', 840000.00),
('Mini Ceremony', 'Cake + Photography', 670000.00);

INSERT INTO WeddingEvent (CustomerID, EventDate, Venue, Theme, GuestCount) VALUES
(1, '2025-06-10', 'The Olive Center', 'Traditional', 150),
(2, '2025-07-20', 'International Convention Center', 'Beach', 80),
(3, '2025-08-15', 'Pan Pasific Center', 'Modern', 200),
(4, '2025-09-01', 'The Westin Dhaka', 'Rustic', 100),
(5, '2025-10-12', 'Pushpogusso', 'Elegant', 120);

INSERT INTO Booking (EventID, PackageID, BookingDate, TotalPrice) VALUES
(1, 2, '2025-03-01', 2000000.00),
(2, 1, '2025-04-15', 60000000.00),
(3, 3, '2025-04-20', 70489000.00),
(4, 4, '2025-05-10', 87540000.00),
(5, 5, '2025-05-12', 890000.00);


INSERT INTO VendorAssignment (EventID, VendorID, Cost) VALUES
(1, 1, 29000.00),
(1, 3, 900000.00),
(2, 1, 6790000.00),
(3, 1, 5000000.00),
(3, 2, 800000.00),
(3, 3, 590000.00),
(4, 4, 6900000.00),
(5, 2, 8000000.00);











