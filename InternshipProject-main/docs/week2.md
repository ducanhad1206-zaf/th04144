Tuần 2 – Database & SQL

Chuyển đổi các entity sang bảng database, thiết kế ERD và viết script SQL.

1. Quan hệ dữ liệu (ERD)
   users ──< user_roles >── roles
   users ──< project_members >── projects
   projects ──< tasks
   users ──< tasks (assignee)
   users: thông tin tài khoản
   roles: vai trò hệ thống
   user_roles: bảng trung gian many-to-many
   projects: thông tin dự án
   project_members: thành viên project
   tasks: thông tin công việc
2. Kết quả
   Script SQL tạo bảng với đầy đủ PK, FK, UNIQUE, INDEX
   Ràng buộc trạng thái Task:
   CHECK (status IN ('TODO','IN_PROGRESS','DONE'))
   Ràng buộc deadline:
   CHECK (deadline >= CAST(GETDATE() AS DATE))
   Tạo index cho các cột hay query:
   project_id
   assignee_id
   status
   Dữ liệu test gồm nhiều bản ghi cho user, project và task
   Các query hỗ trợ:
   tìm task theo user
   theo project
   theo trạng thái