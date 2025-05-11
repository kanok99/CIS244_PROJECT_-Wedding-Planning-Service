CREATE DATABASE weddingPlannerDB;
USE weddingPlannerDB;

CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Phone VARCHAR(20),
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
    Theme VARCHAR(100),
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





