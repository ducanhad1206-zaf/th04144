Đây là backend được xây dựng bằng Spring Boot nhằm quản lý User, Project và Task, sử dụng SQL Server làm hệ quản trị 
cơ sở dữ liệu.

1. Chức năng chính
   Quản lý tài khoản
   Cho phép người dùng đăng ký, đăng nhập và xác thực thông qua JWT Token.
   Phân quyền (Role-based)
   Sử dụng Spring Security để kiểm soát quyền truy cập. Ví dụ: chỉ role MANAGER mới có quyền tạo project.
   Quản lý Project
   Tạo project và thêm user vào project đó.
   Quản lý Task
   Tạo công việc, phân công cho user và cập nhật trạng thái (TODO, IN_PROGRESS, DONE).
   Validation & xử lý lỗi
   Sử dụng Global Exception Handling để xử lý lỗi tập trung và trả về thông báo rõ ràng.

2. Công nghệ sử dụng
   Ngôn ngữ: Java 17
   Framework: Spring Boot 4.0.2
   Database: SQL Server (internth04144)
   Security: Spring Security + JWT
   API Docs: Swagger UI

3. Hướng dẫn chạy project

Bước 1: Clone source code về máy bằng IntelliJ IDEA.

Bước 2: Mở SQL Server (SSMS) và tạo database:

internth04144

Bước 3:
Mở file:

src/main/resources/application-dev.yml

và chỉnh lại thông tin kết nối database cho phù hợp với máy của bạn.

Bước 4:
Chạy class:

InternshipProjectApplication.java

Bước 5:
Sau khi server chạy ở port 8080, truy cập:

http://localhost:8080/swagger-ui/index.html

để xem và test API.
