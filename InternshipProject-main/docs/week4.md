Tuần 4 – JPA Mapping & API Task/Project

Hoàn thiện mapping JPA và xây dựng API cho Project và Task.

1. Kết quả
   ProjectEntity mapping bảng projects, có validate name
   TaskEntity:
   quan hệ ManyToOne với Project
   quan hệ với User (assignee)
   sử dụng LAZY loading
   Fetch strategy:
   Project, assignee → LAZY
   roles → EAGER
   ProjectMemberEntity quản lý thành viên project với trạng thái active
   TaskRepository:
   tìm theo project
   theo user
   theo status
   ProjectService:
   tạo project
   thêm member
   tìm kiếm
   TaskService:
   tạo task
   assign
   update status
   Controller:
   TaskController
   ProjectController