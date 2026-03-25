Tuần 7 – Security & JWT

Thêm authentication và authorization.

1. Role
   USER
   MANAGER
   Quan hệ many-to-many với user
2. Auth API
   Register → mã hóa password bằng BCrypt
   Login → trả JWT token
3. JWT
   Tạo token
   Validate token
   Lấy username
   Filter:
   đọc header Authorization
   xác thực token
   set SecurityContext
   Token hết hạn sau 120 phút
4. SecurityConfig
   Public:
   auth
   swagger
   Các API khác yêu cầu login
   MANAGER:
   tạo project
   tạo task