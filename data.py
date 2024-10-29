class Customer:
    def __init__(self, cust_id, cust_name, cust_contact, cust_email):
        self.cust_id = cust_id  # Khóa chính
        self.cust_name = cust_name
        self.cust_contact = cust_contact
        self.cust_email = cust_email

class Hotel:
    def __init__(self, hotel_id, hotel_name, hotel_address, hotel_contact):
        self.hotel_id = hotel_id  # Khóa chính
        self.hotel_name = hotel_name
        self.hotel_address = hotel_address
        self.hotel_contact = hotel_contact

class Room:
    def __init__(self, room_id, room_type, room_price, hotel_id):
        self.room_id = room_id  # Khóa chính
        self.room_type = room_type
        self.room_price = room_price
        self.hotel_id = hotel_id  # Khóa ngoại liên kết đến Hotel

class Booking:
    def __init__(self, booking_id, cust_id, room_id, booking_date, checkin_date, checkout_date, payment_id, employee_id):
        self.booking_id = booking_id  # Khóa chính
        self.cust_id = cust_id  # Khóa ngoại liên kết đến Customer
        self.room_id = room_id  # Khóa ngoại liên kết đến Room
        self.booking_date = booking_date
        self.checkin_date = checkin_date
        self.checkout_date = checkout_date
        self.payment_id = payment_id  # Khóa ngoại liên kết đến Payment
        self.employee_id = employee_id  # Khóa ngoại liên kết đến Employee

class Payment:
    def __init__(self, payment_id, total_amount, payment_status):
        self.payment_id = payment_id  # Khóa chính
        self.total_amount = total_amount
        self.payment_status = payment_status

class Employee:
    def __init__(self, employee_id, employee_name, employee_contact, employee_email):
        self.employee_id = employee_id  # Khóa chính
        self.employee_name = employee_name
        self.employee_contact = employee_contact
        self.employee_email = employee_email

# Ví dụ tạo một số đối tượng
customer1 = Customer(1, "Nguyen Van A", "0123456789", "a@example.com")
hotel1 = Hotel(1, "Khach San A", "123 Nguyen Trai", "0987654321")
room1 = Room(101, "Deluxe", 100.0, hotel1.hotel_id)
payment1 = Payment(1, 100.0, "Paid")
employee1 = Employee(1, "Tran Van B", "0123456789", "b@example.com")
booking1 = Booking(1, customer1.cust_id, room1.room_id, "2024-10-24", "2024-10-25", "2024-10-30", payment1.payment_id, employee1.employee_id)

# In thông tin của các đối tượng
print(f"Customer: {customer1.cust_name}, Email: {customer1.cust_email}")
print(f"Hotel: {hotel1.hotel_name}, Address: {hotel1.hotel_address}")
print(f"Room: {room1.room_type}, Price: {room1.room_price}, Hotel ID: {room1.hotel_id}")
print(f"Booking ID: {booking1.booking_id}, Check-in: {booking1.checkin_date}, Check-out: {booking1.checkout_date}")
print(f"Payment ID: {payment1.payment_id}, Total Amount: {payment1.total_amount}, Status: {payment1.payment_status}")
print(f"Employee: {employee1.employee_name}, Email: {employee1.employee_email}")
