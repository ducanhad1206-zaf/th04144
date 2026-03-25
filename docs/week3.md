Tuần 3 – Spring Boot & User API

Khởi tạo project Spring Boot, cấu hình database và xây dựng API cho User.

1. Cấu trúc thư mục
   config/
   controller/
   dto/
   entity/
   enums/
   exception/
   repository/
   security/
   service/
2. Kết quả
   Khởi tạo project với Spring Boot, Java 17 và kết nối SQL Server qua JPA
   Cấu hình DB:
   dev: local
   prod: dùng biến môi trường
   Server chạy thành công trên port 8080
   UserEntity mapping với bảng users
   UserRepository có method findByUsername
   UserService xử lý tìm user
   UserController cung cấp API lấy danh sách user
   GlobalExceptionHandler xử lý:
   lỗi validation (400)
   lỗi custom
   lỗi hệ thống (500)
   Chuẩn hóa naming (Entity, Service, Controller...)