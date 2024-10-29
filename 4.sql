-- Lấy tên và email của tất cả khách hàng
SELECT Cust_Name, Cust_Email FROM Customer;

-- Lấy thông tin của khách sạn có Hotel_Id = 1
SELECT * FROM Hotel WHERE Hotel_Id = 1;

-- Lấy thông tin phòng với Room_Type là 'Deluxe'
SELECT * FROM Room WHERE Room_Type = 'Deluxe';

-- Lấy tất cả thông tin đặt phòng của khách hàng có Cust_Id = 1
SELECT * FROM Booking WHERE Cust_Idbookingbooking = 1;
