-- Chèn dữ liệu vào bảng Customer
INSERT INTO Customer (Cust_Id, Cust_Name, Cust_Contact, Cust_Email) VALUES
(1, 'Nguyen Van A', '0123456789', 'a@example.com');

-- Chèn dữ liệu vào bảng Hotel
INSERT INTO Hotel (Hotel_Id, Hotel_Name, Hotel_Address, Hotel_Contact) VALUES
(1, 'Khach San A', '123 Nguyen Trai', '0987654321');

-- Chèn dữ liệu vào bảng Room
INSERT INTO Room (Room_Id, Room_Type, Room_Price, Hotel_Id) VALUES
(101, 'Deluxe', 100.00, 1);

-- Chèn dữ liệu vào bảng Payment
INSERT INTO Payment (Payment_Id, Total_Amount, Payment_Status) VALUES
(1, 100.00, 'Paid');

-- Chèn dữ liệu vào bảng Employee
INSERT INTO Employee (Employee_Id, Employee_Name, Employee_Contact, Employee_Email) VALUES
(1, 'Tran Van B', '0123456789', 'b@example.com');

-- Chèn dữ liệu vào bảng Booking
INSERT INTO Booking (Booking_Id, Cust_Id, Room_Id, Booking_Date, Checkin_Date, Checkout_Date, Payment_Id, Employee_Id) VALUES
(1, 1, 101, '2024-10-24', '2024-10-25', '2024-10-30', 1, 1);
