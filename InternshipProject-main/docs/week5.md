Tuần 5 – Business Logic Task

Xây dựng các rule nghiệp vụ cho Task.

1. Quy tắc

Flow trạng thái:

TODO → IN_PROGRESS → DONE

Task đã DONE thì không được cập nhật

Assign Task:
chỉ assign cho user thuộc project
nếu không → lỗi 400
Tạo Task:
project phải tồn tại
nếu không → lỗi 404
Phân quyền:
USER chỉ xem task của mình
MANAGER xem được tất cả
2. API
   Tạo task
   Giao task
   Cập nhật trạng thái
   Lấy theo project / user / status
3. Triển khai
   Logic trong TaskService
   Kiểm tra member qua ProjectMemberRepository
   Dùng @PreAuthorize để phân quyền