import mysql.connector

# Kết nối đến cơ sở dữ liệu MySQL
conn = mysql.connector.connect(
    host="localhost",  # Thay đổi nếu cần
    user="your_username",  # Thay đổi tên người dùng
    password="your_password",  # Thay đổi mật khẩu
    database="HotelManagement"
)

cursor = conn.cursor()

# Lấy tất cả dữ liệu từ bảng Customer
cursor.execute("SELECT * FROM Customer")
customers = cursor.fetchall()

# In thông tin khách hàng
for customer in customers:
    print(customer)

# Đóng kết nối
cursor.close()
conn.close()
