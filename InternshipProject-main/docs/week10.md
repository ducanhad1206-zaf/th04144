Tuần 10 – Tổng kết

Hoàn thiện tài liệu và demo.

1. Kiến trúc
   Client → Filter → Controller → Service → Repository → Database
2. Luồng JWT
   Register → lưu user
   Login → tạo token
   Request → validate token → xử lý
3. Demo flow
   Register
   Login
   Tạo project
   Thêm member
   Tạo task
   Assign task
   Update status
4. Tổng kết
   Áp dụng:
   Spring Boot
   JPA
   Security + JWT
   Validation
   Unit test
   Bài học:
   phân tầng rõ ràng
   xử lý lỗi tập trung
   phân quyền
   Hạn chế:
   chưa có refresh token
   chưa phân trang
   chưa có integration test