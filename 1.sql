-- Tạo bảng Customer
CREATE TABLE Customer (
    Cust_Id INT PRIMARY KEY,
    Cust_Name VARCHAR(255),
    Cust_Contact VARCHAR(15),
    Cust_Email VARCHAR(255)
);

-- Tạo bảng Hotel
CREATE TABLE Hotel (
    Hotel_Id INT PRIMARY KEY,
    Hotel_Name VARCHAR(255),
    Hotel_Address VARCHAR(255),
    Hotel_Contact VARCHAR(15)
);

-- Tạo bảng Room
CREATE TABLE Room (
    Room_Id INT PRIMARY KEY,
    Room_Type VARCHAR(255),
    Room_Price DECIMAL(10, 2),
    Hotel_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id)
);

-- Tạo bảng Payment
CREATE TABLE Payment (
    Payment_Id INT PRIMARY KEY,
    Total_Amount DECIMAL(10, 2),
    Payment_Status VARCHAR(50)
);

-- Tạo bảng Employee
CREATE TABLE Employee (
    Employee_Id INT PRIMARY KEY,
    Employee_Name VARCHAR(255),
    Employee_Contact VARCHAR(15),
    Employee_Email VARCHAR(255)
);

-- Tạo bảng Booking
CREATE TABLE Booking (
    Booking_Id INT PRIMARY KEY,
    Cust_Id INT,
    Room_Id INT,
    Booking_Date DATE,
    Checkin_Date DATE,
    Checkout_Date DATE,
    
    Payment_Id INT,
    Employee_Id INT,
    FOREIGN KEY (Cust_Id) REFERENCES Customer(Cust_Id),
    FOREIGN KEY (Room_Id) REFERENCES Room(Room_Id),
    FOREIGN KEY (Payment_Id) REFERENCES Payment(Payment_Id),
    FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
);
