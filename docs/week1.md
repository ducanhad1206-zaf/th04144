Tuần 1 – Phân tích domain & OOP

Thực hiện phân tích nghiệp vụ, xác định các đối tượng chính và enum, sau đó xây dựng các class Java tương ứng với logic cơ bản.

1. Kết quả
   Mô hình nghiệp vụ: Hệ thống gồm 3 thành phần chính: User, Project, Task. Một User có thể được giao nhiều Task và mỗi Task thuộc về một Project.
   Enum TaskStatus: gồm TODO, IN_PROGRESS, DONE dùng để quản lý trạng thái công việc.
   File: src/.../enums/TaskStatus.java
   Enum RoleName: gồm USER, MANAGER phục vụ phân quyền.
   File: src/.../enums/RoleName.java
   UserEntity: chứa các thuộc tính username, email, password, roles. Constructor có validate dữ liệu (username không rỗng, email hợp lệ, password ≥ 6 ký tự).
   File: src/.../entity/UserEntity.java
   TaskEntity: gồm title, description, status, deadline, project, assignee. Status mặc định là TODO.
   File: src/.../entity/TaskEntity.java
   ProjectEntity: gồm name và description, có kiểm tra name không được để trống.
   File: src/.../entity/ProjectEntity.java
   Phân tầng kiến trúc: tách riêng Controller, Service, Repository, Entity.
   TaskService: xử lý logic tạo task, assign và update trạng thái.
   File: src/.../service/TaskService.java
   Xử lý lỗi: xây dựng CustomException và GlobalExceptionHandler để quản lý lỗi tập trung.
   File: src/.../exception/